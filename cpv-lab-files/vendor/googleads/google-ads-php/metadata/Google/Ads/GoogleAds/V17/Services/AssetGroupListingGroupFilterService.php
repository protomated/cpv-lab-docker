<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v17/services/asset_group_listing_group_filter_service.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V17\Services;

class AssetGroupListingGroupFilterService
{
    public static $is_initialized = false;

    public static function initOnce()
    {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();
        if (static::$is_initialized == true) {
            return;
        }
        \GPBMetadata\Google\Api\LaunchStage::initOnce();
        \GPBMetadata\Google\Api\FieldBehavior::initOnce();
        \GPBMetadata\Google\Api\Resource::initOnce();
        \GPBMetadata\Google\Api\Http::initOnce();
        \GPBMetadata\Google\Api\Annotations::initOnce();
        \GPBMetadata\Google\Protobuf\FieldMask::initOnce();
        \GPBMetadata\Google\Protobuf\Duration::initOnce();
        \GPBMetadata\Google\Api\Client::initOnce();
        $pool->internalAddGeneratedFile(
            '
�
Hgoogle/ads/googleads/v17/enums/listing_group_filter_listing_source.protogoogle.ads.googleads.v17.enums"�
#ListingGroupFilterListingSourceEnum"Z
ListingGroupFilterListingSource
UNSPECIFIED 
UNKNOWN
SHOPPING
WEBPAGEB�
"com.google.ads.googleads.v17.enumsB$ListingGroupFilterListingSourceProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�
:google/ads/googleads/v17/enums/response_content_type.protogoogle.ads.googleads.v17.enums"o
ResponseContentTypeEnum"T
ResponseContentType
UNSPECIFIED 
RESOURCE_NAME_ONLY
MUTABLE_RESOURCEB�
"com.google.ads.googleads.v17.enumsBResponseContentTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�
Lgoogle/ads/googleads/v17/enums/listing_group_filter_product_type_level.protogoogle.ads.googleads.v17.enums"�
&ListingGroupFilterProductTypeLevelEnum"~
"ListingGroupFilterProductTypeLevel
UNSPECIFIED 
UNKNOWN

LEVEL1

LEVEL2

LEVEL3

LEVEL4

LEVEL5B�
"com.google.ads.googleads.v17.enumsB\'ListingGroupFilterProductTypeLevelProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�
Kgoogle/ads/googleads/v17/enums/listing_group_filter_product_condition.protogoogle.ads.googleads.v17.enums"�
&ListingGroupFilterProductConditionEnum"f
"ListingGroupFilterProductCondition
UNSPECIFIED 
UNKNOWN
NEW
REFURBISHED
USEDB�
"com.google.ads.googleads.v17.enumsB\'ListingGroupFilterProductConditionProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�
Pgoogle/ads/googleads/v17/enums/listing_group_filter_custom_attribute_index.protogoogle.ads.googleads.v17.enums"�
*ListingGroupFilterCustomAttributeIndexEnum"�
&ListingGroupFilterCustomAttributeIndex
UNSPECIFIED 
UNKNOWN

INDEX0

INDEX1

INDEX2

INDEX3

INDEX4B�
"com.google.ads.googleads.v17.enumsB+ListingGroupFilterCustomAttributeIndexProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�
Pgoogle/ads/googleads/v17/enums/listing_group_filter_product_category_level.protogoogle.ads.googleads.v17.enums"�
*ListingGroupFilterProductCategoryLevelEnum"�
&ListingGroupFilterProductCategoryLevel
UNSPECIFIED 
UNKNOWN

LEVEL1

LEVEL2

LEVEL3

LEVEL4

LEVEL5B�
"com.google.ads.googleads.v17.enumsB+ListingGroupFilterProductCategoryLevelProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�
Igoogle/ads/googleads/v17/enums/listing_group_filter_product_channel.protogoogle.ads.googleads.v17.enums"
$ListingGroupFilterProductChannelEnum"W
 ListingGroupFilterProductChannel
UNSPECIFIED 
UNKNOWN

ONLINE	
LOCALB�
"com.google.ads.googleads.v17.enumsB%ListingGroupFilterProductChannelProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�
Cgoogle/ads/googleads/v17/enums/listing_group_filter_type_enum.protogoogle.ads.googleads.v17.enums"�
ListingGroupFilterTypeEnum"m
ListingGroupFilterType
UNSPECIFIED 
UNKNOWN
SUBDIVISION

UNIT_INCLUDED

UNIT_EXCLUDEDB�
"com.google.ads.googleads.v17.enumsBListingGroupFilterTypeEnumProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�
Igoogle/ads/googleads/v17/resources/asset_group_listing_group_filter.proto"google.ads.googleads.v17.resourcesHgoogle/ads/googleads/v17/enums/listing_group_filter_listing_source.protoPgoogle/ads/googleads/v17/enums/listing_group_filter_product_category_level.protoIgoogle/ads/googleads/v17/enums/listing_group_filter_product_channel.protoKgoogle/ads/googleads/v17/enums/listing_group_filter_product_condition.protoLgoogle/ads/googleads/v17/enums/listing_group_filter_product_type_level.protoCgoogle/ads/googleads/v17/enums/listing_group_filter_type_enum.protogoogle/api/field_behavior.protogoogle/api/resource.proto"�
AssetGroupListingGroupFilterT

resource_name (	B=�A�A7
5googleads.googleapis.com/AssetGroupListingGroupFilter@
asset_group (	B+�A�A%
#googleads.googleapis.com/AssetGroup
id (B�Ad
type (2Q.google.ads.googleads.v17.enums.ListingGroupFilterTypeEnum.ListingGroupFilterTypeB�A�
listing_source	 (2c.google.ads.googleads.v17.enums.ListingGroupFilterListingSourceEnum.ListingGroupFilterListingSourceB�AS

case_value (2?.google.ads.googleads.v17.resources.ListingGroupFilterDimensionb
parent_listing_group_filter (	B=�A�A7
5googleads.googleapis.com/AssetGroupListingGroupFilterV
path (2C.google.ads.googleads.v17.resources.ListingGroupFilterDimensionPathB�A:��A�
5googleads.googleapis.com/AssetGroupListingGroupFilter`customers/{customer_id}/assetGroupListingGroupFilters/{asset_group_id}~{listing_group_filter_id}"{
ListingGroupFilterDimensionPathX

dimensions (2?.google.ads.googleads.v17.resources.ListingGroupFilterDimensionB�A"�
ListingGroupFilterDimensionk
product_category
 (2O.google.ads.googleads.v17.resources.ListingGroupFilterDimension.ProductCategoryH e

product_brand (2L.google.ads.googleads.v17.resources.ListingGroupFilterDimension.ProductBrandH i
product_channel (2N.google.ads.googleads.v17.resources.ListingGroupFilterDimension.ProductChannelH m
product_condition (2P.google.ads.googleads.v17.resources.ListingGroupFilterDimension.ProductConditionH z
product_custom_attribute (2V.google.ads.googleads.v17.resources.ListingGroupFilterDimension.ProductCustomAttributeH h
product_item_id (2M.google.ads.googleads.v17.resources.ListingGroupFilterDimension.ProductItemIdH c
product_type (2K.google.ads.googleads.v17.resources.ListingGroupFilterDimension.ProductTypeH Z
webpage	 (2G.google.ads.googleads.v17.resources.ListingGroupFilterDimension.WebpageH �
ProductCategory
category_id (H ��
level (2q.google.ads.googleads.v17.enums.ListingGroupFilterProductCategoryLevelEnum.ListingGroupFilterProductCategoryLevelB
_category_id,
ProductBrand
value (	H �B
_value�
ProductChannelv
channel (2e.google.ads.googleads.v17.enums.ListingGroupFilterProductChannelEnum.ListingGroupFilterProductChannel�
ProductCondition|
	condition (2i.google.ads.googleads.v17.enums.ListingGroupFilterProductConditionEnum.ListingGroupFilterProductCondition�
ProductCustomAttribute
value (	H ��
index (2q.google.ads.googleads.v17.enums.ListingGroupFilterCustomAttributeIndexEnum.ListingGroupFilterCustomAttributeIndexB
_value-

ProductItemId
value (	H �B
_value�
ProductType
value (	H �x
level (2i.google.ads.googleads.v17.enums.ListingGroupFilterProductTypeLevelEnum.ListingGroupFilterProductTypeLevelB
_valueo
Webpaged

conditions (2P.google.ads.googleads.v17.resources.ListingGroupFilterDimension.WebpageConditionO
WebpageCondition
custom_label (	H 
url_contains (	H B
	conditionB
	dimensionB�
&com.google.ads.googleads.v17.resourcesB!AssetGroupListingGroupFilterProtoPZKgoogle.golang.org/genproto/googleapis/ads/googleads/v17/resources;resources�GAA�"Google.Ads.GoogleAds.V17.Resources�"Google\\Ads\\GoogleAds\\V17\\Resources�&Google::Ads::GoogleAds::V17::Resourcesbproto3
�
Pgoogle/ads/googleads/v17/services/asset_group_listing_group_filter_service.proto!google.ads.googleads.v17.servicesIgoogle/ads/googleads/v17/resources/asset_group_listing_group_filter.protogoogle/api/annotations.protogoogle/api/client.protogoogle/api/field_behavior.protogoogle/api/resource.proto google/protobuf/field_mask.proto"�
*MutateAssetGroupListingGroupFiltersRequest
customer_id (	B�Aa

operations (2H.google.ads.googleads.v17.services.AssetGroupListingGroupFilterOperationB�A

validate_only (j
response_content_type (2K.google.ads.googleads.v17.enums.ResponseContentTypeEnum.ResponseContentType"�
%AssetGroupListingGroupFilterOperation/
update_mask (2.google.protobuf.FieldMaskR
create (2@.google.ads.googleads.v17.resources.AssetGroupListingGroupFilterH R
update (2@.google.ads.googleads.v17.resources.AssetGroupListingGroupFilterH L
remove (	B:�A7
5googleads.googleapis.com/AssetGroupListingGroupFilterH B
	operation"�
+MutateAssetGroupListingGroupFiltersResponse\\
results (2K.google.ads.googleads.v17.services.MutateAssetGroupListingGroupFilterResult"�
(MutateAssetGroupListingGroupFilterResultQ

resource_name (	B:�A7
5googleads.googleapis.com/AssetGroupListingGroupFilterj
 asset_group_listing_group_filter (2@.google.ads.googleads.v17.resources.AssetGroupListingGroupFilter2�
#AssetGroupListingGroupFilterService�
#MutateAssetGroupListingGroupFiltersM.google.ads.googleads.v17.services.MutateAssetGroupListingGroupFiltersRequestN.google.ads.googleads.v17.services.MutateAssetGroupListingGroupFiltersResponse"g�Acustomer_id,operations���H"C/v17/customers/{customer_id=*}/assetGroupListingGroupFilters:mutate:*E�Agoogleads.googleapis.com�A\'https://www.googleapis.com/auth/adwordsB�
%com.google.ads.googleads.v17.servicesB(AssetGroupListingGroupFilterServiceProtoPZIgoogle.golang.org/genproto/googleapis/ads/googleads/v17/services;services�GAA�!Google.Ads.GoogleAds.V17.Services�!Google\\Ads\\GoogleAds\\V17\\Services�%Google::Ads::GoogleAds::V17::Servicesbproto3'
            , true);
        static::$is_initialized = true;
    }
}

