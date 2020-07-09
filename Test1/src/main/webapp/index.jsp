<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>>
        <link rel="stylesheet" type="text/css" href="keyframes.css">
        <title>JARVIS</title>

         
        <style>
            body
            {
                background-color: black;
                background-size: cover;
            }
            .login-text
            {
                animation: banner-move 3s ease-in;
                font-size: 65px;
                letter-spacing: .5em;
                text-shadow: 0 0 5px #fff, 0 0 10px #fff, 0 0 15px #0073e6, 0 0 20px #0073e6, 0 0 25px #0073e6, 0 0 30px #0073e6, 0 0 35px #0073e6;;
                color: #02feff;

            }
            a:link
            {
                color: #02feff;
            }
            .login-box
            {
                animation: form-entry 3s ease-in-out;
                background: rgba(0, 0,0, 0.5);
                color: #fff;
                padding: 30px;
                margin-top: 130px;    
                box-shadow: 0 0 15px #341b1f;;
            }
            .avatar
            {
                width: 130px;
                height: auto;
                border-radius: 60%;
                position: absolute;
                top: 125px;
                left: calc(50% - 65px);
            }
            .footer
            {
                animation: banner-move 3s ease-in;
                text-shadow: 0 0 5px #fff, 0 0 10px #fff, 0 0 15px #0073e6, 0 0 20px #0073e6, 0 0 25px #0073e6, 0 0 30px #0073e6, 0 0 35px #0073e6;;
                letter-spacing: .5em;
                color: #02feff;
            }

            #modalEdit
            {
            color: cyan;
            background: rgba(0, 0, 0, 0.973);
            box-shadow: 0 0 15px #00fffd;;
            }

            .modal-header
            {
            letter-spacing: .2em;
            text-shadow: 0 0 5px #fff, 0 0 10px #fff, 0 0 15px #0073e6, 0 0 20px #0073e6, 0 0 25px #0073e6, 0 0 30px #0073e6, 0 0 35px #0073e6;;
            text-transform: uppercase
            /**text-align: center;**/
            }
            .modal-content
            {
            box-shadow: 0 0 15px #00fffd;;
            }

            .btn-outline-primary, .btn-danger, .btn-success
            {
                background-color: maroon;
                letter-spacing: .2em;
            }

            .btn-outline-primary:hover, .btn-danger:hover, .btn-success:hover
            {
                box-shadow: 0 0 15px #00fffd;
                text-shadow: 0 0 5px #fff, 0 0 10px #fff, 0 0 15px #0073e6, 0 0 20px #0073e6, 0 0 25px #0073e6, 0 0 30px #0073e6, 0 0 35px #0073e6;;
            }
        </style>
    </head>
    
    
    
    
    <body>
        
        <h1 class="login-text text-center w-100 pt-2">JARVIS</h1>
        
        
        <div class="d-flex justify-content-center align-items-center">
            <form action = "LoginServlet" method = "post" onsubmit = "return validate()">
            <div>
                <div class="login-box">
                    <div>
                        <img src="pic/raksquad.PNG" alt="raksquadlogo" class="avatar"> 
                    </div>
                    <br><p> Email:</p>
                    <input type="text" class="form-control" name="Email" placeholder="Password"><br>
                    <p> Password:</p>
                    <input type="password" class="form-control" name="Pass" placeholder="Password">

                    <div>
                        <input type="submit" id = "login" class="btn btn-danger btn-block mt-4" value = "LOGIN" />
                        <br>
                        <a class="text-info" href="#regModal" data-toggle="modal" style="color: #02feff;" data-target="#regModal">Don't have an account yet?</a><br>
                        <a class="text-info" style="#02feff";> Forgot your Password?</a>
                    </div>
                </div>
                
            </div>
            </form>
        </div>
        <!--- MODAL -->
        <div id="regModal" class="modal fade">
            <div class="modal-dialog" style='width:400px;'>
               <div class="modal-content" id="modalEdit">
                    <form action="RegisterServlet" method="post">
                    <div class="modal-header">
                        <h1>Register Here</h1>
                    </div>
                   <div class="modal-body" >
                            <table>
                                
                                <tr>
                                    <td>First Name: </td>
                                    <td><input type="text" class="form-control" name="fname" placeholder="First Name"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td colspan="2"><div class="registrationFormAlert" id="divCheckFname" ></div></td>
                                </tr>
                                <tr>
                                    <td>Last Name: </td>
                                    <td><input type="text" class="form-control" name="lname" placeholder="Last Name"></td>
                                </tr>
                                <tr>
                                    <td>Email: </td>
                                    <td><input type="email" class="form-control" name="email" placeholder="Email"></td>
                                </tr>
                                <tr>
                                    <td>Password: </td>
                                    <td><input type="password" class="form-control" name="pass" id="regpass" placeholder="Password" onkeyup='check();'></td>
                                </tr>
                                <tr>
                                    <td>Confirmation: </td>
                                    <td><input type= "password" class="form-control" name="conpass" id="regpass2" placeholder="Re-type Password" onkeyup='check();'></td>
                                </tr>
                            
                                <tr>
                                    <td></td>
                                    <td colspan="2"><div class="registrationFormAlert" id="divCheckPasswordMatch" ></div></td>
                                </tr>
       
                            </table>
                    </div>
                    <div class="modal-footer">
                        <input type="submit" id = "signUp" class="btn btn-success" name="submit" onchange='check_pass();'value = "Register" />
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>  
        </form>
        <!--END OF MODAL-->
        <br><br><br>
        <footer>
            <div class=" d-flex justify-content-end pr-2">
                <div class="footer">
                    <p>Powered by:</p>
                    <p>Raksquad Design and Development</p>
                </div>
            </div>
        
        </footer>
    
    </body>
    <script>
        function check() {
            if ($('#regpass').val() === $('#regpass2').val()) {
                $("#divCheckPasswordMatch").html("Passwords match");
                $("#divCheckPasswordMatch").css("color","white");
                $('#signUp').prop("disabled", false);
            } else {
                $("#divCheckPasswordMatch").html("Password does not match!");
                $("#divCheckPasswordMatch").css("color","red");
                $("#signUp").prop("disabled", true);
            }
        }
    </script>
</html>
