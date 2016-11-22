##Aspose.Pdf Cloud SDK for Perl

This repository contains Aspose.Pdf Cloud SDK for Perl source code. This SDK allows you to work with Aspose.Pdf Cloud REST APIs in your Perl applications quickly and easily. 

##How to Use the SDK?
The complete source code is available in this repository folder, you can either directly use it in your project or use Maven. For more details, please visit our [documentation website](http://www.aspose.com/docs/display/pdfcloud/Available+SDKs).


##Quick SDK Tutorial


use lib 'lib';
use strict;
use warnings;
use File::Slurp; # From CPAN

use AsposeStorageCloud::StorageApi;
use AsposeStorageCloud::ApiClient;
use AsposeStorageCloud::Configuration;

use AsposePdfCloud::PdfApi;
use AsposePdfCloud::ApiClient;
use AsposePdfCloud::Configuration;

$AsposePdfCloud::Configuration::app_sid = 'XXX';
$AsposePdfCloud::Configuration::api_key = 'XXX';

$AsposePdfCloud::Configuration::debug = 1;
$AsposeStorageCloud::Configuration::app_sid = $AsposePdfCloud::Configuration::app_sid;
$AsposeStorageCloud::Configuration::api_key = $AsposePdfCloud::Configuration::api_key;

#Instantiate Aspose.Storage API SDK 
my $storageApi = AsposeStorageCloud::StorageApi->new();

#Instantiate Aspose.Pdf API SDK
my $pdfApi = AsposePdfCloud::PdfApi->new();

my $data_path = '../data/';

#set input file name
my $filename = 'Sample';
my $name = $filename . '.pdf';
my $format = "tiff";

#upload file to aspose cloud storage 
my $response = $storageApi->PutCreate(Path => $name, file => $data_path.$name);

#invoke Aspose.Pdf Cloud SDK API to convert PDF to TIFF                           
$response = $pdfApi->GetDocumentWithFormat(name=>$name, format=> $format);

if($response->{'Status'} eq 'OK'){
	#save converted format file from response stream
    my $output_file = 'C:/temp/'. $filename . '.' . $format;
	write_file($output_file, { binmode => ":raw" }, $response->{'Content'});
}

```

##Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://www.aspose.com/community/forums/).
