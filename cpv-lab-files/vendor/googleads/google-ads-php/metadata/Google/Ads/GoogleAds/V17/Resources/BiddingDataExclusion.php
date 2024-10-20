<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v17/resources/bidding_data_exclusion.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V17\Resources;

class BiddingDataExclusion
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
=google/ads/googleads/v17/enums/advertising_channel_type.protogoogle.ads.googleads.v17.enums"�
AdvertisingChannelTypeEnum"�
AdvertisingChannelType
UNSPECIFIED 
UNKNOWN

SEARCH
DISPLAY
SHOPPING	
HOTEL	
VIDEO

MULTI_CHANNEL	
LOCAL	
SMART	
PERFORMANCE_MAX

LOCAL_SERVICES

TRAVEL


DEMAND_GENB�
"com.google.ads.googleads.v17.enumsBAdvertisingChannelTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�
<google/ads/googleads/v17/enums/seasonality_event_scope.protogoogle.ads.googleads.v17.enums"{
SeasonalityEventScopeEnum"^
SeasonalityEventScope
UNSPECIFIED 
UNKNOWN
CUSTOMER
CAMPAIGN
CHANNELB�
"com.google.ads.googleads.v17.enumsBSeasonalityEventScopeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�
+google/ads/googleads/v17/enums/device.protogoogle.ads.googleads.v17.enums"v

DeviceEnum"h
Device
UNSPECIFIED 
UNKNOWN

MOBILE

TABLET
DESKTOP
CONNECTED_TV	
OTHERB�
"com.google.ads.googleads.v17.enumsBDeviceProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�
=google/ads/googleads/v17/enums/seasonality_event_status.protogoogle.ads.googleads.v17.enums"n
SeasonalityEventStatusEnum"P
SeasonalityEventStatus
UNSPECIFIED 
UNKNOWN
ENABLED
REMOVEDB�
"com.google.ads.googleads.v17.enumsBSeasonalityEventStatusProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�

?google/ads/googleads/v17/resources/bidding_data_exclusion.proto"google.ads.googleads.v17.resources+google/ads/googleads/v17/enums/device.proto<google/ads/googleads/v17/enums/seasonality_event_scope.proto=google/ads/googleads/v17/enums/seasonality_event_status.protogoogle/api/field_behavior.protogoogle/api/resource.proto"�
BiddingDataExclusionL

resource_name (	B5�A�A/
-googleads.googleapis.com/BiddingDataExclusion
data_exclusion_id (B�A^
scope (2O.google.ads.googleads.v17.enums.SeasonalityEventScopeEnum.SeasonalityEventScopef
status (2Q.google.ads.googleads.v17.enums.SeasonalityEventStatusEnum.SeasonalityEventStatusB�A
start_date_time (	B�A

end_date_time (	B�A
name (	
description (	B
devices	 (21.google.ads.googleads.v17.enums.DeviceEnum.Device9
	campaigns
 (	B&�A#
!googleads.googleapis.com/Campaignt
advertising_channel_types (2Q.google.ads.googleads.v17.enums.AdvertisingChannelTypeEnum.AdvertisingChannelType:x�Au
-googleads.googleapis.com/BiddingDataExclusionDcustomers/{customer_id}/biddingDataExclusions/{seasonality_event_id}B�
&com.google.ads.googleads.v17.resourcesBBiddingDataExclusionProtoPZKgoogle.golang.org/genproto/googleapis/ads/googleads/v17/resources;resources�GAA�"Google.Ads.GoogleAds.V17.Resources�"Google\\Ads\\GoogleAds\\V17\\Resources�&Google::Ads::GoogleAds::V17::Resourcesbproto3'
            , true);
        static::$is_initialized = true;
    }
}

