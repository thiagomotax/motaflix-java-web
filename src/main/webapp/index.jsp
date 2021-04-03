<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        <title>Cadastro de usuários Motaflix</title>
    </head>
    <body>
        <div class="form-group col-12 p-5">
            <div class="d-flex justify-content-center">
                <form action="UserServlet" id="formUser" method="get">
                    <label for="fname">Nome</label>
                    <input type="text" id="fname" name="name" class="form-control">

                    <label for="cpf">CPF</label><br>
                    <input type="text" id="cpf" name="cpf"   maxlength="10" class="form-control">

                    <label for="birthday">Data de nascimento</label>
                    <input type="text" id="birthday" name="birthday" class="form-control">

                    <label for="email">E-mail</label>
                    <input type="text" id="email" name="email" class="form-control">

                    <label for="password">Senha</label>
                    <input type="password" id="password" name="password" class="form-control">

                    

                    <br/>
                    <input type="submit" class="btn btn-primary"  name="operation" value="Adicionar">
                </form>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
        <script type="text/javascript">

            $(document).ready(function () {
                alert("Lembre-se de ter um registro na tabela parental com o id 1, visto que este id está hardcoded no momento da inserção!")
                $("#formUser").submit(function (event) {
                    if ($("#name").val() == "" || $("#cpf").val() == "" || $("#birthday").val() == "" || $("#email").val() == "" || $("#password").val() == ""){
                        alert("Preencha todos os campos!");
                        event.preventDefault();
                        
                    }
                            
                });
            });


            $(document).ready(function () {

                $("#cpf").mask("999.999.999-99");
                $("#birthday").mask("99/99/9999");

            });
        </script>
    </body>
</html>