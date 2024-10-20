<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/resources/ad_group_ad_asset_view.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V15\Resources;

class AdGroupAdAssetView
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
�
Ygoogle/ads/googleads/v15/enums/policy_topic_evidence_destination_not_working_device.protogoogle.ads.googleads.v15.enums"�
2PolicyTopicEvidenceDestinationNotWorkingDeviceEnum"q
.PolicyTopicEvidenceDestinationNotWorkingDevice
UNSPECIFIED 
UNKNOWN
DESKTOP
ANDROID
IOSB�
"com.google.ads.googleads.v15.enumsB3PolicyTopicEvidenceDestinationNotWorkingDeviceProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
agoogle/ads/googleads/v15/enums/policy_topic_evidence_destination_not_working_dns_error_type.protogoogle.ads.googleads.v15.enums"�
8PolicyTopicEvidenceDestinationNotWorkingDnsErrorTypeEnum"�
4PolicyTopicEvidenceDestinationNotWorkingDnsErrorType
UNSPECIFIED 
UNKNOWN
HOSTNAME_NOT_FOUND
GOOGLE_CRAWLER_DNS_ISSUEB�
"com.google.ads.googleads.v15.enumsB9PolicyTopicEvidenceDestinationNotWorkingDnsErrorTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
1google/ads/googleads/v15/enums/asset_source.protogoogle.ads.googleads.v15.enums"i
AssetSourceEnum"V
AssetSource
UNSPECIFIED 
UNKNOWN

ADVERTISER
AUTOMATICALLY_CREATEDB�
"com.google.ads.googleads.v15.enumsBAssetSourceProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
<google/ads/googleads/v15/enums/served_asset_field_type.protogoogle.ads.googleads.v15.enums"�
ServedAssetFieldTypeEnum"�
ServedAssetFieldType
UNSPECIFIED 
UNKNOWN

HEADLINE_1

HEADLINE_2

HEADLINE_3

DESCRIPTION_1

DESCRIPTION_2
HEADLINE
HEADLINE_IN_PORTRAIT

LONG_HEADLINE	
DESCRIPTION

DESCRIPTION_IN_PORTRAIT
BUSINESS_NAME_IN_PORTRAIT

BUSINESS_NAME

MARKETING_IMAGE
MARKETING_IMAGE_IN_PORTRAIT
SQUARE_MARKETING_IMAGE
PORTRAIT_MARKETING_IMAGE
LOGO
LANDSCAPE_LOGO
CALL_TO_ACTION
YOU_TUBE_VIDEO
SITELINK
CALL

MOBILE_APP
CALLOUT
STRUCTURED_SNIPPET	
PRICE
	PROMOTION
AD_IMAGE
	LEAD_FORM

BUSINESS_LOGOB�
"com.google.ads.googleads.v15.enumsBServedAssetFieldTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
9google/ads/googleads/v15/enums/policy_review_status.protogoogle.ads.googleads.v15.enums"�
PolicyReviewStatusEnum"�
PolicyReviewStatus
UNSPECIFIED 
UNKNOWN
REVIEW_IN_PROGRESS
REVIEWED
UNDER_APPEAL
ELIGIBLE_MAY_SERVEB�
"com.google.ads.googleads.v15.enumsBPolicyReviewStatusProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
<google/ads/googleads/v15/enums/policy_topic_entry_type.protogoogle.ads.googleads.v15.enums"�
PolicyTopicEntryTypeEnum"�
PolicyTopicEntryType
UNSPECIFIED 
UNKNOWN

PROHIBITED
LIMITED

FULLY_LIMITED
DESCRIPTIVE

BROADENING
AREA_OF_INTEREST_ONLYB�
"com.google.ads.googleads.v15.enumsBPolicyTopicEntryTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
Xgoogle/ads/googleads/v15/enums/policy_topic_evidence_destination_mismatch_url_type.protogoogle.ads.googleads.v15.enums"�
1PolicyTopicEvidenceDestinationMismatchUrlTypeEnum"�
-PolicyTopicEvidenceDestinationMismatchUrlType
UNSPECIFIED 
UNKNOWN
DISPLAY_URL
	FINAL_URL
