<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/errors/ad_group_ad_error.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V16\Errors;

class AdGroupAdError
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
�
7google/ads/googleads/v16/errors/ad_group_ad_error.protogoogle.ads.googleads.v16.errors"�
AdGroupAdErrorEnum"�
AdGroupAdError
UNSPECIFIED 
UNKNOWN$
 AD_GROUP_AD_LABEL_DOES_NOT_EXIST$
 AD_GROUP_AD_LABEL_ALREADY_EXISTS
AD_NOT_UNDER_ADGROUP\'
#CANNOT_OPERATE_ON_REMOVED_ADGROUPAD 
CANNOT_CREATE_DEPRECATED_ADS
CANNOT_CREATE_TEXT_ADS
EMPTY_FIELD\'
#RESOURCE_REFERENCED_IN_MULTIPLE_OPS	
AD_TYPE_CANNOT_BE_PAUSED

AD_TYPE_CANNOT_BE_REMOVED 
CANNOT_UPDATE_DEPRECATED_ADSB�
#com.google.ads.googleads.v16.errorsBAdGroupAdErrorProtoPZEgoogle.golang.org/genproto/googleapis/ads/googleads/v16/errors;errors�GAA�Google.Ads.GoogleAds.V16.Errors�Google\\Ads\\GoogleAds\\V16\\Errors�#Google::Ads::GoogleAds::V16::Errorsbproto3'
            , true);
        static::$is_initialized = true;
    }
}

