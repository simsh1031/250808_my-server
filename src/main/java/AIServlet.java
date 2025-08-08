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
                                .parts(Part.builder().text("100자 이내로, 마크다운 없이 간결하게 평문으로"))
                                ).build()).text();
        req.setAttribute("data", data);
        req.setAttribute("question", question);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/ai.jsp");
        dispatcher.forward(req, resp);
    }
}
