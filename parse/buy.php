<?php
	header("Content-Type: application/json");
	require_once("../classes/Db.php");
	require_once("../inc/function.php");

	$db = new Db();
	$mysqli = Db::$_mysqli;
	$result = array(); // array for storing results

	session_start();
	if (!isset($_SESSION['id'])) {
		$result['type'] = "error";
		$result['message'] = "Login <a href='login.php' class='text-bs-primary'>login</a>";
	}

	if (isset($_POST['name'])) {
		if (!empty($_POST['name']) && !empty($_POST['email']) && !empty($_POST['mobile']) && !empty($_POST['city']) && !empty($_POST['pincode']) && !empty($_POST['address'])) {
			$name = escape($_POST['name']);
			$email = escape($_POST['email']);
			$mobile = escape($_POST['mobile']);
			$city = escape($_POST['city']);
			$pincode = escape($_POST['pincode']);
			$address = escape($_POST['address']);
			
			//decrypt the product id
			$product_id_stack_encrypted = escape($_POST['product_id_stack']);
			$product_id_stack = encryption("decrypt", $product_id_stack_encrypted);

			$user_id = $_SESSION['id'];
			$time = time();
			$insert = $db->Insert("buy","'','$user_id','$name','$email','$mobile','$city','$pincode','$address','$time','','Processing','1','$product_id_stack'");

			if ($insert) {
				/*get the last_inserted_id*/
				$buy_id = mysqli_insert_id($mysqli);
				/*inactive the row from cart table*/
				$update = $db->Query("UPDATE `cart` SET `active`='n',buy_id='$buy_id' WHERE `user_id`='$user_id'");
				if ($update) {
					$result['type'] = "success";
				}else{
					$result['type'] = "error";
					$result['message'] = "Unable to update cart try again";

					/*delete buy record ifuser  system was not able to update the cart table*/
					$delete = $db->Delete("buy","id='$buy_id'");
				}
			}else{
				$result['type'] = "error";
				$result['message'] = "Opps! try again";
			}
		}

		echo json_encode($result);
		exit();
	}
?>