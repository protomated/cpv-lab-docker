<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/common/consent.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V15\Common;

class Consent
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
�
3google/ads/googleads/v15/enums/consent_status.protogoogle.ads.googleads.v15.enums"[
ConsentStatusEnum"F

ConsentStatus
UNSPECIFIED 
UNKNOWN
GRANTED

DENIEDB�
"com.google.ads.googleads.v15.enumsBConsentStatusProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
-google/ads/googleads/v15/common/consent.protogoogle.ads.googleads.v15.common"�
ConsentU
ad_user_data (2?.google.ads.googleads.v15.enums.ConsentStatusEnum.ConsentStatus[
ad_personalization (2?.google.ads.googleads.v15.enums.ConsentStatusEnum.ConsentStatusB�
#com.google.ads.googleads.v15.commonBConsentProtoPZEgoogle.golang.org/genproto/googleapis/ads/googleads/v15/common;common�GAA�Google.Ads.GoogleAds.V15.Common�Google\\Ads\\GoogleAds\\V15\\Common�#Google::Ads::GoogleAds::V15::Commonbproto3'
            , true);
        static::$is_initialized = true;
    }
}

