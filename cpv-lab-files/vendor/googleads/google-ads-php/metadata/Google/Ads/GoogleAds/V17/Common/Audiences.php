<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v17/common/audiences.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V17\Common;

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
�
9google/ads/googleads/v17/enums/parental_status_type.protogoogle.ads.googleads.v17.enums"
ParentalStatusTypeEnum"e
ParentalStatusType
UNSPECIFIED 
UNKNOWN
PARENT�
NOT_A_PARENT�
UNDETERMINED�B�
"com.google.ads.googleads.v17.enumsBParentalStatusTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�
6google/ads/googleads/v17/enums/income_range_type.protogoogle.ads.googleads.v17.enums"�
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
"com.google.ads.googleads.v17.enumsBIncomeRangeTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�
0google/ads/googleads/v17/enums/gender_type.protogoogle.ads.googleads.v17.enums"d
GenderTypeEnum"R

GenderType
UNSPECIFIED 
UNKNOWN
MALE


FEMALE
UNDETERMINEDB�
"com.google.ads.googleads.v17.enumsBGenderTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�
/google/ads/googleads/v17/common/audiences.protogoogle.ads.googleads.v17.common6google/ads/googleads/v17/enums/income_range_type.proto9google/ads/googleads/v17/enums/parental_status_type.protogoogle/api/resource.proto"�
AudienceDimension<
age (2-.google.ads.googleads.v17.common.AgeDimensionH B
gender (20.google.ads.googleads.v17.common.GenderDimensionH U
household_income (29.google.ads.googleads.v17.common.HouseholdIncomeDimensionH S
parental_status (28.google.ads.googleads.v17.common.ParentalStatusDimensionH V
audience_segments (29.google.ads.googleads.v17.common.AudienceSegmentDimensionH B
	dimension"c
AudienceExclusionDimensionE

exclusions (21.google.ads.googleads.v17.common.ExclusionSegment"d
ExclusionSegmentE
	user_list (20.google.ads.googleads.v17.common.UserListSegmentH B	
segment"�
AgeDimension?

age_ranges (2+.google.ads.googleads.v17.common.AgeSegment!
include_undetermined (H �B
_include_undetermined"P

AgeSegment
min_age (H �
max_age (H�B

_min_ageB

_max_age"�
GenderDimensionJ
genders (29.google.ads.googleads.v17.enums.GenderTypeEnum.GenderType!
include_undetermined (H �B
_include_undetermined"�
HouseholdIncomeDimensionZ

income_ranges (2C.google.ads.googleads.v17.enums.IncomeRangeTypeEnum.IncomeRangeType!
include_undetermined (H �B
_include_undetermined"�
ParentalStatusDimensiond
parental_statuses (2I.google.ads.googleads.v17.enums.ParentalStatusTypeEnum.ParentalStatusType!
include_undetermined (H �B
_include_undetermined"^
AudienceSegmentDimensionB
segments (20.google.ads.googleads.v17.common.AudienceSegment"�
AudienceSegmentE
	user_list (20.google.ads.googleads.v17.common.UserListSegmentH M

user_interest (24.google.ads.googleads.v17.common.UserInterestSegmentH G

life_event (21.google.ads.googleads.v17.common.LifeEventSegmentH [
detailed_demographic (2;.google.ads.googleads.v17.common.DetailedDemographicSegmentH Q
custom_audience (26.google.ads.googleads.v17.common.CustomAudienceSegmentH B	
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
#com.google.ads.googleads.v17.commonBAudiencesProtoPZEgoogle.golang.org/genproto/googleapis/ads/googleads/v17/common;common�GAA�Google.Ads.GoogleAds.V17.Common�Google\\Ads\\GoogleAds\\V17\\Common�#Google::Ads::GoogleAds::V17::Commonbproto3'
            , true);
        static::$is_initialized = true;
    }
}

