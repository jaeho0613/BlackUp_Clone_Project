package servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.dto.KakaoPayReadDTO;

@SuppressWarnings("serial")
@WebServlet("/payment/ready")
public class KakaoPayServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("ready GET");
		Gson gson = new Gson();
		URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Authorization", "KakaoAK 0508fa19018d6c40d663a44da80b9f3b");
		conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		conn.setDoInput(true);
		conn.setDoOutput(true);
		
		Map<String, String> params = new HashMap<String, String>();
		params.put("cid", "TC0ONETIME");
		params.put("partner_order_id", "partner_order_id");
		params.put("partner_user_id", "partner_user_id");
		params.put("item_name", "초코파이");
		params.put("quantity", "1");
		params.put("total_amount", "2200");
		params.put("vat_amount", "200");
		params.put("tax_free_amount", "0");
		params.put("approval_url", "http://localhost:8080/BlackUp_Clone_Project/approval");
		params.put("fail_url", "\"http://localhost:8080/BlackUp_Clone_Project/fail");
		params.put("cancel_url", "\"http://localhost:8080/BlackUp_Clone_Project/cancel");
		
		String string_params = new String();
		for (Map.Entry<String, String> elem : params.entrySet()) {
			string_params += (elem.getKey() + "=" + elem.getValue() + "&");
		}
		
		conn.getOutputStream().write(string_params.getBytes());
		BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		// System.out.println(in.readLine());
		
		KakaoPayReadDTO ready = gson.fromJson(in, KakaoPayReadDTO.class);
		System.out.println(ready.getNext_redirect_pc_url());
		
		PrintWriter wr = resp.getWriter();
		wr.println("<script>");
		wr.println("location.href=" + "'"+ready.getNext_redirect_pc_url()+"'");
		wr.println("</script>");
		wr.close();
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("ready POST");
	}
}
