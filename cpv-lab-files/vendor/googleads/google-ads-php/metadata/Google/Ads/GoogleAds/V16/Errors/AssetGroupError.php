<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/errors/asset_group_error.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V16\Errors;

class AssetGroupError
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
�
7google/ads/googleads/v16/errors/asset_group_error.protogoogle.ads.googleads.v16.errors"�
AssetGroupErrorEnum"�
AssetGroupError
UNSPECIFIED 
UNKNOWN
DUPLICATE_NAME,
(CANNOT_ADD_ASSET_GROUP_FOR_CAMPAIGN_TYPE
NOT_ENOUGH_HEADLINE_ASSET"
NOT_ENOUGH_LONG_HEADLINE_ASSET 
NOT_ENOUGH_DESCRIPTION_ASSET"
NOT_ENOUGH_BUSINESS_NAME_ASSET$
 NOT_ENOUGH_MARKETING_IMAGE_ASSET+
\'NOT_ENOUGH_SQUARE_MARKETING_IMAGE_ASSET	
NOT_ENOUGH_LOGO_ASSET
<
8FINAL_URL_SHOPPING_MERCHANT_HOME_PAGE_URL_DOMAINS_DIFFER$
 PATH1_REQUIRED_WHEN_PATH2_IS_SET
SHORT_DESCRIPTION_REQUIRED

FINAL_URL_REQUIRED*
&FINAL_URL_CONTAINS_INVALID_DOMAIN_NAME
AD_CUSTOMIZER_NOT_SUPPORTED2
.CANNOT_MUTATE_ASSET_GROUP_FOR_REMOVED_CAMPAIGNB�
#com.google.ads.googleads.v16.errorsBAssetGroupErrorProtoPZEgoogle.golang.org/genproto/googleapis/ads/googleads/v16/errors;errors�GAA�Google.Ads.GoogleAds.V16.Errors�Google\\Ads\\GoogleAds\\V16\\Errors�#Google::Ads::GoogleAds::V16::Errorsbproto3'
            , true);
        static::$is_initialized = true;
    }
}

