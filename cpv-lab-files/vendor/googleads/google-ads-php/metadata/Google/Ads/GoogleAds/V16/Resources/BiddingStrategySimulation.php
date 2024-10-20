<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/resources/bidding_strategy_simulation.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V16\Resources;

class BiddingStrategySimulation
{
    public static $is_initialized = false;

    public static function initOnce()
    {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();
        if (static::$is_initialized == true) {
            return;
        }
        \GPBMetadata\Google\Api\Resource::initOnce();
        \GPBMetadata\Google\Api\FieldBehavior::initOnce();
        $pool->internalAddGeneratedFile(
            '
�
Cgoogle/ads/googleads/v16/enums/simulation_modification_method.protogoogle.ads.googleads.v16.enums"�
 SimulationModificationMethodEnum"c
SimulationModificationMethod
UNSPECIFIED 
UNKNOWN
UNIFORM
DEFAULT
SCALINGB�
"com.google.ads.googleads.v16.enumsB!SimulationModificationMethodProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
0google/ads/googleads/v16/common/simulation.protogoogle.ads.googleads.v16.common"c
CpcBidSimulationPointListF
points (26.google.ads.googleads.v16.common.CpcBidSimulationPoint"c
CpvBidSimulationPointListF
points (26.google.ads.googleads.v16.common.CpvBidSimulationPoint"i
TargetCpaSimulationPointListI
points (29.google.ads.googleads.v16.common.TargetCpaSimulationPoint"k
TargetRoasSimulationPointListJ
points (2:.google.ads.googleads.v16.common.TargetRoasSimulationPoint"q
 PercentCpcBidSimulationPointListM
points (2=.google.ads.googleads.v16.common.PercentCpcBidSimulationPoint"c
BudgetSimulationPointListF
points (26.google.ads.googleads.v16.common.BudgetSimulationPoint"�
(TargetImpressionShareSimulationPointListU
points (2E.google.ads.googleads.v16.common.TargetImpressionShareSimulationPoint"�
CpcBidSimulationPoint%
required_budget_amount_micros (!
biddable_conversions	 (H�\'
biddable_conversions_value
 (H�
clicks (H�
cost_micros (H�
impressions
 (H�!
top_slot_impressions (H�
cpc_bid_micros (H "
cpc_bid_scaling_modifier (H B
cpc_simulation_key_valueB
_biddable_conversionsB
_biddable_conversions_valueB	
_clicksB
_cost_microsB
_impressionsB
_top_slot_impressions"�
CpvBidSimulationPoint
cpv_bid_micros (H �
cost_micros (H�
impressions (H�
views (H�B
_cpv_bid_microsB
_cost_microsB
_impressionsB
_views"�
TargetCpaSimulationPoint%
required_budget_amount_micros (!
biddable_conversions	 (H�\'
biddable_conversions_value
 (H�
app_installs (
in_app_actions (
clicks (H�
cost_micros (H�
impressions
 (H�!
top_slot_impressions (H�
interactions (H�
target_cpa_micros (H %
target_cpa_scaling_modifier (H B!
target_cpa_simulation_key_valueB
_biddable_conversionsB
_biddable_conversions_valueB	
_clicksB
_cost_microsB
_impressionsB
_top_slot_impressionsB

_interactions"�
TargetRoasSimulationPoint
target_roas (H �%
required_budget_amount_micros (!
biddable_conversions	 (H�\'
biddable_conversions_value
 (H�
clicks (H�
cost_micros (H�
impressions
 (H�!
top_slot_impressions (H�B
_target_roasB
_biddable_conversionsB
_biddable_conversions_valueB	
_clicksB
_cost_microsB
_impressionsB
_top_slot_impressions"�
PercentCpcBidSimulationPoint#
percent_cpc_bid_micros (H �!
biddable_conversions (H�\'
biddable_conversions_value (H�
clicks (H�
cost_micros (H�
impressions (H�!
top_slot_impressions (H�B
_percent_cpc_bid_microsB
_biddable_conversionsB
_biddable_conversions_valueB	
_clicksB
_cost_microsB
_impressionsB
_top_slot_impressions"�
BudgetSimulationPoint
budget_amount_micros (\'
required_cpc_bid_ceiling_micros (
biddable_conversions ("
biddable_conversions_value (
clicks (
cost_micros (
impressions (
top_slot_impressions (
interactions	 ("�
$TargetImpressionShareSimulationPoint&
target_impression_share_micros (\'
required_cpc_bid_ceiling_micros (%
required_budget_amount_micros (
biddable_conversions ("
biddable_conversions_value (
clicks (
cost_micros (
impressions (
top_slot_impressions	 ( 
absolute_top_impressions
 (B�
#com.google.ads.googleads.v16.commonBSimulationProtoPZEgoogle.golang.org/genproto/googleapis/ads/googleads/v16/common;common�GAA�Google.Ads.GoogleAds.V16.Common�Google\\Ads\\GoogleAds\\V16\\Common�#Google::Ads::GoogleAds::V16::Commonbproto3
�
4google/ads/googleads/v16/enums/simulation_type.protogoogle.ads.googleads.v16.enums"�
SimulationTypeEnum"�
SimulationType
UNSPECIFIED 
UNKNOWN
CPC_BID
CPV_BID

TARGET_CPA
BID_MODIFIER
TARGET_ROAS
PERCENT_CPC_BID
TARGET_IMPRESSION_SHARE

BUDGET	B�
"com.google.ads.googleads.v16.enumsBSimulationTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�

Dgoogle/ads/googleads/v16/resources/bidding_strategy_simulation.proto"google.ads.googleads.v16.resourcesCgoogle/ads/googleads/v16/enums/simulation_modification_method.proto4google/ads/googleads/v16/enums/simulation_type.protogoogle/api/field_behavior.protogoogle/api/resource.proto"�
BiddingStrategySimulationQ

resource_name (	B:�A�A4
2googleads.googleapis.com/BiddingStrategySimulation 
bidding_strategy_id (B�AT
type (2A.google.ads.googleads.v16.enums.SimulationTypeEnum.SimulationTypeB�A
modification_method (2].google.ads.googleads.v16.enums.SimulationModificationMethodEnum.SimulationModificationMethodB�A

start_date (	B�A
end_date (	B�Ac
target_cpa_point_list (2=.google.ads.googleads.v16.common.TargetCpaSimulationPointListB�AH e
target_roas_point_list (2>.google.ads.googleads.v16.common.TargetRoasSimulationPointListB�AH :��A�
2googleads.googleapis.com/BiddingStrategySimulation}customers/{customer_id}/biddingStrategySimulations/{bidding_strategy_id}~{type}~{modification_method}~{start_date}~{end_date}B

point_listB�
&com.google.ads.googleads.v16.resourcesBBiddingStrategySimulationProtoPZKgoogle.golang.org/genproto/googleapis/ads/googleads/v16/resources;resources�GAA�"Google.Ads.GoogleAds.V16.Resources�"Google\\Ads\\GoogleAds\\V16\\Resources�&Google::Ads::GoogleAds::V16::Resourcesbproto3'
            , true);
        static::$is_initialized = true;
    }
}

