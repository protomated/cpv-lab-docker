<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/enums/ad_group_primary_status.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V16\Enums;

class AdGroupPrimaryStatus
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
<google/ads/googleads/v16/enums/ad_group_primary_status.protogoogle.ads.googleads.v16.enums"�
AdGroupPrimaryStatusEnum"�
AdGroupPrimaryStatus
UNSPECIFIED 
UNKNOWN
ELIGIBLE

PAUSED
REMOVED
PENDING
NOT_ELIGIBLE
LIMITEDB�
"com.google.ads.googleads.v16.enumsBAdGroupPrimaryStatusProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3'
            , true);
        static::$is_initialized = true;
    }
}

