<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/resources/ad_group_bid_modifier.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V16\Resources;

class AdGroupBidModifier
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
�
4google/ads/googleads/v16/enums/product_channel.protogoogle.ads.googleads.v16.enums"[
ProductChannelEnum"E
ProductChannel
UNSPECIFIED 
UNKNOWN

ONLINE	
LOCALB�
"com.google.ads.googleads.v16.enumsBProductChannelProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
+google/ads/googleads/v16/enums/device.protogoogle.ads.googleads.v16.enums"v

DeviceEnum"h
Device
UNSPECIFIED 
UNKNOWN

MOBILE

TABLET
DESKTOP
CONNECTED_TV	
OTHERB�
"com.google.ads.googleads.v16.enumsBDeviceProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
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
�
Cgoogle/ads/googleads/v16/enums/product_custom_attribute_index.protogoogle.ads.googleads.v16.enums"�
ProductCustomAttributeIndexEnum"w
ProductCustomAttributeIndex
UNSPECIFIED 
UNKNOWN

INDEX0

INDEX1

INDEX2	

INDEX3


INDEX4B�
"com.google.ads.googleads.v16.enumsB ProductCustomAttributeIndexProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
0google/ads/googleads/v16/enums/day_of_week.protogoogle.ads.googleads.v16.enums"�

DayOfWeekEnum"�
	DayOfWeek
UNSPECIFIED 
UNKNOWN

MONDAY
TUESDAY
	WEDNESDAY
THURSDAY

FRIDAY
SATURDAY

SUNDAYB�
"com.google.ads.googleads.v16.enumsBDayOfWeekProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
7google/ads/googleads/v16/enums/content_label_type.protogoogle.ads.googleads.v16.enums"�
ContentLabelTypeEnum"�
ContentLabelType
UNSPECIFIED 
UNKNOWN
SEXUALLY_SUGGESTIVE
BELOW_THE_FOLD

PARKED_DOMAIN
JUVENILE
	PROFANITY
TRAGEDY	
VIDEO	
VIDEO_RATING_DV_G

VIDEO_RATING_DV_PG
VIDEO_RATING_DV_T
VIDEO_RATING_DV_MA

VIDEO_NOT_YET_RATED
EMBEDDED_VIDEO
LIVE_STREAMING_VIDEO

SOCIAL_ISSUESB�
"com.google.ads.googleads.v16.enumsBContentLabelTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
@google/ads/googleads/v16/enums/location_group_radius_units.protogoogle.ads.googleads.v16.enums"�
LocationGroupRadiusUnitsEnum"`
LocationGroupRadiusUnits
UNSPECIFIED 
UNKNOWN

METERS	
MILES
MILLI_MILESB�
"com.google.ads.googleads.v16.enumsBLocationGroupRadiusUnitsProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
;google/ads/googleads/v16/enums/app_payment_model_type.protogoogle.ads.googleads.v16.enums"X
AppPaymentModelTypeEnum"=
AppPaymentModelType
UNSPECIFIED 
UNKNOWN
PAIDB�
"com.google.ads.googleads.v16.enumsBAppPaymentModelTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
;google/ads/googleads/v16/enums/product_category_level.protogoogle.ads.googleads.v16.enums"�
ProductCategoryLevelEnum"p
ProductCategoryLevel
UNSPECIFIED 
UNKNOWN

LEVEL1

LEVEL2

LEVEL3

LEVEL4

LEVEL5B�
"com.google.ads.googleads.v16.enumsBProductCategoryLevelProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
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
5google/ads/googleads/v16/enums/interaction_type.protogoogle.ads.googleads.v16.enums"R
InteractionTypeEnum";
InteractionType
UNSPECIFIED 
UNKNOWN

CALLS�>B�
"com.google.ads.googleads.v16.enumsBInteractionTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
0google/ads/googleads/v16/enums/brand_state.protogoogle.ads.googleads.v16.enums"�
BrandStateEnum"�

BrandState
UNSPECIFIED 
UNKNOWN
ENABLED

DEPRECATED

UNVERIFIED
APPROVED
	CANCELLED
