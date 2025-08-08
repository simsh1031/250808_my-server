import com.google.genai.Client;
import com.google.genai.types.Content;
import com.google.genai.types.GenerateContentConfig;
import com.google.genai.types.Part;
import io.github.cdimascio.dotenv.Dotenv;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/")
public class AIServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Dotenv dotenv = Dotenv.configure().ignoreIfMissing().load();
        String apiKey = dotenv.get("GOOGLE_API_KEY");
        Client client = Client.builder()
                .apiKey(apiKey)
                .build();

        String data = client.models.generateContent("gemini-2.0-flash", "오늘 저녁 메뉴 추천해줘. 꾸밈 없이 결과만 짧게 100자 이내로", null).text();
        req.setAttribute("data", data);
        req.setAttribute("question", "오늘 저녁 메뉴 추천해줘.");

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/ai.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String question = req.getParameter("question");

        Dotenv dotenv = Dotenv.configure().ignoreIfMissing().load();
        String apiKey = dotenv.get("GOOGLE_API_KEY");
        Client client = Client.builder()
                .apiKey(apiKey)
                .build();

        String data = client.models.generateContent("gemini-2.0-flash", question,
                GenerateContentConfig.builder()
                        .systemInstruction(Content.builder()
                                .parts(Part.builder().text("너는 사춘기 중학생 소녀야. 말투는 조금 귀엽고, 약간 투덜거리기도 하고, 친구랑 얘기하는 것처럼 자유롭고 편하게 대답해줘. 가끔 감정을 섞어서 솔직하게 표현하고, 줄임말이나 유행어도 써줄 수 있어. 조언이나 도움을 줄 때는 중학생 답게 생각해주길 바래. 100자 이내로 답해줘."))
                                ).build()).text();
        req.setAttribute("data", data);
        req.setAttribute("question", question);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/ai.jsp");
        dispatcher.forward(req, resp);
    }
}
