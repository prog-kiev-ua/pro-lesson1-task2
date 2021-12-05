<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Анкета участника</title>
</head>
    <body>
        <h1>Анкета участника</h1>
        <%
            String sex = (String)session.getAttribute("sex");
            String age = (String)session.getAttribute("age");

            String sexView = "Нет данных";
            if(sex != null){
                switch (sex){
                    case "male":
                        sexView = "мужской";
                        break;
                    case "female":
                        sexView = "женский";
                        break;
                    default:
                        sexView = "Введено не верное значение";

                }
            }

            String ageView = "Нет данных";
            if (age != null){
                switch (age){
                    case "range1":
                        ageView = "до 15";
                        break;
                    case "range2":
                        ageView = "от 15 до 30";
                        break;
                    case "range3":
                        ageView = "от 30 до 50";
                        break;
                    case "range4":
                        ageView = "от 50";
                        break;
                    default:
                        ageView = "Введено не верное значение";
                }
            }
        %>
        <div>
            <p>Ваш пол: <%= sexView %></p>
        </div>
        <div>
            <p>Ваш возраст: <%= ageView %></p>
        </div>
    </body>
</html>