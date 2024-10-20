<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/services/campaign_extension_setting_service.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V15\Services;

class CampaignExtensionSettingService
{
    public static $is_initialized = false;

    public static function initOnce()
    {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();
        if (static::$is_initialized == true) {
            return;
        }
        \GPBMetadata\Google\Protobuf\FieldMask::initOnce();
        \GPBMetadata\Google\Protobuf\Any::initOnce();
        \GPBMetadata\Google\Api\LaunchStage::initOnce();
        \GPBMetadata\Google\Rpc\Status::initOnce();
        \GPBMetadata\Google\Protobuf\Duration::initOnce();
        \GPBMetadata\Google\Api\Client::initOnce();
        \GPBMetadata\Google\Api\Http::initOnce();
        \GPBMetadata\Google\Api\Annotations::initOnce();
        \GPBMetadata\Google\Api\FieldBehavior::initOnce();
        \GPBMetadata\Google\Api\Resource::initOnce();
        $pool->internalAddGeneratedFile(
            '
�
3google/ads/googleads/v15/enums/extension_type.protogoogle.ads.googleads.v15.enums"�
ExtensionTypeEnum"�

ExtensionType
UNSPECIFIED 
UNKNOWN
NONE
APP
CALL
CALLOUT
MESSAGE	
PRICE
	PROMOTION
SITELINK

STRUCTURED_SNIPPET
LOCATION
AFFILIATE_LOCATION


HOTEL_CALLOUT	
IMAGEB�
"com.google.ads.googleads.v15.enumsBExtensionTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
:google/ads/googleads/v15/enums/response_content_type.protogoogle.ads.googleads.v15.enums"o
ResponseContentTypeEnum"T
ResponseContentType
UNSPECIFIED 
RESOURCE_NAME_ONLY
MUTABLE_RESOURCEB�
"com.google.ads.googleads.v15.enumsBResponseContentTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
=google/ads/googleads/v15/enums/extension_setting_device.protogoogle.ads.googleads.v15.enums"m
ExtensionSettingDeviceEnum"O
ExtensionSettingDevice
UNSPECIFIED 
UNKNOWN

MOBILE
DESKTOPB�
"com.google.ads.googleads.v15.enumsBExtensionSettingDeviceProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
Cgoogle/ads/googleads/v15/resources/campaign_extension_setting.proto"google.ads.googleads.v15.resources3google/ads/googleads/v15/enums/extension_type.protogoogle/api/field_behavior.protogoogle/api/resource.proto"�
CampaignExtensionSettingP

resource_name (	B9�A�A3
1googleads.googleapis.com/CampaignExtensionSetting\\
extension_type (2?.google.ads.googleads.v15.enums.ExtensionTypeEnum.ExtensionTypeB�A@
campaign (	B)�A�A#
!googleads.googleapis.com/CampaignH �M
extension_feed_items (	B/�A,
*googleads.googleapis.com/ExtensionFeedItema
device (2Q.google.ads.googleads.v15.enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice:��A�
1googleads.googleapis.com/CampaignExtensionSettingPcustomers/{customer_id}/campaignExtensionSettings/{campaign_id}~{extension_type}B
	_campaignB�
&com.google.ads.googleads.v15.resourcesBCampaignExtensionSettingProtoPZKgoogle.golang.org/genproto/googleapis/ads/googleads/v15/resources;resources�GAA�"Google.Ads.GoogleAds.V15.Resources�"Google\\Ads\\GoogleAds\\V15\\Resources�&Google::Ads::GoogleAds::V15::Resourcesbproto3
�
Jgoogle/ads/googleads/v15/services/campaign_extension_setting_service.proto!google.ads.googleads.v15.servicesCgoogle/ads/googleads/v15/resources/campaign_extension_setting.protogoogle/api/annotations.protogoogle/api/client.protogoogle/api/field_behavior.protogoogle/api/resource.proto google/protobuf/field_mask.protogoogle/rpc/status.proto"�
&MutateCampaignExtensionSettingsRequest
customer_id (	B�A]

operations (2D.google.ads.googleads.v15.services.CampaignExtensionSettingOperationB�A
partial_failure (

validate_only (j
response_content_type (2K.google.ads.googleads.v15.enums.ResponseContentTypeEnum.ResponseContentType"�
!CampaignExtensionSettingOperation/
update_mask (2.google.protobuf.FieldMaskN
create (2<.google.ads.googleads.v15.resources.CampaignExtensionSettingH N
update (2<.google.ads.googleads.v15.resources.CampaignExtensionSettingH H
remove (	B6�A3
1googleads.googleapis.com/CampaignExtensionSettingH B
	operation"�
\'MutateCampaignExtensionSettingsResponse1
partial_failure_error (2.google.rpc.StatusX
results (2G.google.ads.googleads.v15.services.MutateCampaignExtensionSettingResult"�
$MutateCampaignExtensionSettingResultM

resource_name (	B6�A3
1googleads.googleapis.com/CampaignExtensionSetting`
campaign_extension_setting (2<.google.ads.googleads.v15.resources.CampaignExtensionSetting2�
CampaignExtensionSettingService�
MutateCampaignExtensionSettingsI.google.ads.googleads.v15.services.MutateCampaignExtensionSettingsRequestJ.google.ads.googleads.v15.services.MutateCampaignExtensionSettingsResponse"c���D"?/v15/customers/{customer_id=*}/campaignExtensionSettings:mutate:*�Acustomer_id,operationsE�Agoogleads.googleapis.com�A\'https://www.googleapis.com/auth/adwordsB�
%com.google.ads.googleads.v15.servicesB$CampaignExtensionSettingServiceProtoPZIgoogle.golang.org/genproto/googleapis/ads/googleads/v15/services;services�GAA�!Google.Ads.GoogleAds.V15.Services�!Google\\Ads\\GoogleAds\\V15\\Services�%Google::Ads::GoogleAds::V15::Servicesbproto3'
            , true);
        static::$is_initialized = true;
    }
}

