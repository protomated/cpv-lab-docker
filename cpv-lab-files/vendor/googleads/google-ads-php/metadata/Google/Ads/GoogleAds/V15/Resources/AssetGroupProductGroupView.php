<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/resources/asset_group_product_group_view.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V15\Resources;

class AssetGroupProductGroupView
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
�
Ggoogle/ads/googleads/v15/resources/asset_group_product_group_view.proto"google.ads.googleads.v15.resourcesgoogle/api/resource.proto"�
AssetGroupProductGroupViewR

resource_name (	B;�A�A5
3googleads.googleapis.com/AssetGroupProductGroupView@
asset_group (	B+�A�A%
#googleads.googleapis.com/AssetGroupg
 asset_group_listing_group_filter (	B=�A�A7
5googleads.googleapis.com/AssetGroupListingGroupFilter:��A�
3googleads.googleapis.com/AssetGroupProductGroupView^customers/{customer_id}/assetGroupProductGroupViews/{asset_group_id}~{listing_group_filter_id}B�
&com.google.ads.googleads.v15.resourcesBAssetGroupProductGroupViewProtoPZKgoogle.golang.org/genproto/googleapis/ads/googleads/v15/resources;resources�GAA�"Google.Ads.GoogleAds.V15.Resources�"Google\\Ads\\GoogleAds\\V15\\Resources�&Google::Ads::GoogleAds::V15::Resourcesbproto3'
            , true);
        static::$is_initialized = true;
    }
}

