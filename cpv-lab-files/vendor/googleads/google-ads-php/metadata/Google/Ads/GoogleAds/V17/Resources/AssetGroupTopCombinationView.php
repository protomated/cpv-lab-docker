<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v17/resources/asset_group_top_combination_view.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V17\Resources;

class AssetGroupTopCombinationView
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
�
<google/ads/googleads/v17/enums/served_asset_field_type.protogoogle.ads.googleads.v17.enums"�
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
"com.google.ads.googleads.v17.enumsBServedAssetFieldTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�
1google/ads/googleads/v17/common/asset_usage.protogoogle.ads.googleads.v17.common"�

AssetUsage
asset (	n
served_asset_field_type (2M.google.ads.googleads.v17.enums.ServedAssetFieldTypeEnum.ServedAssetFieldTypeB�
#com.google.ads.googleads.v17.commonBAssetUsageProtoPZEgoogle.golang.org/genproto/googleapis/ads/googleads/v17/common;common�GAA�Google.Ads.GoogleAds.V17.Common�Google\\Ads\\GoogleAds\\V17\\Common�#Google::Ads::GoogleAds::V17::Commonbproto3
�
Igoogle/ads/googleads/v17/resources/asset_group_top_combination_view.proto"google.ads.googleads.v17.resourcesgoogle/api/field_behavior.protogoogle/api/resource.proto"�
AssetGroupTopCombinationViewT

resource_name (	B=�A�A7
5googleads.googleapis.com/AssetGroupTopCombinationViewm
asset_group_top_combinations (2B.google.ads.googleads.v17.resources.AssetGroupAssetCombinationDataB�A:��A�
5googleads.googleapis.com/AssetGroupTopCombinationViewccustomers/{customer_id}/assetGroupTopCombinationViews/{asset_group_id}~{asset_combination_category}"{
AssetGroupAssetCombinationDataY
asset_combination_served_assets (2+.google.ads.googleads.v17.common.AssetUsageB�AB�
&com.google.ads.googleads.v17.resourcesB!AssetGroupTopCombinationViewProtoPZKgoogle.golang.org/genproto/googleapis/ads/googleads/v17/resources;resources�GAA�"Google.Ads.GoogleAds.V17.Resources�"Google\\Ads\\GoogleAds\\V17\\Resources�&Google::Ads::GoogleAds::V17::Resourcesbproto3'
            , true);
        static::$is_initialized = true;
    }
}