REJECTEDB�
"com.google.ads.googleads.v16.enumsBBrandStateProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
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
�
8google/ads/googleads/v16/enums/bid_modifier_source.protogoogle.ads.googleads.v16.enums"f
BidModifierSourceEnum"M
BidModifierSource
UNSPECIFIED 
UNKNOWN
CAMPAIGN
AD_GROUPB�
"com.google.ads.googleads.v16.enumsBBidModifierSourceProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
7google/ads/googleads/v16/enums/listing_group_type.protogoogle.ads.googleads.v16.enums"c
ListingGroupTypeEnum"K
ListingGroupType
UNSPECIFIED 
UNKNOWN
SUBDIVISION
UNITB�
"com.google.ads.googleads.v16.enumsBListingGroupTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
@google/ads/googleads/v16/enums/product_channel_exclusivity.protogoogle.ads.googleads.v16.enums"�
ProductChannelExclusivityEnum"`
ProductChannelExclusivity
UNSPECIFIED 
UNKNOWN
SINGLE_CHANNEL

MULTI_CHANNELB�
"com.google.ads.googleads.v16.enumsBProductChannelExclusivityProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
6google/ads/googleads/v16/enums/product_condition.protogoogle.ads.googleads.v16.enums"l
ProductConditionEnum"T
ProductCondition
UNSPECIFIED 
UNKNOWN
NEW
REFURBISHED
USEDB�
"com.google.ads.googleads.v16.enumsBProductConditionProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
;google/ads/googleads/v16/enums/proximity_radius_units.protogoogle.ads.googleads.v16.enums"k
ProximityRadiusUnitsEnum"O
ProximityRadiusUnits
UNSPECIFIED 
UNKNOWN	
MILES

KILOMETERSB�
"com.google.ads.googleads.v16.enumsBProximityRadiusUnitsProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
3google/ads/googleads/v16/enums/minute_of_hour.protogoogle.ads.googleads.v16.enums"s
MinuteOfHourEnum"_
MinuteOfHour
UNSPECIFIED 
UNKNOWN
ZERO
FIFTEEN

THIRTY

FORTY_FIVEB�
"com.google.ads.googleads.v16.enumsBMinuteOfHourProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
3google/ads/googleads/v16/enums/age_range_type.protogoogle.ads.googleads.v16.enums"�
AgeRangeTypeEnum"�
AgeRangeType
UNSPECIFIED 
UNKNOWN
AGE_RANGE_18_24��
AGE_RANGE_25_34��
AGE_RANGE_35_44��
AGE_RANGE_45_54��
AGE_RANGE_55_64��
AGE_RANGE_65_UP��
AGE_RANGE_UNDETERMINED��B�
"com.google.ads.googleads.v16.enumsBAgeRangeTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
>google/ads/googleads/v16/enums/hotel_date_selection_type.protogoogle.ads.googleads.v16.enums"~
HotelDateSelectionTypeEnum"`
HotelDateSelectionType
UNSPECIFIED 
UNKNOWN
DEFAULT_SELECTION2

USER_SELECTED3B�
"com.google.ads.googleads.v16.enumsBHotelDateSelectionTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
7google/ads/googleads/v16/enums/product_type_level.protogoogle.ads.googleads.v16.enums"�
ProductTypeLevelEnum"l
ProductTypeLevel
UNSPECIFIED 
UNKNOWN

LEVEL1

LEVEL2

LEVEL3	

LEVEL4


LEVEL5B�
"com.google.ads.googleads.v16.enumsBProductTypeLevelProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
>google/ads/googleads/v16/enums/webpage_condition_operand.protogoogle.ads.googleads.v16.enums"�
WebpageConditionOperandEnum"�
WebpageConditionOperand
UNSPECIFIED 
UNKNOWN
URL
CATEGORY

PAGE_TITLE
PAGE_CONTENT
CUSTOM_LABELB�
"com.google.ads.googleads.v16.enumsBWebpageConditionOperandProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
?google/ads/googleads/v16/enums/webpage_condition_operator.protogoogle.ads.googleads.v16.enums"r
WebpageConditionOperatorEnum"R
WebpageConditionOperator
UNSPECIFIED 
UNKNOWN

