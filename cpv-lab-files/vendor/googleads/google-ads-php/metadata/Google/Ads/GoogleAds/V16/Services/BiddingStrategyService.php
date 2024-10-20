<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/services/bidding_strategy_service.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V16\Services;

class BiddingStrategyService
{
    public static $is_initialized = false;

    public static function initOnce()
    {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();
        if (static::$is_initialized == true) {
            return;
        }
        \GPBMetadata\Google\Api\LaunchStage::initOnce();
        \GPBMetadata\Google\Protobuf\Any::initOnce();
        \GPBMetadata\Google\Rpc\Status::initOnce();
        \GPBMetadata\Google\Api\FieldBehavior::initOnce();
        \GPBMetadata\Google\Protobuf\FieldMask::initOnce();
        \GPBMetadata\Google\Api\Resource::initOnce();
        \GPBMetadata\Google\Protobuf\Duration::initOnce();
        \GPBMetadata\Google\Api\Client::initOnce();
        \GPBMetadata\Google\Api\Http::initOnce();
        \GPBMetadata\Google\Api\Annotations::initOnce();
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
�
?google/ads/googleads/v16/enums/target_frequency_time_unit.protogoogle.ads.googleads.v16.enums"b
TargetFrequencyTimeUnitEnum"C
TargetFrequencyTimeUnit
UNSPECIFIED 
UNKNOWN

WEEKLYB�
"com.google.ads.googleads.v16.enumsBTargetFrequencyTimeUnitProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
-google/ads/googleads/v16/common/bidding.protogoogle.ads.googleads.v16.commonEgoogle/ads/googleads/v16/enums/target_impression_share_location.proto"L

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
target_frequency_goal (2=.google.ads.googleads.v16.common.TargetCpmTargetFrequencyGoalH B
goal"�
TargetCpmTargetFrequencyGoal
target_count (f
	time_unit (2S.google.ads.googleads.v16.enums.TargetFrequencyTimeUnitEnum.TargetFrequencyTimeUnit"�
TargetImpressionShareq
location (2_.google.ads.googleads.v16.enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation%
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
#com.google.ads.googleads.v16.commonBBiddingProtoPZEgoogle.golang.org/genproto/googleapis/ads/googleads/v16/common;common�GAA�Google.Ads.GoogleAds.V16.Common�Google\\Ads\\GoogleAds\\V16\\Common�#Google::Ads::GoogleAds::V16::Commonbproto3
�
<google/ads/googleads/v16/enums/bidding_strategy_status.protogoogle.ads.googleads.v16.enums"l
BiddingStrategyStatusEnum"O
BiddingStrategyStatus
UNSPECIFIED 
UNKNOWN
ENABLED
REMOVEDB�
"com.google.ads.googleads.v16.enumsBBiddingStrategyStatusProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
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
�
9google/ads/googleads/v16/resources/bidding_strategy.proto"google.ads.googleads.v16.resources<google/ads/googleads/v16/enums/bidding_strategy_status.proto:google/ads/googleads/v16/enums/bidding_strategy_type.protogoogle/api/field_behavior.protogoogle/api/resource.proto"�	
BiddingStrategyG

resource_name (	B0�A�A*
(googleads.googleapis.com/BiddingStrategy
id (B�AH�
name (	H�d
status (2O.google.ads.googleads.v16.enums.BiddingStrategyStatusEnum.BiddingStrategyStatusB�A^
type (2K.google.ads.googleads.v16.enums.BiddingStrategyTypeEnum.BiddingStrategyTypeB�A

currency_code (	B�A)
effective_currency_code (	B�AH�"
aligned_campaign_budget_id ( 
campaign_count (B�AH�,
non_removed_campaign_count (B�AH�D
enhanced_cpc (2,.google.ads.googleads.v16.common.EnhancedCpcH ]
maximize_conversion_value (28.google.ads.googleads.v16.common.MaximizeConversionValueH T
maximize_conversions (24.google.ads.googleads.v16.common.MaximizeConversionsH @

target_cpa	 (2*.google.ads.googleads.v16.common.TargetCpaH Y
target_impression_share0 (26.google.ads.googleads.v16.common.TargetImpressionShareH B
target_roas (2+.google.ads.googleads.v16.common.TargetRoasH D
target_spend (2,.google.ads.googleads.v16.common.TargetSpendH :n�Ak
(googleads.googleapis.com/BiddingStrategy?customers/{customer_id}/biddingStrategies/{bidding_strategy_id}B
schemeB
_idB
_nameB
_effective_currency_codeB
_campaign_countB
_non_removed_campaign_countB�
&com.google.ads.googleads.v16.resourcesBBiddingStrategyProtoPZKgoogle.golang.org/genproto/googleapis/ads/googleads/v16/resources;resources�GAA�"Google.Ads.GoogleAds.V16.Resources�"Google\\Ads\\GoogleAds\\V16\\Resources�&Google::Ads::GoogleAds::V16::Resourcesbproto3
�
:google/ads/googleads/v16/enums/response_content_type.protogoogle.ads.googleads.v16.enums"o
ResponseContentTypeEnum"T
ResponseContentType
UNSPECIFIED 
RESOURCE_NAME_ONLY
MUTABLE_RESOURCEB�
"com.google.ads.googleads.v16.enumsBResponseContentTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
@google/ads/googleads/v16/services/bidding_strategy_service.proto!google.ads.googleads.v16.services9google/ads/googleads/v16/resources/bidding_strategy.protogoogle/api/annotations.protogoogle/api/client.protogoogle/api/field_behavior.protogoogle/api/resource.proto google/protobuf/field_mask.protogoogle/rpc/status.proto"�
MutateBiddingStrategiesRequest
customer_id (	B�AT

operations (2;.google.ads.googleads.v16.services.BiddingStrategyOperationB�A
partial_failure (

validate_only (j
response_content_type (2K.google.ads.googleads.v16.enums.ResponseContentTypeEnum.ResponseContentType"�
BiddingStrategyOperation/
update_mask (2.google.protobuf.FieldMaskE
create (23.google.ads.googleads.v16.resources.BiddingStrategyH E
update (23.google.ads.googleads.v16.resources.BiddingStrategyH ?
remove (	B-�A*
(googleads.googleapis.com/BiddingStrategyH B
	operation"�
MutateBiddingStrategiesResponse1
partial_failure_error (2.google.rpc.StatusO
results (2>.google.ads.googleads.v16.services.MutateBiddingStrategyResult"�
MutateBiddingStrategyResultD

resource_name (	B-�A*
(googleads.googleapis.com/BiddingStrategyM
bidding_strategy (23.google.ads.googleads.v16.resources.BiddingStrategy2�
BiddingStrategyService�
MutateBiddingStrategiesA.google.ads.googleads.v16.services.MutateBiddingStrategiesRequestB.google.ads.googleads.v16.services.MutateBiddingStrategiesResponse"[�Acustomer_id,operations���<"7/v16/customers/{customer_id=*}/biddingStrategies:mutate:*E�Agoogleads.googleapis.com�A\'https://www.googleapis.com/auth/adwordsB�
%com.google.ads.googleads.v16.servicesBBiddingStrategyServiceProtoPZIgoogle.golang.org/genproto/googleapis/ads/googleads/v16/services;services�GAA�!Google.Ads.GoogleAds.V16.Services�!Google\\Ads\\GoogleAds\\V16\\Services�%Google::Ads::GoogleAds::V16::Servicesbproto3'
            , true);
        static::$is_initialized = true;
    }
}

