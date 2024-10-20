<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/resources/accessible_bidding_strategy.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V16\Resources;

class AccessibleBiddingStrategy
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
Egoogle/ads/googleads/v16/enums/target_impression_share_location.protogoogle.ads.googleads.v16.enums"�
!TargetImpressionShareLocationEnum"~
TargetImpressionShareLocation
UNSPECIFIED 
UNKNOWN
ANYWHERE_ON_PAGE
TOP_OF_PAGE
ABSOLUTE_TOP_OF_PAGEB�
"com.google.ads.googleads.v16.enumsB"TargetImpressionShareLocationProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
:google/ads/googleads/v16/enums/bidding_strategy_type.protogoogle.ads.googleads.v16.enums"�
BiddingStrategyTypeEnum"�
BiddingStrategyType
UNSPECIFIED 
UNKNOWN

COMMISSION
ENHANCED_CPC
INVALID

MANUAL_CPA

MANUAL_CPC

MANUAL_CPM

MANUAL_CPV

MAXIMIZE_CONVERSIONS

MAXIMIZE_CONVERSION_VALUE
PAGE_ONE_PROMOTED
PERCENT_CPC

TARGET_CPA

TARGET_CPM
TARGET_IMPRESSION_SHARE
TARGET_OUTRANK_SHARE
TARGET_ROAS
TARGET_SPEND	B�
"com.google.ads.googleads.v16.enumsBBiddingStrategyTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
Dgoogle/ads/googleads/v16/resources/accessible_bidding_strategy.proto"google.ads.googleads.v16.resourcesEgoogle/ads/googleads/v16/enums/target_impression_share_location.protogoogle/api/field_behavior.protogoogle/api/resource.proto"�
AccessibleBiddingStrategyQ

resource_name (	B:�A�A4
2googleads.googleapis.com/AccessibleBiddingStrategy
id (B�A
name (	B�A^
type (2K.google.ads.googleads.v16.enums.BiddingStrategyTypeEnum.BiddingStrategyTypeB�A
owner_customer_id (B�A#
owner_descriptive_name (	B�A
maximize_conversion_value (2U.google.ads.googleads.v16.resources.AccessibleBiddingStrategy.MaximizeConversionValueB�AH v
maximize_conversions (2Q.google.ads.googleads.v16.resources.AccessibleBiddingStrategy.MaximizeConversionsB�AH b

target_cpa	 (2G.google.ads.googleads.v16.resources.AccessibleBiddingStrategy.TargetCpaB�AH {
target_impression_share
 (2S.google.ads.googleads.v16.resources.AccessibleBiddingStrategy.TargetImpressionShareB�AH d
target_roas (2H.google.ads.googleads.v16.resources.AccessibleBiddingStrategy.TargetRoasB�AH f
target_spend (2I.google.ads.googleads.v16.resources.AccessibleBiddingStrategy.TargetSpendB�AH 3
MaximizeConversionValue
target_roas (B�A5
MaximizeConversions
target_cpa_micros (B�AF
	TargetCpa#
target_cpa_micros (B�AH �B
_target_cpa_micros�
TargetImpressionSharev
location (2_.google.ads.googleads.v16.enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocationB�A%
location_fraction_micros (H �(
cpc_bid_ceiling_micros (B�AH�B
_location_fraction_microsB
_cpc_bid_ceiling_micros;

TargetRoas
target_roas (B�AH �B
_target_roas�
TargetSpend\'
target_spend_micros (B�AH �(
cpc_bid_ceiling_micros (B�AH�B
_target_spend_microsB
_cpc_bid_ceiling_micros:��A
2googleads.googleapis.com/AccessibleBiddingStrategyIcustomers/{customer_id}/accessibleBiddingStrategies/{bidding_strategy_id}B
schemeB�
&com.google.ads.googleads.v16.resourcesBAccessibleBiddingStrategyProtoPZKgoogle.golang.org/genproto/googleapis/ads/googleads/v16/resources;resources�GAA�"Google.Ads.GoogleAds.V16.Resources�"Google\\Ads\\GoogleAds\\V16\\Resources�&Google::Ads::GoogleAds::V16::Resourcesbproto3'
            , true);
        static::$is_initialized = true;
    }
}

