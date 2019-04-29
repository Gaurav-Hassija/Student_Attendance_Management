<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require('C:\xampp\htdocs\php mailer\vendor\autoload.php');
function send_mail($user_email,$user_name){
$subj = "STUDENT ATTENDANCE";
        // the message
        $msg = "Dear Parent, This mail is to inform you that your son/daughter has attendance below 50%. You are free to Meet or Speak to Class teacher, HOD madam or Attendance incharge regarding Attendance of your student.
		Regards
		VESIT.";
		

        // use wordwrap() if lines are longer than 70 characters
        $msg = wordwrap($msg,70);
        
        $mail = new PHPMailer(true);
    try{
        $mail->SMTPDebug = 2;                               // Enable verbose debug output

        $mail->isSMTP();                                      // Set mailer to use SMTP
        $mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
        $mail->SMTPAuth = true;                               // Enable SMTP authentication
        $mail->Username = '2016.gaurav.makhija@ves.ac.in';                 // SMTP username
        $mail->Password = 'password@ves';                           // SMTP password
        $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
        $mail->Port = 587;                                 // TCP port to connect to

        $mail->setFrom('2016.gaurav.makhija@ves.ac.in', 'VESIT');
        $mail->addAddress("hassijagaurav21@gmail.com");	
		for($i=0;$i<sizeof($user_email);$i++){
		$mail->addAddress($user_email[$i]);	
		}
        $mail->addReplyTo('2016.gaurav.makhija@ves.ac.in');

        //$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
        //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
        $mail->isHTML(true);                                  // Set email format to HTML

        $mail->Subject = $subj;
        $mail->Body    = $msg;
        $mail->AltBody = '';
        $mail->send();
        echo 'Message has been sent';
        //header("refresh:1; url=invoice.php");
    }
        catch (Exception $e) {
    echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
}

}