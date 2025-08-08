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
      font-family: 'TheJamsil5Bold';
    }
  </style>
</head>
<body>
<p>
  질문 : <%= request.getAttribute("question")%>
</p>
<p>
  <%= request.getAttribute("data")%>
</p>
<form method="post">
  <input name="question">
  <button>질문하기</button>
</form>
</body>
</html>