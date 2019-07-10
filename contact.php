<?php
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;
    
    // Load Composer's autoloader
    require '../Test Project/vendor/autoload.php';
    
    // Instantiation and passing `true` enables exceptions
    if(isset($_POST['sendMessage'])){
        $mail = new PHPMailer(true);
        
        try {
            //Server settings
            $mail->SMTPDebug = 2;                                       // Enable verbose debug output
            $mail->isSMTP();                                            // Set mailer to use SMTP
            $mail->Host       = 'smtp1.gmail.com';                      // Specify main and backup SMTP servers
            $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
            $mail->Username   = 'stekim83@gmail.com';                   // SMTP username
            $mail->Password   = '***********';                          // SMTP password
            $mail->SMTPSecure = 'tls';                                  // Enable TLS encryption, `ssl` also accepted
            $mail->Port       = 587;                                    // TCP port to connect to
        
            //Recipients
            $mail->setFrom('contactForm@bookstore.com', 'Mailer');
            $mail->addAddress('admin@bookstore.com');                   // Add a recipient, Name is optional
        

        
            // Content
            $mail->isHTML(true);                                        // Set email format to HTML
            $mail->Body    = $_POST['messageInput'];
            $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
        
            $mail->send();
            echo 'Message has been sent';
        } catch (Exception $e) {
            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style/contact.css">
    <title>Contact us</title>
</head>
<body>
    <main>
        <section id="contact">
            <h3>Contact us:</h3>

            <ul>
                <li>
                    <p>Our adress:</p>
                    <p>12 rue m'importe L-Unterschlindermanderscheid</p>
                </li>
                <li>
                    <p>Our Phonebumber:</p>
                    <p>+352putPhoneNumberHere</p>
                </li>
            </ul>
            <h4>Or leave us a message:</h5>
            <form action="#" method="post">
                <label for="">Your Name:</label>
                <input type="text" name="name" id="">
                <label for="">Your email:</label>
                <input type="email" name="email" id="">
                <label for="">Your message:</label>
                </br>
                <textarea name="messageInput" id="" cols="30" rows="10"></textarea>
                <input type="submit" value="Send" name="sendMessage">
            </form>
        </section>
    </main>
</body>
</html>
