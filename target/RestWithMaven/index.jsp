<%--
  Created by IntelliJ IDEA.
  User: tomasz
  Date: 30.11.17
  Time: 01:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>>
<script>

    var displayContent;
    function getDataFromServer () {
        var emitJSON = {};
        emitJSON.type = $("input[type='radio'][name='type']:checked").val();
        emitJSON.number = $("#numberInput").val();

        return $.ajax({
            type: "POST",
            url: "/RestWithMaven/convert",
            data: emitJSON,
            dataType: "application/json"
        });

    }

    $(function() {
        $("#submitButton").on("click", function() {
            var emitJSON = {};
            emitJSON.type = $("input[type='radio'][name='type']:checked").val();
            emitJSON.number = $("#numberInput").val();

            $.post ("/RestWithMaven/convert", emitJSON, function (returnedData) {
                $("#convertedNumber").val(returnedData);
            });


        });
    })
</script>
<body>
<%--
<form action="convert" method="post">
--%>
    Decimal number to be converted: <input id = "numberInput" type="text" name="number">
    <br> Type of conversion: <input type="radio" name="type" value="Roman">Roman </input>
    <input type="radio" name="type" value="Hexadecimal">Hexadecimal </input>
    <br>
<button id = "submitButton" type="submit" value="Convert" ></button>
    <input type = "text" id="convertedNumber" >
<%--
</form>
--%>
</body>
</html>
