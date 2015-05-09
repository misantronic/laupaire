<?php
$email = filter_var($_REQUEST['email'], FILTER_VALIDATE_EMAIL);

$output = array();

if($email === false) {
	$output['error'] = "Invalid e-Mail address";
} else {
	require("vendor/autoload.php");

	$MailChimpAPIKey = 'c8b8b0716eb0eb95a7ab3e5f2467ebb1-us3';

	$MailChimp = new \Drewm\MailChimp($MailChimpAPIKey);
	$lists = $MailChimp->call('lists/list');

	foreach($lists['data'] as $list) {
		$id = $list['id'];

		$result = $MailChimp->call('lists/subscribe', array(
			'id'                => $id,
			'email'             => array('email' => $email),
			//	'merge_vars'        => array('FNAME' => 'Davy', 'LNAME' => 'Jones'),
			'double_optin'      => true,
			'update_existing'   => true,
			'replace_interests' => false,
			'send_welcome'      => false,
		));

		$output[] = $result;
	}
}

header('Content-Type: application/json');
echo json_encode($output);