<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/enums/conversion_value_rule_primary_dimension.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V15\Enums;

class ConversionValueRulePrimaryDimension
{
    public static $is_initialized = false;

    public static function initOnce()
    {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();
        if (static::$is_initialized == true) {
            return;
        }
        $pool->internalAddGeneratedFile(
            '
�
Lgoogle/ads/googleads/v15/enums/conversion_value_rule_primary_dimension.protogoogle.ads.googleads.v15.enums"�
\'ConversionValueRulePrimaryDimensionEnum"�
#ConversionValueRulePrimaryDimension
UNSPECIFIED 
UNKNOWN
NO_RULE_APPLIED
ORIGINAL
NEW_VS_RETURNING_USER
GEO_LOCATION

DEVICE
AUDIENCE
MULTIPLEB�
"com.google.ads.googleads.v15.enumsB(ConversionValueRulePrimaryDimensionProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3'
            , true);
        static::$is_initialized = true;
    }
}