EQUALS
CONTAINSB�
"com.google.ads.googleads.v16.enumsBWebpageConditionOperatorProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
7google/ads/googleads/v16/enums/keyword_match_type.protogoogle.ads.googleads.v16.enums"j
KeywordMatchTypeEnum"R
KeywordMatchType
UNSPECIFIED 
UNKNOWN	
EXACT

PHRASE	
BROADB�
"com.google.ads.googleads.v16.enumsBKeywordMatchTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
Cgoogle/ads/googleads/v16/enums/brand_request_rejection_reason.protogoogle.ads.googleads.v16.enums"�
BrandRequestRejectionReasonEnum"�
BrandRequestRejectionReason
UNSPECIFIED 
UNKNOWN
EXISTING_BRAND
EXISTING_BRAND_VARIANT
INCORRECT_INFORMATION
NOT_A_BRANDB�
"com.google.ads.googleads.v16.enumsB BrandRequestRejectionReasonProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�\\
.google/ads/googleads/v16/common/criteria.protogoogle.ads.googleads.v16.common;google/ads/googleads/v16/enums/app_payment_model_type.protoCgoogle/ads/googleads/v16/enums/brand_request_rejection_reason.proto0google/ads/googleads/v16/enums/brand_state.proto7google/ads/googleads/v16/enums/content_label_type.proto0google/ads/googleads/v16/enums/day_of_week.proto+google/ads/googleads/v16/enums/device.proto0google/ads/googleads/v16/enums/gender_type.proto>google/ads/googleads/v16/enums/hotel_date_selection_type.proto6google/ads/googleads/v16/enums/income_range_type.proto5google/ads/googleads/v16/enums/interaction_type.proto7google/ads/googleads/v16/enums/keyword_match_type.proto7google/ads/googleads/v16/enums/listing_group_type.proto@google/ads/googleads/v16/enums/location_group_radius_units.proto3google/ads/googleads/v16/enums/minute_of_hour.proto9google/ads/googleads/v16/enums/parental_status_type.proto;google/ads/googleads/v16/enums/product_category_level.proto4google/ads/googleads/v16/enums/product_channel.proto@google/ads/googleads/v16/enums/product_channel_exclusivity.proto6google/ads/googleads/v16/enums/product_condition.protoCgoogle/ads/googleads/v16/enums/product_custom_attribute_index.proto7google/ads/googleads/v16/enums/product_type_level.proto;google/ads/googleads/v16/enums/proximity_radius_units.proto>google/ads/googleads/v16/enums/webpage_condition_operand.proto?google/ads/googleads/v16/enums/webpage_condition_operator.protogoogle/api/field_behavior.protogoogle/api/resource.proto"�
KeywordInfo
text (	H �Y

match_type (2E.google.ads.googleads.v16.enums.KeywordMatchTypeEnum.KeywordMatchTypeB
_text")

PlacementInfo
url (	H �B
_url"A
NegativeKeywordListInfo

shared_set (	H �B
_shared_set"�
MobileAppCategoryInfob
mobile_app_category_constant (	B7�A4
2googleads.googleapis.com/MobileAppCategoryConstantH �B
_mobile_app_category_constant"S
MobileApplicationInfo
app_id (	H �
name (	H�B	
_app_idB
_name"H
LocationInfo 
geo_target_constant (	H �B
_geo_target_constant"M

DeviceInfo?
type (21.google.ads.googleads.v16.enums.DeviceEnum.Device"�
ListingGroupInfoS
type (2E.google.ads.googleads.v16.enums.ListingGroupTypeEnum.ListingGroupTypeI

case_value (25.google.ads.googleads.v16.common.ListingDimensionInfo&
parent_ad_group_criterion (	H �H
path (25.google.ads.googleads.v16.common.ListingDimensionPathH�B
_parent_ad_group_criterionB
_path"a
ListingDimensionPathI

dimensions (25.google.ads.googleads.v16.common.ListingDimensionInfo"]
ListingScopeInfoI

dimensions (25.google.ads.googleads.v16.common.ListingDimensionInfo"�
ListingDimensionInfo@
hotel_id (2,.google.ads.googleads.v16.common.HotelIdInfoH F
hotel_class (2/.google.ads.googleads.v16.common.HotelClassInfoH W
hotel_country_region (27.google.ads.googleads.v16.common.HotelCountryRegionInfoH F
hotel_state (2/.google.ads.googleads.v16.common.HotelStateInfoH D

hotel_city (2..google.ads.googleads.v16.common.HotelCityInfoH P
product_category (24.google.ads.googleads.v16.common.ProductCategoryInfoH J

product_brand (21.google.ads.googleads.v16.common.ProductBrandInfoH N
product_channel (23.google.ads.googleads.v16.common.ProductChannelInfoH e
product_channel_exclusivity	 (2>.google.ads.googleads.v16.common.ProductChannelExclusivityInfoH R
product_condition
 (25.google.ads.googleads.v16.common.ProductConditionInfoH _
product_custom_attribute (2;.google.ads.googleads.v16.common.ProductCustomAttributeInfoH M
product_item_id (22.google.ads.googleads.v16.common.ProductItemIdInfoH H
product_type (20.google.ads.googleads.v16.common.ProductTypeInfoH P
product_grouping (24.google.ads.googleads.v16.common.ProductGroupingInfoH L
product_labels (22.google.ads.googleads.v16.common.ProductLabelsInfoH _
product_legacy_condition (2;.google.ads.googleads.v16.common.ProductLegacyConditionInfoH Q
product_type_full (24.google.ads.googleads.v16.common.ProductTypeFullInfoH F
activity_id (2/.google.ads.googleads.v16.common.ActivityIdInfoH N
activity_rating (23.google.ads.googleads.v16.common.ActivityRatingInfoH P
activity_country (24.google.ads.googleads.v16.common.ActivityCountryInfoH L
activity_state (22.google.ads.googleads.v16.common.ActivityStateInfoH J

activity_city (21.google.ads.googleads.v16.common.ActivityCityInfoH a
unknown_listing_dimension (2<.google.ads.googleads.v16.common.UnknownListingDimensionInfoH B
	dimension"+
HotelIdInfo
value (	H �B
_value".
HotelClassInfo
value (H �B
_value"\\
HotelCountryRegionInfo%
country_region_criterion (	H �B
_country_region_criterion"B
HotelStateInfo
state_criterion (	H �B
_state_criterion"?

HotelCityInfo
city_criterion (	H �B
_city_criterion"�
ProductCategoryInfo
category_id (H �\\
level (2M.google.ads.googleads.v16.enums.ProductCategoryLevelEnum.ProductCategoryLevelB
_category_id"0
ProductBrandInfo
value (	H �B
_value"h
ProductChannelInfoR
channel (2A.google.ads.googleads.v16.enums.ProductChannelEnum.ProductChannel"�
ProductChannelExclusivityInfot
channel_exclusivity (2W.google.ads.googleads.v16.enums.ProductChannelExclusivityEnum.ProductChannelExclusivity"p
ProductConditionInfoX
	condition (2E.google.ads.googleads.v16.enums.ProductConditionEnum.ProductCondition"�
ProductCustomAttributeInfo
value (	H �j
index (2[.google.ads.googleads.v16.enums.ProductCustomAttributeIndexEnum.ProductCustomAttributeIndexB
_value"1
ProductItemIdInfo
value (	H �B
_value"�
ProductTypeInfo
value (	H �T
level (2E.google.ads.googleads.v16.enums.ProductTypeLevelEnum.ProductTypeLevelB
_value"3
ProductGroupingInfo
value (	H �B
_value"1
ProductLabelsInfo
value (	H �B
_value":
ProductLegacyConditionInfo
value (	H �B
_value"3
ProductTypeFullInfo
value (	H �B
_value"
UnknownListingDimensionInfo"}
HotelDateSelectionTypeInfo_
type (2Q.google.ads.googleads.v16.enums.HotelDateSelectionTypeEnum.HotelDateSelectionType"g
HotelAdvanceBookingWindowInfo
min_days (H �
max_days (H�B
	_min_daysB
	_max_days"g
HotelLengthOfStayInfo

min_nights (H �

max_nights (H�B
_min_nightsB
_max_nights"A
HotelCheckInDateRangeInfo

start_date (	
end_date (	"c
HotelCheckInDayInfoL
day_of_week (27.google.ads.googleads.v16.enums.DayOfWeekEnum.DayOfWeek".
ActivityIdInfo
value (	H �B
_value"2
ActivityRatingInfo
value (H �B
_value"3
ActivityCountryInfo
value (	H �B
_value"1
ActivityStateInfo
value (	H �B
_value"0
ActivityCityInfo
value (	H �B
_value"h
InteractionTypeInfoQ
type (2C.google.ads.googleads.v16.enums.InteractionTypeEnum.InteractionType"�
AdScheduleInfoS
start_minute (2=.google.ads.googleads.v16.enums.MinuteOfHourEnum.MinuteOfHourQ

end_minute (2=.google.ads.googleads.v16.enums.MinuteOfHourEnum.MinuteOfHour

start_hour (H �
end_hour (H�L
day_of_week (27.google.ads.googleads.v16.enums.DayOfWeekEnum.DayOfWeekB
_start_hourB
	_end_hour"[
AgeRangeInfoK
type (2=.google.ads.googleads.v16.enums.AgeRangeTypeEnum.AgeRangeType"U

GenderInfoG
type (29.google.ads.googleads.v16.enums.GenderTypeEnum.GenderType"d
IncomeRangeInfoQ
type (2C.google.ads.googleads.v16.enums.IncomeRangeTypeEnum.IncomeRangeType"m
ParentalStatusInfoW
type (2I.google.ads.googleads.v16.enums.ParentalStatusTypeEnum.ParentalStatusType"6
YouTubeVideoInfo
video_id (	H �B
	_video_id"<
YouTubeChannelInfo

channel_id (	H �B
_channel_id"4
UserListInfo
	user_list (	H �B

_user_list"�

ProximityInfo@
	geo_point (2-.google.ads.googleads.v16.common.GeoPointInfo
radius (H �c
radius_units (2M.google.ads.googleads.v16.enums.ProximityRadiusUnitsEnum.ProximityRadiusUnits=
address (2,.google.ads.googleads.v16.common.AddressInfoB	
_radius"�
GeoPointInfo\'
longitude_in_micro_degrees (H �&
latitude_in_micro_degrees (H�B
_longitude_in_micro_degreesB
_latitude_in_micro_degrees"�
AddressInfo
postal_code (	H �

province_code	 (	H�
country_code
 (	H�

province_name (	H�
street_address (	H�
street_address2
 (	H�
	city_name (	H�B
_postal_codeB
_province_codeB

_country_codeB
_province_nameB
_street_addressB
_street_address2B

_city_name"v
	TopicInfoH
topic_constant (	B+�A(
&googleads.googleapis.com/TopicConstantH �
path (	B
_topic_constant"D
LanguageInfo
language_constant (	H �B
_language_constant"5
IpBlockInfo

ip_address (	H �B
_ip_address"g
ContentLabelInfoS
type (2E.google.ads.googleads.v16.enums.ContentLabelTypeEnum.ContentLabelType"p
CarrierInfoL
carrier_constant (	B-�A*
(googleads.googleapis.com/CarrierConstantH �B
_carrier_constant"R
UserInterestInfo#
user_interest_category (	H �B
_user_interest_category"�
WebpageInfo
criterion_name (	H �I

conditions (25.google.ads.googleads.v16.common.WebpageConditionInfo
coverage_percentage (B
sample (22.google.ads.googleads.v16.common.WebpageSampleInfoB
_criterion_name"�
WebpageConditionInfod
operand (2S.google.ads.googleads.v16.enums.WebpageConditionOperandEnum.WebpageConditionOperandg
operator (2U.google.ads.googleads.v16.enums.WebpageConditionOperatorEnum.WebpageConditionOperator
argument (	H �B
	_argument"(
WebpageSampleInfo
sample_urls (	"�
OperatingSystemVersionInfol
!operating_system_version_constant (	B<�A9
7googleads.googleapis.com/OperatingSystemVersionConstantH �B$
"_operating_system_version_constant"p
AppPaymentModelInfoY
type (2K.google.ads.googleads.v16.enums.AppPaymentModelTypeEnum.AppPaymentModelType"�
MobileDeviceInfoW
mobile_device_constant (	B2�A/
-googleads.googleapis.com/MobileDeviceConstantH �B
_mobile_device_constant"F
CustomAffinityInfo
custom_affinity (	H �B
_custom_affinity"@
CustomIntentInfo

custom_intent (	H �B
_custom_intent"�
LocationGroupInfo
feed (	H �
geo_target_constants (	
radius (H�k
radius_units (2U.google.ads.googleads.v16.enums.LocationGroupRadiusUnitsEnum.LocationGroupRadiusUnits
feed_item_sets (	5
(enable_customer_level_location_asset_set	 (H�!
location_group_asset_sets
 (	B
_feedB	
_radiusB+
)_enable_customer_level_location_asset_set"-
CustomAudienceInfo
custom_audience (	"a
CombinedAudienceInfoI
combined_audience (	B.�A+
)googleads.googleapis.com/CombinedAudience" 
AudienceInfo
audience (	"�
KeywordThemeInfoT
keyword_theme_constant (	B2�A/
-googleads.googleapis.com/KeywordThemeConstantH !
free_form_keyword_theme (	H B

keyword_theme"(
LocalServiceIdInfo

service_id (	"
SearchThemeInfo
text (	"�
	BrandInfo
display_name (	B�AH �
	entity_id (	H�
primary_url (	B�AH�
rejection_reason (2[.google.ads.googleads.v16.enums.BrandRequestRejectionReasonEnum.BrandRequestRejectionReasonB�AH�S
status (29.google.ads.googleads.v16.enums.BrandStateEnum.BrandStateB�AH�B

_display_nameB

_entity_idB
_primary_urlB
_rejection_reasonB	
_status"7

BrandListInfo

shared_set (	H �B
_shared_setB�
#com.google.ads.googleads.v16.commonB
CriteriaProtoPZEgoogle.golang.org/genproto/googleapis/ads/googleads/v16/common;common�GAA�Google.Ads.GoogleAds.V16.Common�Google\\Ads\\GoogleAds\\V16\\Common�#Google::Ads::GoogleAds::V16::Commonbproto3
�
>google/ads/googleads/v16/resources/ad_group_bid_modifier.proto"google.ads.googleads.v16.resources8google/ads/googleads/v16/enums/bid_modifier_source.protogoogle/api/field_behavior.protogoogle/api/resource.proto"�	
AdGroupBidModifierJ

resource_name (	B3�A�A-
+googleads.googleapis.com/AdGroupBidModifier?
ad_group
 (	B(�A�A"
 googleads.googleapis.com/AdGroupH�
criterion_id (B�AH�
bid_modifier (H�D

base_ad_group (	B(�A�A"
 googleads.googleapis.com/AdGroupH�i
bid_modifier_source
 (2G.google.ads.googleads.v16.enums.BidModifierSourceEnum.BidModifierSourceB�Ae
hotel_date_selection_type (2;.google.ads.googleads.v16.common.HotelDateSelectionTypeInfoB�AH k
hotel_advance_booking_window (2>.google.ads.googleads.v16.common.HotelAdvanceBookingWindowInfoB�AH [
hotel_length_of_stay (26.google.ads.googleads.v16.common.HotelLengthOfStayInfoB�AH W
hotel_check_in_day (24.google.ads.googleads.v16.common.HotelCheckInDayInfoB�AH B
device (2+.google.ads.googleads.v16.common.DeviceInfoB�AH d
hotel_check_in_date_range (2:.google.ads.googleads.v16.common.HotelCheckInDateRangeInfoB�AH :z�Aw
+googleads.googleapis.com/AdGroupBidModifierHcustomers/{customer_id}/adGroupBidModifiers/{ad_group_id}~{criterion_id}B
	criterionB
	_ad_groupB

_criterion_idB

_bid_modifierB
_base_ad_groupB�
&com.google.ads.googleads.v16.resourcesBAdGroupBidModifierProtoPZKgoogle.golang.org/genproto/googleapis/ads/googleads/v16/resources;resources�GAA�"Google.Ads.GoogleAds.V16.Resources�"Google\\Ads\\GoogleAds\\V16\\Resources�&Google::Ads::GoogleAds::V16::Resourcesbproto3'
            , true);
        static::$is_initialized = true;
    }
}

