package AsposePdfCloud::Object::TiffExportOptions;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base "AsposePdfCloud::Object::BaseObject";

#
#
#
#NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
#

my $swagger_types = {
    'Brightness' => 'double',
    'Compression' => 'string',
    'ColorDepth' => 'string',
    'LeftMargin' => 'int',
    'RightMargin' => 'int',
    'TopMargin' => 'int',
    'BottomMargin' => 'int',
    'Orientation' => 'string',
    'SkipBlankPages' => 'boolean',
    'Width' => 'int',
    'Height' => 'int',
    'XResolution' => 'int',
    'YResolution' => 'int',
    'PageIndex' => 'int',
    'PageCount' => 'int',
    'ResultFile' => 'string'
};

my $attribute_map = {
    'Brightness' => 'Brightness',
    'Compression' => 'Compression',
    'ColorDepth' => 'ColorDepth',
    'LeftMargin' => 'LeftMargin',
    'RightMargin' => 'RightMargin',
    'TopMargin' => 'TopMargin',
    'BottomMargin' => 'BottomMargin',
    'Orientation' => 'Orientation',
    'SkipBlankPages' => 'SkipBlankPages',
    'Width' => 'Width',
    'Height' => 'Height',
    'XResolution' => 'XResolution',
    'YResolution' => 'YResolution',
    'PageIndex' => 'PageIndex',
    'PageCount' => 'PageCount',
    'ResultFile' => 'ResultFile'
};

# new object
sub new { 
    my ($class, %args) = @_; 
    my $self = { 
        #
        'Brightness' => $args{'Brightness'}, 
        #
        'Compression' => $args{'Compression'}, 
        #
        'ColorDepth' => $args{'ColorDepth'}, 
        #
        'LeftMargin' => $args{'LeftMargin'}, 
        #
        'RightMargin' => $args{'RightMargin'}, 
        #
        'TopMargin' => $args{'TopMargin'}, 
        #
        'BottomMargin' => $args{'BottomMargin'}, 
        #
        'Orientation' => $args{'Orientation'}, 
        #
        'SkipBlankPages' => $args{'SkipBlankPages'}, 
        #
        'Width' => $args{'Width'}, 
        #
        'Height' => $args{'Height'}, 
        #
        'XResolution' => $args{'XResolution'}, 
        #
        'YResolution' => $args{'YResolution'}, 
        #
        'PageIndex' => $args{'PageIndex'}, 
        #
        'PageCount' => $args{'PageCount'}, 
        #
        'ResultFile' => $args{'ResultFile'}
    }; 

    return bless $self, $class; 
}  

# get swagger type of the attribute
sub get_swagger_types {
    return $swagger_types;
}

# get attribute mappping
sub get_attribute_map {
    return $attribute_map;
}

1;
