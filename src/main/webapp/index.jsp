<%--
  Created by IntelliJ IDEA.
  User: sense
  Date: 05.12.2021
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Анкета</title>
</head>
<body>
    <h1> Заполните анкету </h1>
    <div>
        <form action="questionnaire" method="post">
            <ol>
                <li> Ваш пол:
                    <div>
                        <label for="male">мужской</label>
                        <input type="radio" name="sex" value="male" id="male" checked>
                    </div>
                    <div>
                        <label for="female">женский</label>
                        <input type="radio" name="sex" value="female" id="female">
                    </div>
                </li>
                <br>
                <li> Ваш возраст:
                    <div>
                        <label for="range1">от 15</label>
                        <input type="radio" name="age" value="range1" id="range1" checked>
                    </div>
                    <div>
                        <label for="range2">от 15 до 30</label>
                        <input type="radio" name="age" value="range2" id="range2">
                    </div>
                    <div>
                        <label for="range3">от 30 до 50</label>
                        <input type="radio" name="age" value="range3" id="range3">
                    </div>
                    <div>
                        <label for="range4">от 50</label>
                        <input type="radio" name="age" value="range4" id="range4">
                    </div>
                </li>
                <br>
            </ol>
            <input type="submit" value="Сохранить">
        </form>
    </div>
</body>
</html>
