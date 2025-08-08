<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
  <title>AI Chatbot</title>
  <meta property="og:title" content="사춘기 청소년과 대화하기">
  <meta property="og:description" content="by Gemini 2.0 flash">
  <style>
    @font-face {
      font-family: 'TheJamsil5Bold';
      src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
      font-weight: 700;
      font-style: normal;
    }

    @font-face {
      font-family: 'GangwonEduSaeeum_OTFMediumA';
      src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduSaeeum_OTFMediumA.woff') format('woff');
      font-weight: normal;
      font-style: normal;
    }

    body {
      font-family: 'GangwonEduSaeeum_OTFMediumA', cursive;
      background: linear-gradient(135deg, #ffe6f0, #e9d5ff);
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 600px;
      margin: 40px auto;
      background: white;
      border-radius: 20px;
      box-shadow: 0 6px 20px rgba(0,0,0,0.1);
      padding: 25px;
      border: 3px solid #ffd6eb;
    }

    h1 {
      text-align: center;
      color: #ff80ab;
      margin-bottom: 25px;
      font-family: 'TheJamsil5Bold';
    }

    .chat-box {
      display: flex;
      flex-direction: column;
      gap: 15px;
    }

    .bubble {
      max-width: 75%;
      padding: 14px 18px; /* 패딩도 조금 늘려서 여유있게 */
      border-radius: 18px;
      line-height: 1.6;
      font-size: 18px; /* 기존 15px → 18px */
      word-break: break-word;
    }

    .question {
      align-self: flex-end;
      background: #ffb6c1;
      color: #fff;
      border-bottom-right-radius: 4px;
    }

    .answer {
      align-self: flex-start;
      background: #e6e0ff;
      color: #4a3f6b;
      border-bottom-left-radius: 4px;
    }

    form {
      display: flex;
      gap: 10px;
      margin-top: 20px;
    }

    input[name="question"] {
      flex: 1;
      padding: 12px 15px;
      border-radius: 25px;
      border: 2px solid #ffb6c1;
      outline: none;
      font-size: 14px;
      background: #fff0f6;
      transition: 0.3s;
    }
    input[name="question"]:focus {
      border-color: #ff80ab;
      background: #ffe6f0;
      box-shadow: 0 0 8px rgba(255,128,171,0.4);
    }

    button {
      background: #ff80ab;
      color: white;
      border: none;
      padding: 12px 18px;
      border-radius: 25px;
      cursor: pointer;
      font-size: 14px;
      transition: 0.3s;
      font-family: 'TheJamsil5Bold';
    }
    button:hover {
      background: #ff4f94;
      box-shadow: 0 0 8px rgba(255,79,148,0.5);
    }
  </style>
</head>
<body>
<div class="container">
  <h1>🌸 AI Chatbot 🌸</h1>
  <div class="chat-box">
    <% if (request.getAttribute("question") != null) { %>
    <div class="bubble question"><%= request.getAttribute("question") %></div>
    <% } %>
    <% if (request.getAttribute("data") != null) { %>
    <div class="bubble answer"><%= request.getAttribute("data") %></div>
    <% } %>
  </div>
  <form method="post">
    <input name="question" placeholder="궁금한 걸 물어봐~ 💬">
    <button>💌 보내기</button>
  </form>
</div>
</body>
</html>
