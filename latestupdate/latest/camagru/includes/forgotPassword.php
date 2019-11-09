<?php

if ($_SERVER['REQUEST_METHOD'] == "GET" && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])) {
	header('Location: ../index.php');
}
	if(isset($_POST['submit'])){
		$email = $_POST['email'];
		//$errorMsg = "does this work";
		//include 'includes/verifying_email.php';

		if(!empty($email)){
			$email = $getFromU->checkInput($email);
			$email = $getFromU->fetchEmail('email');
			if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
				$errorMsg = "Invalid format";
				}else {
					//include 'includes/verifying_email.php';
				}
			}
		}else{
			$errorMsg = "Please enter email. $email wee";
		}
?>
<div class="login-div">
<form method="post">
	<ul>
		<li>
		  <input type="text" name="email" placeholder="Please enter your Email here"/>
		</li>
		<li>
		  <input type="submit" name="submit" value="Submit"/> Forgot Password?
		</li>
		<li>
    <?php
      if(isset($errorMsg)){
        echo '<li class="error-li">
        <div class="span-fp-error">'.$errorMsg.'</div>
        </li>';
      }
    ?>
	</ul>

	</form>
</div>