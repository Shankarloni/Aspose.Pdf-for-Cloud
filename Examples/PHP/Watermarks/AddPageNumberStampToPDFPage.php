<?php
require_once realpath(__DIR__ . '/..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/..') . '/Utils.php';

use Aspose\PDF\PdfApi;
use Aspose\PDF\AsposeApp;

class Watermark {

	public $pdfApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->pdfApi = new PdfApi();
	}

	public function addPageNumberStampToPDFPage() {
		// Upload file to Aspose Cloud Storage
		$fileName = "sample-input.pdf";
		Utils::uploadFile($fileName);

		$body = array("Type"=>"PageNumber", "Background"=>true, "Value"=>"Page # of 2", "PageIndex"=> 0, 
										"LeftMargin"=>0.0, "Opacity"=>0.5, "RightMargin"=>0.0, "TopMargin"=>0.0, "YIndent"=>100.0,
										"XIndent"=>100.0, "Zoom"=>1.0, "Width"=>300.0, "Height"=>300.0, "StartingNumber"=>1);

		$result = $this->pdfApi->PutPageAddStamp($fileName, $pageNumber = 1, $storage = "", $folder = "", $body);
		print_r ( $result );
	}
}

$watermark = new Watermark();
$watermark->addPageNumberStampToPDFPage();

?>
