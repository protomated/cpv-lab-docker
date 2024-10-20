<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/services/ad_group_service.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V15\Services;

class AdGroupService
{
    public static $is_initialized = false;

    public static function initOnce()
    {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();
        if (static::$is_initialized == true) {
            return;
        }
        \GPBMetadata\Google\Api\Resource::initOnce();
        \GPBMetadata\Google\Api\LaunchStage::initOnce();
        \GPBMetadata\Google\Protobuf\Duration::initOnce();
        \GPBMetadata\Google\Api\Client::initOnce();
        \GPBMetadata\Google\Api\FieldBehavior::initOnce();
        \GPBMetadata\Google\Protobuf\FieldMask::initOnce();
        \GPBMetadata\Google\Protobuf\Any::initOnce();
        \GPBMetadata\Google\Rpc\Status::initOnce();
        \GPBMetadata\Google\Api\Http::initOnce();
        \GPBMetadata\Google\Api\Annotations::initOnce();
        $pool->internalAddGeneratedFile(
            '
�
8google/ads/googleads/v15/enums/targeting_dimension.protogoogle.ads.googleads.v15.enums"�
TargetingDimensionEnum"�
TargetingDimension
UNSPECIFIED 
UNKNOWN
KEYWORD
AUDIENCE	
TOPIC

GENDER
	AGE_RANGE
	PLACEMENT
PARENTAL_STATUS
INCOME_RANGE	B�
"com.google.ads.googleads.v15.enumsBTargetingDimensionProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
4google/ads/googleads/v15/enums/ad_group_status.protogoogle.ads.googleads.v15.enums"h
AdGroupStatusEnum"S

AdGroupStatus
UNSPECIFIED 
UNKNOWN
ENABLED

PAUSED
REMOVEDB�
"com.google.ads.googleads.v15.enumsBAdGroupStatusProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
3google/ads/googleads/v15/enums/asset_set_type.protogoogle.ads.googleads.v15.enums"�
AssetSetTypeEnum"�
AssetSetType
UNSPECIFIED 
UNKNOWN
	PAGE_FEED
DYNAMIC_EDUCATION
MERCHANT_CENTER_FEED
DYNAMIC_REAL_ESTATE
DYNAMIC_CUSTOM
DYNAMIC_HOTELS_AND_RENTALS
DYNAMIC_FLIGHTS
DYNAMIC_TRAVEL	

DYNAMIC_LOCAL

DYNAMIC_JOBS

LOCATION_SYNC+
\'BUSINESS_PROFILE_DYNAMIC_LOCATION_GROUP
 
CHAIN_DYNAMIC_LOCATION_GROUP
STATIC_LOCATION_GROUP
HOTEL_PROPERTYB�
"com.google.ads.googleads.v15.enumsBAssetSetTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
>google/ads/googleads/v15/enums/ad_group_ad_rotation_mode.protogoogle.ads.googleads.v15.enums"t
AdGroupAdRotationModeEnum"W
AdGroupAdRotationMode
UNSPECIFIED 
UNKNOWN
OPTIMIZE
ROTATE_FOREVERB�
"com.google.ads.googleads.v15.enumsBAdGroupAdRotationModeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
2google/ads/googleads/v15/enums/ad_group_type.protogoogle.ads.googleads.v15.enums"�
AdGroupTypeEnum"�
AdGroupType
UNSPECIFIED 
UNKNOWN
SEARCH_STANDARD
DISPLAY_STANDARD
SHOPPING_PRODUCT_ADS
	HOTEL_ADS
SHOPPING_SMART_ADS
VIDEO_BUMPER
VIDEO_TRUE_VIEW_IN_STREAM	
VIDEO_TRUE_VIEW_IN_DISPLAY
!
VIDEO_NON_SKIPPABLE_IN_STREAM
VIDEO_OUTSTREAM
SEARCH_DYNAMIC_ADS
#
SHOPPING_COMPARISON_LISTING_ADS
PROMOTED_HOTEL_ADS
VIDEO_RESPONSIVE
VIDEO_EFFICIENT_REACH
SMART_CAMPAIGN_ADS

TRAVEL_ADSB�
"com.google.ads.googleads.v15.enumsBAdGroupTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
6google/ads/googleads/v15/common/custom_parameter.protogoogle.ads.googleads.v15.common"I
CustomParameter
key (	H �
value (	H�B
_keyB
_valueB�
#com.google.ads.googleads.v15.commonBCustomParameterProtoPZEgoogle.golang.org/genproto/googleapis/ads/googleads/v15/common;common�GAA�Google.Ads.GoogleAds.V15.Common�Google\\Ads\\GoogleAds\\V15\\Common�#Google::Ads::GoogleAds::V15::Commonbproto3
�
7google/ads/googleads/v15/common/targeting_setting.protogoogle.ads.googleads.v15.common"�
TargetingSettingO
target_restrictions (22.google.ads.googleads.v15.common.TargetRestrictionb
target_restriction_operations (2;.google.ads.googleads.v15.common.TargetRestrictionOperation"�
TargetRestrictionf
targeting_dimension (2I.google.ads.googleads.v15.enums.TargetingDimensionEnum.TargetingDimension
bid_only (H �B
	_bid_only"�
TargetRestrictionOperationV
operator (2D.google.ads.googleads.v15.common.TargetRestrictionOperation.OperatorA
value (22.google.ads.googleads.v15.common.TargetRestriction"=
Operator
UNSPECIFIED 
UNKNOWN
ADD

REMOVEB�
#com.google.ads.googleads.v15.commonBTargetingSettingProtoPZEgoogle.golang.org/genproto/googleapis/ads/googleads/v15/common;common�GAA�Google.Ads.GoogleAds.V15.Common�Google\\Ads\\GoogleAds\\V15\\Common�#Google::Ads::GoogleAds::V15::Commonbproto3
�
5google/ads/googleads/v15/enums/asset_field_type.protogoogle.ads.googleads.v15.enums"�
AssetFieldTypeEnum"�
AssetFieldType
UNSPECIFIED 
UNKNOWN
HEADLINE
DESCRIPTION
MANDATORY_AD_TEXT
MARKETING_IMAGE
MEDIA_BUNDLE

YOUTUBE_VIDEO
BOOK_ON_GOOGLE
	LEAD_FORM	
	PROMOTION

CALLOUT
STRUCTURED_SNIPPET
SITELINK


MOBILE_APP

HOTEL_CALLOUT
CALL	
PRICE

LONG_HEADLINE

BUSINESS_NAME
SQUARE_MARKETING_IMAGE
PORTRAIT_MARKETING_IMAGE
LOGO
LANDSCAPE_LOGO	
VIDEO
CALL_TO_ACTION_SELECTION
AD_IMAGE

BUSINESS_LOGO
HOTEL_PROPERTYB�
"com.google.ads.googleads.v15.enumsBAssetFieldTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
:google/ads/googleads/v15/enums/response_content_type.protogoogle.ads.googleads.v15.enums"o
ResponseContentTypeEnum"T
ResponseContentType
UNSPECIFIED 
RESOURCE_NAME_ONLY
MUTABLE_RESOURCEB�
"com.google.ads.googleads.v15.enumsBResponseContentTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
3google/ads/googleads/v15/enums/bidding_source.protogoogle.ads.googleads.v15.enums"�
BiddingSourceEnum"r

BiddingSource
UNSPECIFIED 
UNKNOWN
CAMPAIGN_BIDDING_STRATEGY
AD_GROUP
AD_GROUP_CRITERIONB�
"com.google.ads.googleads.v15.enumsBBiddingSourceProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
1google/ads/googleads/v15/resources/ad_group.proto"google.ads.googleads.v15.resources7google/ads/googleads/v15/common/targeting_setting.proto>google/ads/googleads/v15/enums/ad_group_ad_rotation_mode.proto4google/ads/googleads/v15/enums/ad_group_status.proto2google/ads/googleads/v15/enums/ad_group_type.proto5google/ads/googleads/v15/enums/asset_field_type.proto3google/ads/googleads/v15/enums/asset_set_type.proto3google/ads/googleads/v15/enums/bidding_source.proto8google/ads/googleads/v15/enums/targeting_dimension.protogoogle/api/field_behavior.protogoogle/api/resource.proto"�
AdGroup?

resource_name (	B(�A�A"
 googleads.googleapis.com/AdGroup
id" (B�AH �
name# (	H�O
status (2?.google.ads.googleads.v15.enums.AdGroupStatusEnum.AdGroupStatusN
type (2;.google.ads.googleads.v15.enums.AdGroupTypeEnum.AdGroupTypeB�Ai
ad_rotation_mode (2O.google.ads.googleads.v15.enums.AdGroupAdRotationModeEnum.AdGroupAdRotationModeD

base_ad_group$ (	B(�A�A"
 googleads.googleapis.com/AdGroupH�"
tracking_url_template% (	H�O
url_custom_parameters (20.google.ads.googleads.v15.common.CustomParameter@
campaign& (	B)�A�A#
!googleads.googleapis.com/CampaignH�
cpc_bid_micros\' (H�*
effective_cpc_bid_micros9 (B�AH�
cpm_bid_micros( (H�
target_cpa_micros) (H�
cpv_bid_micros* (H	�
target_cpm_micros+ (H
�
target_roas, (H�#
percent_cpc_bid_micros- (H�#
optimized_targeting_enabled; (o
display_custom_bid_dimension (2I.google.ads.googleads.v15.enums.TargetingDimensionEnum.TargetingDimension
final_url_suffix. (	H
�L
targeting_setting (21.google.ads.googleads.v15.common.TargetingSettingZ
audience_setting8 (2;.google.ads.googleads.v15.resources.AdGroup.AudienceSettingB�A-
effective_target_cpa_micros/ (B�AH�i
effective_target_cpa_source (2?.google.ads.googleads.v15.enums.BiddingSourceEnum.BiddingSourceB�A\'
effective_target_roas0 (B�AH�j
effective_target_roas_source  (2?.google.ads.googleads.v15.enums.BiddingSourceEnum.BiddingSourceB�A=
labels1 (	B-�A�A\'
%googleads.googleapis.com/AdGroupLabell
!excluded_parent_asset_field_types6 (2A.google.ads.googleads.v15.enums.AssetFieldTypeEnum.AssetFieldTypef
excluded_parent_asset_set_types: (2=.google.ads.googleads.v15.enums.AssetSetTypeEnum.AssetSetType4
AudienceSetting!
use_audience_grouped (B�A:U�AR
 googleads.googleapis.com/AdGroup.customers/{customer_id}/adGroups/{ad_group_id}B
_idB
_nameB
_base_ad_groupB
_tracking_url_templateB
	_campaignB
_cpc_bid_microsB
_effective_cpc_bid_microsB
_cpm_bid_microsB
_target_cpa_microsB
_cpv_bid_microsB
_target_cpm_microsB
_target_roasB
_percent_cpc_bid_microsB
_final_url_suffixB
_effective_target_cpa_microsB
_effective_target_roasB�
&com.google.ads.googleads.v15.resourcesBAdGroupProtoPZKgoogle.golang.org/genproto/googleapis/ads/googleads/v15/resources;resources�GAA�"Google.Ads.GoogleAds.V15.Resources�"Google\\Ads\\GoogleAds\\V15\\Resources�&Google::Ads::GoogleAds::V15::Resourcesbproto3
�
8google/ads/googleads/v15/services/ad_group_service.proto!google.ads.googleads.v15.services1google/ads/googleads/v15/resources/ad_group.protogoogle/api/annotations.protogoogle/api/client.protogoogle/api/field_behavior.protogoogle/api/resource.proto google/protobuf/field_mask.protogoogle/rpc/status.proto"�
MutateAdGroupsRequest
customer_id (	B�AL

operations (23.google.ads.googleads.v15.services.AdGroupOperationB�A
partial_failure (

validate_only (j
response_content_type (2K.google.ads.googleads.v15.enums.ResponseContentTypeEnum.ResponseContentType"�
AdGroupOperation/
update_mask (2.google.protobuf.FieldMask=
create (2+.google.ads.googleads.v15.resources.AdGroupH =
update (2+.google.ads.googleads.v15.resources.AdGroupH 7
remove (	B%�A"
 googleads.googleapis.com/AdGroupH B
	operation"�
MutateAdGroupsResponse1
partial_failure_error (2.google.rpc.StatusG
results (26.google.ads.googleads.v15.services.MutateAdGroupResult"�
MutateAdGroupResult<

resource_name (	B%�A"
 googleads.googleapis.com/AdGroup=
ad_group (2+.google.ads.googleads.v15.resources.AdGroup2�
AdGroupService�
MutateAdGroups8.google.ads.googleads.v15.services.MutateAdGroupsRequest9.google.ads.googleads.v15.services.MutateAdGroupsResponse"R���3"./v15/customers/{customer_id=*}/adGroups:mutate:*�Acustomer_id,operationsE�Agoogleads.googleapis.com�A\'https://www.googleapis.com/auth/adwordsB�
%com.google.ads.googleads.v15.servicesBAdGroupServiceProtoPZIgoogle.golang.org/genproto/googleapis/ads/googleads/v15/services;services�GAA�!Google.Ads.GoogleAds.V15.Services�!Google\\Ads\\GoogleAds\\V15\\Services�%Google::Ads::GoogleAds::V15::Servicesbproto3'
            , true);
        static::$is_initialized = true;
    }
}

