<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/enums/ad_type.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V16\Enums;

class AdType
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
�
,google/ads/googleads/v16/enums/ad_type.protogoogle.ads.googleads.v16.enums"�

AdTypeEnum"�
AdType
UNSPECIFIED 
UNKNOWN
TEXT_AD
EXPANDED_TEXT_AD
EXPANDED_DYNAMIC_SEARCH_AD
HOTEL_AD
SHOPPING_SMART_AD	
SHOPPING_PRODUCT_AD

VIDEO_AD
IMAGE_AD
RESPONSIVE_SEARCH_AD 
LEGACY_RESPONSIVE_DISPLAY_AD

APP_AD
LEGACY_APP_INSTALL_AD
RESPONSIVE_DISPLAY_AD
LOCAL_AD
HTML5_UPLOAD_AD
DYNAMIC_HTML5_AD
APP_ENGAGEMENT_AD"
SHOPPING_COMPARISON_LISTING_AD
VIDEO_BUMPER_AD$
 VIDEO_NON_SKIPPABLE_IN_STREAM_AD
VIDEO_OUTSTREAM_AD
VIDEO_TRUEVIEW_IN_STREAM_AD
VIDEO_RESPONSIVE_AD
SMART_CAMPAIGN_AD
CALL_AD 
APP_PRE_REGISTRATION_AD!
IN_FEED_VIDEO_AD"
DISCOVERY_MULTI_ASSET_AD#
DISCOVERY_CAROUSEL_AD$
	TRAVEL_AD%!
DISCOVERY_VIDEO_RESPONSIVE_AD&
DEMAND_GEN_PRODUCT_AD\'B�
"com.google.ads.googleads.v16.enumsBAdTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3'
            , true);
        static::$is_initialized = true;
    }
}

