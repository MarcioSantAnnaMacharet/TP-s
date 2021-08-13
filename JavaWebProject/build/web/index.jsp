<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
        <style>
            body{background-image: url("h.jpg");
            background-attachment: fixed;
            background-position: center;
            background-size: cover;
            text-align: center;
            }
            p {font-size: 24px;
            font-family: Verdana, Arial, Helvetica, sans-serif; 
            color: #0066cc;
            font-weight: bold;
            }
            p2 {font-size: 40px;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            color: #0066cc;
            font-weight: bold;
            }
            button{box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2), 0 5px 10px 0 rgba(0,0,0,0.19);
            background-color: #0066cc;
            color: white;
            border-color: #0066cc;
            border-radius: 6px;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            padding: 2px 15px;
            }
            button:hover {box-shadow: 0 8px 10px 0 rgba(0,0,0,0.24), 0 14px 20px 0 rgba(0,0,0,0.19);
            background-color: #0066cc;
            color: white;
            border-color: #0066cc;
            border-radius: 6px;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            padding: 2px 15px;
            }
            input{border: 0.5px solid #0066cc;
            box-shadow: 6px 6px 4px grey;
            padding: 4px 25px;
            }
            input[type=text]:focus {
            outline: none !important;
            border: 1px solid #0066cc;
            box-shadow: 6px 6px 4px grey;
            padding: 4px 25px;
            }
        </style>
    </head>
    <body>
        <form action="UserControllerServlet" method="get">
            
            <br>
            <p2>Cadastro de Usuários</p2>
            <br>
            <br>
            <p>Nome</p>
            <br>
            <input type="text" name="nome"/>
            <br>
            <p>E-Mail</p>
            <br>
            <input type="text" name="email"/>
            <br>
            <p>Senha</p>
            <br>
            <input type="text" name="senha"/>
            <br>
            <br>
            <button type="submit">Cadastrar</button>
         
        </form>
    </body>
</html>
