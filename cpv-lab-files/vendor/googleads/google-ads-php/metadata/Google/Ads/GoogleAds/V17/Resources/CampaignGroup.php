<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v17/resources/campaign_group.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V17\Resources;

class CampaignGroup
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
�
:google/ads/googleads/v17/enums/campaign_group_status.protogoogle.ads.googleads.v17.enums"h
CampaignGroupStatusEnum"M
CampaignGroupStatus
UNSPECIFIED 
UNKNOWN
ENABLED
REMOVEDB�
"com.google.ads.googleads.v17.enumsBCampaignGroupStatusProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v17/enums;enums�GAA�Google.Ads.GoogleAds.V17.Enums�Google\\Ads\\GoogleAds\\V17\\Enums�"Google::Ads::GoogleAds::V17::Enumsbproto3
�
7google/ads/googleads/v17/resources/campaign_group.proto"google.ads.googleads.v17.resourcesgoogle/api/field_behavior.protogoogle/api/resource.proto"�

CampaignGroupE

resource_name (	B.�A�A(
&googleads.googleapis.com/CampaignGroup
id (B�A
name (	[
status (2K.google.ads.googleads.v17.enums.CampaignGroupStatusEnum.CampaignGroupStatus:g�Ad
&googleads.googleapis.com/CampaignGroup:customers/{customer_id}/campaignGroups/{campaign_group_id}B�
&com.google.ads.googleads.v17.resourcesBCampaignGroupProtoPZKgoogle.golang.org/genproto/googleapis/ads/googleads/v17/resources;resources�GAA�"Google.Ads.GoogleAds.V17.Resources�"Google\\Ads\\GoogleAds\\V17\\Resources�&Google::Ads::GoogleAds::V17::Resourcesbproto3'
            , true);
        static::$is_initialized = true;
    }
}

