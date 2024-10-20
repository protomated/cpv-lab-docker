<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/resources/conversion_custom_variable.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V16\Resources;

class ConversionCustomVariable
{
    public static $is_initialized = false;

    public static function initOnce()
    {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();
        if (static::$is_initialized == true) {
            return;
        }
        \GPBMetadata\Google\Api\FieldBehavior::initOnce();
        \GPBMetadata\Google\Api\Resource::initOnce();
        $pool->internalAddGeneratedFile(
            '
�
Fgoogle/ads/googleads/v16/enums/conversion_custom_variable_status.protogoogle.ads.googleads.v16.enums"�
"ConversionCustomVariableStatusEnum"n
ConversionCustomVariableStatus
UNSPECIFIED 
UNKNOWN
ACTIVATION_NEEDED
ENABLED

PAUSEDB�
"com.google.ads.googleads.v16.enumsB#ConversionCustomVariableStatusProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
Cgoogle/ads/googleads/v16/resources/conversion_custom_variable.proto"google.ads.googleads.v16.resourcesgoogle/api/field_behavior.protogoogle/api/resource.proto"�
ConversionCustomVariableP

resource_name (	B9�A�A3
1googleads.googleapis.com/ConversionCustomVariable
id (B�A
name (	B�A
tag (	B�A�Aq
status (2a.google.ads.googleads.v16.enums.ConversionCustomVariableStatusEnum.ConversionCustomVariableStatusA
owner_customer (	B)�A�A#
!googleads.googleapis.com/Customer:��A�
1googleads.googleapis.com/ConversionCustomVariableQcustomers/{customer_id}/conversionCustomVariables/{conversion_custom_variable_id}B�
&com.google.ads.googleads.v16.resourcesBConversionCustomVariableProtoPZKgoogle.golang.org/genproto/googleapis/ads/googleads/v16/resources;resources�GAA�"Google.Ads.GoogleAds.V16.Resources�"Google\\Ads\\GoogleAds\\V16\\Resources�&Google::Ads::GoogleAds::V16::Resourcesbproto3'
            , true);
        static::$is_initialized = true;
    }
}