FINAL_MOBILE_URL
TRACKING_URL
MOBILE_TRACKING_URLB�
"com.google.ads.googleads.v15.enumsB2PolicyTopicEvidenceDestinationMismatchUrlTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
,google/ads/googleads/v15/common/policy.protogoogle.ads.googleads.v15.commonXgoogle/ads/googleads/v15/enums/policy_topic_evidence_destination_mismatch_url_type.protoYgoogle/ads/googleads/v15/enums/policy_topic_evidence_destination_not_working_device.protoagoogle/ads/googleads/v15/enums/policy_topic_evidence_destination_not_working_dns_error_type.proto"n
PolicyViolationKey
policy_name (	H �
violating_text (	H�B
_policy_nameB
_violating_text"�
PolicyValidationParameter
ignorable_policy_topics (	Y
exempt_policy_violation_keys (23.google.ads.googleads.v15.common.PolicyViolationKey"�
PolicyTopicEntry
topic (	H �[
type (2M.google.ads.googleads.v15.enums.PolicyTopicEntryTypeEnum.PolicyTopicEntryTypeG
	evidences (24.google.ads.googleads.v15.common.PolicyTopicEvidenceK
constraints (26.google.ads.googleads.v15.common.PolicyTopicConstraintB
_topic"�

PolicyTopicEvidenceX
website_list (2@.google.ads.googleads.v15.common.PolicyTopicEvidence.WebsiteListH R
	text_list (2=.google.ads.googleads.v15.common.PolicyTopicEvidence.TextListH 

language_code	 (	H i
destination_text_list (2H.google.ads.googleads.v15.common.PolicyTopicEvidence.DestinationTextListH h
destination_mismatch (2H.google.ads.googleads.v15.common.PolicyTopicEvidence.DestinationMismatchH m
destination_not_working (2J.google.ads.googleads.v15.common.PolicyTopicEvidence.DestinationNotWorkingH 
TextList
texts (	
WebsiteList
websites (	0
DestinationTextList
destination_texts (	�
DestinationMismatch�
	url_types (2.google.ads.googleads.v15.enums.PolicyTopicEvidenceDestinationMismatchUrlTypeEnum.PolicyTopicEvidenceDestinationMismatchUrlType�
DestinationNotWorking
expanded_url (	H��
device (2�.google.ads.googleads.v15.enums.PolicyTopicEvidenceDestinationNotWorkingDeviceEnum.PolicyTopicEvidenceDestinationNotWorkingDevice#
last_checked_date_time (	H��
dns_error_type (2�.google.ads.googleads.v15.enums.PolicyTopicEvidenceDestinationNotWorkingDnsErrorTypeEnum.PolicyTopicEvidenceDestinationNotWorkingDnsErrorTypeH 
http_error_code (H B
reasonB

_expanded_urlB
_last_checked_date_timeB
value"�
PolicyTopicConstrainto
country_constraint_list (2L.google.ads.googleads.v15.common.PolicyTopicConstraint.CountryConstraintListH h
reseller_constraint (2I.google.ads.googleads.v15.common.PolicyTopicConstraint.ResellerConstraintH {
#certificate_missing_in_country_list (2L.google.ads.googleads.v15.common.PolicyTopicConstraint.CountryConstraintListH �
+certificate_domain_mismatch_in_country_list (2L.google.ads.googleads.v15.common.PolicyTopicConstraint.CountryConstraintListH �
CountryConstraintList%
total_targeted_countries (H �[
	countries (2H.google.ads.googleads.v15.common.PolicyTopicConstraint.CountryConstraintB
_total_targeted_countries
ResellerConstraintI
CountryConstraint
country_criterion (	H �B
_country_criterionB
valueB�
#com.google.ads.googleads.v15.commonBPolicyProtoPZEgoogle.golang.org/genproto/googleapis/ads/googleads/v15/common;common�GAA�Google.Ads.GoogleAds.V15.Common�Google\\Ads\\GoogleAds\\V15\\Common�#Google::Ads::GoogleAds::V15::Commonbproto3
�
<google/ads/googleads/v15/enums/asset_performance_label.protogoogle.ads.googleads.v15.enums"�
AssetPerformanceLabelEnum"m
AssetPerformanceLabel
UNSPECIFIED 
UNKNOWN
PENDING
LEARNING
LOW
GOOD
BESTB�
"com.google.ads.googleads.v15.enumsBAssetPerformanceLabelProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
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
;google/ads/googleads/v15/enums/policy_approval_status.protogoogle.ads.googleads.v15.enums"�
PolicyApprovalStatusEnum"�
PolicyApprovalStatus
UNSPECIFIED 
UNKNOWN
DISAPPROVED
APPROVED_LIMITED
APPROVED
AREA_OF_INTEREST_ONLYB�
"com.google.ads.googleads.v15.enumsBPolicyApprovalStatusProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
?google/ads/googleads/v15/resources/ad_group_ad_asset_view.proto"google.ads.googleads.v15.resources5google/ads/googleads/v15/enums/asset_field_type.proto<google/ads/googleads/v15/enums/asset_performance_label.proto1google/ads/googleads/v15/enums/asset_source.proto;google/ads/googleads/v15/enums/policy_approval_status.proto9google/ads/googleads/v15/enums/policy_review_status.proto<google/ads/googleads/v15/enums/served_asset_field_type.protogoogle/api/field_behavior.protogoogle/api/resource.proto"�
AdGroupAdAssetViewJ

resource_name (	B3�A�A-
+googleads.googleapis.com/AdGroupAdAssetViewD
ad_group_ad	 (	B*�A�A$
"googleads.googleapis.com/AdGroupAdH �:
asset
 (	B&�A�A 
googleads.googleapis.com/AssetH�Z

field_type (2A.google.ads.googleads.v15.enums.AssetFieldTypeEnum.AssetFieldTypeB�A
enabled (B�AH�\\
policy_summary (2?.google.ads.googleads.v15.resources.AdGroupAdAssetPolicySummaryB�Ao
performance_label (2O.google.ads.googleads.v15.enums.AssetPerformanceLabelEnum.AssetPerformanceLabelB�Ah
pinned_field (2M.google.ads.googleads.v15.enums.ServedAssetFieldTypeEnum.ServedAssetFieldTypeB�AP
source (2;.google.ads.googleads.v15.enums.AssetSourceEnum.AssetSourceB�A:��A�
+googleads.googleapis.com/AdGroupAdAssetViewYcustomers/{customer_id}/adGroupAdAssetViews/{ad_group_id}~{ad_id}~{asset_id}~{field_type}B
_ad_group_adB
_assetB

_enabled"�
AdGroupAdAssetPolicySummaryT
policy_topic_entries (21.google.ads.googleads.v15.common.PolicyTopicEntryB�Ae

review_status (2I.google.ads.googleads.v15.enums.PolicyReviewStatusEnum.PolicyReviewStatusB�Ak
approval_status (2M.google.ads.googleads.v15.enums.PolicyApprovalStatusEnum.PolicyApprovalStatusB�AB�
&com.google.ads.googleads.v15.resourcesBAdGroupAdAssetViewProtoPZKgoogle.golang.org/genproto/googleapis/ads/googleads/v15/resources;resources�GAA�"Google.Ads.GoogleAds.V15.Resources�"Google\\Ads\\GoogleAds\\V15\\Resources�&Google::Ads::GoogleAds::V15::Resourcesbproto3'
            , true);
        static::$is_initialized = true;
    }
}

