<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/enums/change_status_resource_type.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V16\Enums;

class ChangeStatusResourceType
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
�
@google/ads/googleads/v16/enums/change_status_resource_type.protogoogle.ads.googleads.v16.enums"�
ChangeStatusResourceTypeEnum"�
ChangeStatusResourceType
UNSPECIFIED 
UNKNOWN
AD_GROUP
AD_GROUP_AD
AD_GROUP_CRITERION
CAMPAIGN
CAMPAIGN_CRITERION
FEED	
	FEED_ITEM


AD_GROUP_FEED

CAMPAIGN_FEED
AD_GROUP_BID_MODIFIER


SHARED_SET
CAMPAIGN_SHARED_SET	
ASSET
CUSTOMER_ASSET
CAMPAIGN_ASSET
AD_GROUP_ASSET
COMBINED_AUDIENCEB�
"com.google.ads.googleads.v16.enumsBChangeStatusResourceTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3'
            , true);
        static::$is_initialized = true;
    }
}

