<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/common/bidding.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V15\Common;

class Bidding
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
Egoogle/ads/googleads/v15/enums/target_impression_share_location.protogoogle.ads.googleads.v15.enums"�
!TargetImpressionShareLocationEnum"~
TargetImpressionShareLocation
UNSPECIFIED 
UNKNOWN
ANYWHERE_ON_PAGE
TOP_OF_PAGE
ABSOLUTE_TOP_OF_PAGEB�
"com.google.ads.googleads.v15.enumsB"TargetImpressionShareLocationProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
?google/ads/googleads/v15/enums/target_frequency_time_unit.protogoogle.ads.googleads.v15.enums"b
TargetFrequencyTimeUnitEnum"C
TargetFrequencyTimeUnit
UNSPECIFIED 
UNKNOWN

WEEKLYB�
"com.google.ads.googleads.v15.enumsBTargetFrequencyTimeUnitProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
-google/ads/googleads/v15/common/bidding.protogoogle.ads.googleads.v15.commonEgoogle/ads/googleads/v15/enums/target_impression_share_location.proto"L

Commission#
commission_rate_micros (H �B
_commission_rate_micros"
EnhancedCpc"
	ManualCpa"G
	ManualCpc!
enhanced_cpc_enabled (H �B
_enhanced_cpc_enabled"
	ManualCpm"
	ManualCpv"n
MaximizeConversions
cpc_bid_ceiling_micros (
cpc_bid_floor_micros (
target_cpa_micros ("l
MaximizeConversionValue
target_roas (
cpc_bid_ceiling_micros (
cpc_bid_floor_micros ("�
	TargetCpa
target_cpa_micros (H �#
cpc_bid_ceiling_micros (H�!
cpc_bid_floor_micros (H�B
_target_cpa_microsB
_cpc_bid_ceiling_microsB
_cpc_bid_floor_micros"s
	TargetCpm^
target_frequency_goal (2=.google.ads.googleads.v15.common.TargetCpmTargetFrequencyGoalH B
goal"�
TargetCpmTargetFrequencyGoal
target_count (f
	time_unit (2S.google.ads.googleads.v15.enums.TargetFrequencyTimeUnitEnum.TargetFrequencyTimeUnit"�
TargetImpressionShareq
location (2_.google.ads.googleads.v15.enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation%
location_fraction_micros (H �#
cpc_bid_ceiling_micros (H�B
_location_fraction_microsB
_cpc_bid_ceiling_micros"�

TargetRoas
target_roas (H �#
cpc_bid_ceiling_micros (H�!
cpc_bid_floor_micros (H�B
_target_roasB
_cpc_bid_ceiling_microsB
_cpc_bid_floor_micros"�
TargetSpend$
target_spend_micros (BH �#
cpc_bid_ceiling_micros (H�B
_target_spend_microsB
_cpc_bid_ceiling_micros"�

PercentCpc#
cpc_bid_ceiling_micros (H �!
enhanced_cpc_enabled (H�B
_cpc_bid_ceiling_microsB
_enhanced_cpc_enabledB�
#com.google.ads.googleads.v15.commonBBiddingProtoPZEgoogle.golang.org/genproto/googleapis/ads/googleads/v15/common;common�GAA�Google.Ads.GoogleAds.V15.Common�Google\\Ads\\GoogleAds\\V15\\Common�#Google::Ads::GoogleAds::V15::Commonbproto3'
            , true);
        static::$is_initialized = true;
    }
}

