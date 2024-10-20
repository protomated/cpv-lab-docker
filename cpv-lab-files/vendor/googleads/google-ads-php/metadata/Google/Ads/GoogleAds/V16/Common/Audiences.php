<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/common/audiences.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V16\Common;

class Audiences
{
    public static $is_initialized = false;

    public static function initOnce()
    {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();
        if (static::$is_initialized == true) {
            return;
        }
        \GPBMetadata\Google\Api\Resource::initOnce();
        $pool->internalAddGeneratedFile(
            '
�
6google/ads/googleads/v16/enums/income_range_type.protogoogle.ads.googleads.v16.enums"�
IncomeRangeTypeEnum"�
IncomeRangeType
UNSPECIFIED 
UNKNOWN
INCOME_RANGE_0_50��
INCOME_RANGE_50_60��
INCOME_RANGE_60_70��
INCOME_RANGE_70_80��
INCOME_RANGE_80_90��
INCOME_RANGE_90_UP��
INCOME_RANGE_UNDETERMINED��B�
"com.google.ads.googleads.v16.enumsBIncomeRangeTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
0google/ads/googleads/v16/enums/gender_type.protogoogle.ads.googleads.v16.enums"d
GenderTypeEnum"R

GenderType
UNSPECIFIED 
UNKNOWN
MALE


FEMALE
UNDETERMINEDB�
"com.google.ads.googleads.v16.enumsBGenderTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
9google/ads/googleads/v16/enums/parental_status_type.protogoogle.ads.googleads.v16.enums"
ParentalStatusTypeEnum"e
ParentalStatusType
UNSPECIFIED 
UNKNOWN
PARENT�
NOT_A_PARENT�
UNDETERMINED�B�
"com.google.ads.googleads.v16.enumsBParentalStatusTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
/google/ads/googleads/v16/common/audiences.protogoogle.ads.googleads.v16.common6google/ads/googleads/v16/enums/income_range_type.proto9google/ads/googleads/v16/enums/parental_status_type.protogoogle/api/resource.proto"�
AudienceDimension<
age (2-.google.ads.googleads.v16.common.AgeDimensionH B
gender (20.google.ads.googleads.v16.common.GenderDimensionH U
household_income (29.google.ads.googleads.v16.common.HouseholdIncomeDimensionH S
parental_status (28.google.ads.googleads.v16.common.ParentalStatusDimensionH V
audience_segments (29.google.ads.googleads.v16.common.AudienceSegmentDimensionH B
	dimension"c
AudienceExclusionDimensionE

exclusions (21.google.ads.googleads.v16.common.ExclusionSegment"d
ExclusionSegmentE
	user_list (20.google.ads.googleads.v16.common.UserListSegmentH B	
segment"�
AgeDimension?

age_ranges (2+.google.ads.googleads.v16.common.AgeSegment!
include_undetermined (H �B
_include_undetermined"P

AgeSegment
min_age (H �
max_age (H�B

_min_ageB

_max_age"�
GenderDimensionJ
genders (29.google.ads.googleads.v16.enums.GenderTypeEnum.GenderType!
include_undetermined (H �B
_include_undetermined"�
HouseholdIncomeDimensionZ

income_ranges (2C.google.ads.googleads.v16.enums.IncomeRangeTypeEnum.IncomeRangeType!
include_undetermined (H �B
_include_undetermined"�
ParentalStatusDimensiond
parental_statuses (2I.google.ads.googleads.v16.enums.ParentalStatusTypeEnum.ParentalStatusType!
include_undetermined (H �B
_include_undetermined"^
AudienceSegmentDimensionB
segments (20.google.ads.googleads.v16.common.AudienceSegment"�
AudienceSegmentE
	user_list (20.google.ads.googleads.v16.common.UserListSegmentH M

user_interest (24.google.ads.googleads.v16.common.UserInterestSegmentH G

life_event (21.google.ads.googleads.v16.common.LifeEventSegmentH [
detailed_demographic (2;.google.ads.googleads.v16.common.DetailedDemographicSegmentH Q
custom_audience (26.google.ads.googleads.v16.common.CustomAudienceSegmentH B	
segment"7
UserListSegment
	user_list (	H �B

_user_list"U
UserInterestSegment#
user_interest_category (	H �B
_user_interest_category"c
LifeEventSegment@

life_event (	B\'�A$
"googleads.googleapis.com/LifeEventH �B
_life_event"�
DetailedDemographicSegmentT
detailed_demographic (	B1�A.
,googleads.googleapis.com/DetailedDemographicH �B
_detailed_demographic"I
CustomAudienceSegment
custom_audience (	H �B
_custom_audienceB�
#com.google.ads.googleads.v16.commonBAudiencesProtoPZEgoogle.golang.org/genproto/googleapis/ads/googleads/v16/common;common�GAA�Google.Ads.GoogleAds.V16.Common�Google\\Ads\\GoogleAds\\V16\\Common�#Google::Ads::GoogleAds::V16::Commonbproto3'
            , true);
        static::$is_initialized = true;
    }
}

