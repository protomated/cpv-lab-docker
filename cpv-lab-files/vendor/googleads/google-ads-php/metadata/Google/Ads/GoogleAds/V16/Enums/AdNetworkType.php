<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/enums/ad_network_type.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V16\Enums;

class AdNetworkType
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
4google/ads/googleads/v16/enums/ad_network_type.protogoogle.ads.googleads.v16.enums"�
AdNetworkTypeEnum"�

AdNetworkType
UNSPECIFIED 
UNKNOWN

SEARCH
SEARCH_PARTNERS
CONTENT	
MIXED
YOUTUBE
	GOOGLE_TV	B�
"com.google.ads.googleads.v16.enumsBAdNetworkTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3'
            , true);
        static::$is_initialized = true;
    }
}

