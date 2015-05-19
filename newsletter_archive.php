<?php
require("vendor/autoload.php");

$MailChimpAPIKey = 'c8b8b0716eb0eb95a7ab3e5f2467ebb1-us3';

$MailChimp = new \Drewm\MailChimp($MailChimpAPIKey);

if(isset($_GET['cid'])) {
	$cid = $_GET['cid'];

	// get content
	$content = $MailChimp->call('campaigns/content', array("cid" => $cid));
	echo $content['html'];
	exit;
}