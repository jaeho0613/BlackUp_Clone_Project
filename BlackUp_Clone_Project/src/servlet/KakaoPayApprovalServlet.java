package servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.dto.KakaoApproveDTO;
import model.dto.KakaoPayReadDTO;

@SuppressWarnings("serial")
@WebServlet("/approval")
public class KakaoPayApprovalServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		System.out.println("Approval GET");
		ServletContext sc = this.getServletContext();

		KakaoPayReadDTO ready = (KakaoPayReadDTO) sc.getAttribute("ready");
		if (ready != null) {
			String pgToken = req.getParameter("pg_token");
			System.out.println("pgToken : " + pgToken);
			Gson gson = new Gson();
			URL url = new URL("https://kapi.kakao.com/v1/payment/approve");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "KakaoAK 0508fa19018d6c40d663a44da80b9f3b");
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			conn.setDoInput(true);
			conn.setDoOutput(true);

			Map<String, String> params = new HashMap<String, String>();
			params.put("cid", "TC0ONETIME");
			params.put("tid", ready.getTid());
			params.put("partner_order_id", "partner_order_id");
			params.put("partner_user_id", "partner_user_id");
			params.put("pg_token", pgToken);

			String string_params = new String();
			for (Map.Entry<String, String> elem : params.entrySet()) {
				string_params += (elem.getKey() + "=" + elem.getValue() + "&");
			}

			conn.getOutputStream().write(string_params.getBytes());
			BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));

			KakaoApproveDTO approve = gson.fromJson(in, KakaoApproveDTO.class);
			System.out.println(approve.getItem_name());

			PrintWriter wr = resp.getWriter();
			wr.println("<script>");
			wr.println("alert('결제 성공');");
			wr.println("window.close();");
			wr.println("</script>");
			wr.close();
		}
	}
}
