<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
  <title>AI Chatbot</title>
  <meta property="og:title" content="AI Chatbot">
  <meta property="og:description" content="by Gemini 2.0 flash">
  <style>
    @font-face {
      font-family: 'TheJamsil5Bold';
      src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
      font-weight: 700;
      font-style: normal;
    }

    body {
      font-family: 'TheJamsil5Bold', sans-serif;
      background: linear-gradient(135deg, #f0f4ff, #e2ebff);
      color: #333;
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 600px;
      margin: 50px auto;
      background: white;
      border-radius: 15px;
      box-shadow: 0 4px 15px rgba(0,0,0,0.1);
      padding: 30px;
    }

    h1 {
      text-align: center;
      color: #4a6cf7;
      margin-bottom: 20px;
    }

    p {
      background: #f8faff;
      padding: 12px 15px;
      border-radius: 8px;
      margin-bottom: 15px;
      line-height: 1.5;
    }

    form {
      display: flex;
      gap: 10px;
      margin-top: 20px;
    }

    input[name="question"] {
      flex: 1;
      padding: 10px 12px;
      border-radius: 8px;
      border: 1px solid #ccd4ff;
      outline: none;
      font-size: 14px;
      transition: 0.3s;
    }
    input[name="question"]:focus {
      border-color: #4a6cf7;
      box-shadow: 0 0 5px rgba(74,108,247,0.3);
    }

    button {
      background: #4a6cf7;
      color: white;
      border: none;
      padding: 10px 16px;
      border-radius: 8px;
      cursor: pointer;
      transition: background 0.3s;
      font-size: 14px;
    }
    button:hover {
      background: #3755c7;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>🤖 AI Chatbot</h1>
  <p><strong>질문:</strong> <%= request.getAttribute("question") %></p>
  <p><%= request.getAttribute("data") %></p>
  <form method="post">
    <input name="question" placeholder="질문을 입력하세요...">
    <button>질문하기</button>
  </form>
</div>
</body>
</html>
