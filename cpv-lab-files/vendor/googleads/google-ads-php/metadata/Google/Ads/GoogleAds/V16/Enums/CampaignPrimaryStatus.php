<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/enums/campaign_primary_status.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V16\Enums;

class CampaignPrimaryStatus
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
<google/ads/googleads/v16/enums/campaign_primary_status.protogoogle.ads.googleads.v16.enums"�
CampaignPrimaryStatusEnum"�
CampaignPrimaryStatus
UNSPECIFIED 
UNKNOWN
ELIGIBLE

PAUSED
REMOVED	
ENDED
PENDING

MISCONFIGURED
LIMITED
LEARNING	
NOT_ELIGIBLE
B�
"com.google.ads.googleads.v16.enumsBCampaignPrimaryStatusProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3'
            , true);
        static::$is_initialized = true;
    }
}

