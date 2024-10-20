<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/resources/asset_field_type_view.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V16\Resources;

class AssetFieldTypeView
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
�
5google/ads/googleads/v16/enums/asset_field_type.protogoogle.ads.googleads.v16.enums"�
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
HOTEL_PROPERTY
DISCOVERY_CAROUSEL_CARDB�
"com.google.ads.googleads.v16.enumsBAssetFieldTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v16/enums;enums�GAA�Google.Ads.GoogleAds.V16.Enums�Google\\Ads\\GoogleAds\\V16\\Enums�"Google::Ads::GoogleAds::V16::Enumsbproto3
�
>google/ads/googleads/v16/resources/asset_field_type_view.proto"google.ads.googleads.v16.resourcesgoogle/api/field_behavior.protogoogle/api/resource.proto"�
AssetFieldTypeViewJ

resource_name (	B3�A�A-
+googleads.googleapis.com/AssetFieldTypeViewZ

field_type (2A.google.ads.googleads.v16.enums.AssetFieldTypeEnum.AssetFieldTypeB�A:j�Ag
+googleads.googleapis.com/AssetFieldTypeView8customers/{customer_id}/assetFieldTypeViews/{field_type}B�
&com.google.ads.googleads.v16.resourcesBAssetFieldTypeViewProtoPZKgoogle.golang.org/genproto/googleapis/ads/googleads/v16/resources;resources�GAA�"Google.Ads.GoogleAds.V16.Resources�"Google\\Ads\\GoogleAds\\V16\\Resources�&Google::Ads::GoogleAds::V16::Resourcesbproto3'
            , true);
        static::$is_initialized = true;
    }
}

