<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/resources/ad_group_asset_set.proto

namespace Google\Ads\GoogleAds\V15\Resources;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * AdGroupAssetSet is the linkage between an ad group and an asset set.
 * Creating an AdGroupAssetSet links an asset set with an ad group.
 *
 * Generated from protobuf message <code>google.ads.googleads.v15.resources.AdGroupAssetSet</code>
 */
class AdGroupAssetSet extends \Google\Protobuf\Internal\Message
{
    /**
     * Immutable. The resource name of the ad group asset set.
     * Ad group asset set resource names have the form:
     * `customers/{customer_id}/adGroupAssetSets/{ad_group_id}~{asset_set_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     */
    protected $resource_name = '';
    /**
     * Immutable. The ad group to which this asset set is linked.
     *
     * Generated from protobuf field <code>string ad_group = 2 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     */
    protected $ad_group = '';
    /**
     * Immutable. The asset set which is linked to the ad group.
     *
     * Generated from protobuf field <code>string asset_set = 3 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     */
    protected $asset_set = '';
    /**
     * Output only. The status of the ad group asset set. Read-only.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.enums.AssetSetLinkStatusEnum.AssetSetLinkStatus status = 4 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $status = 0;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type string $resource_name
     *           Immutable. The resource name of the ad group asset set.
     *           Ad group asset set resource names have the form:
     *           `customers/{customer_id}/adGroupAssetSets/{ad_group_id}~{asset_set_id}`
     * @type string $ad_group
     *           Immutable. The ad group to which this asset set is linked.
     * @type string $asset_set
     *           Immutable. The asset set which is linked to the ad group.
     * @type int $status
     *           Output only. The status of the ad group asset set. Read-only.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V15\Resources\AdGroupAssetSet::initOnce();
        parent::__construct($data);
    }

    /**
     * Immutable. The resource name of the ad group asset set.
     * Ad group asset set resource names have the form:
     * `customers/{customer_id}/adGroupAssetSets/{ad_group_id}~{asset_set_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getResourceName()
    {
        return $this->resource_name;
    }

    /**
     * Immutable. The resource name of the ad group asset set.
     * Ad group asset set resource names have the form:
     * `customers/{customer_id}/adGroupAssetSets/{ad_group_id}~{asset_set_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @param string $var
     * @return $this
     */
    public function setResourceName($var)
    {
        GPBUtil::checkString($var, True);
        $this->resource_name = $var;

        return $this;
    }

    /**
     * Immutable. The ad group to which this asset set is linked.
     *
     * Generated from protobuf field <code>string ad_group = 2 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getAdGroup()
    {
        return $this->ad_group;
    }

    /**
     * Immutable. The ad group to which this asset set is linked.
     *
     * Generated from protobuf field <code>string ad_group = 2 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @param string $var
     * @return $this
     */
    public function setAdGroup($var)
    {
        GPBUtil::checkString($var, True);
        $this->ad_group = $var;

        return $this;
    }

    /**
     * Immutable. The asset set which is linked to the ad group.
     *
     * Generated from protobuf field <code>string asset_set = 3 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getAssetSet()
    {
        return $this->asset_set;
    }

    /**
     * Immutable. The asset set which is linked to the ad group.
     *
     * Generated from protobuf field <code>string asset_set = 3 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @param string $var
     * @return $this
     */
    public function setAssetSet($var)
    {
        GPBUtil::checkString($var, True);
        $this->asset_set = $var;

        return $this;
    }

    /**
     * Output only. The status of the ad group asset set. Read-only.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.enums.AssetSetLinkStatusEnum.AssetSetLinkStatus status = 4 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int
     */
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * Output only. The status of the ad group asset set. Read-only.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.enums.AssetSetLinkStatusEnum.AssetSetLinkStatus status = 4 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int $var
     * @return $this
     */
    public function setStatus($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V15\Enums\AssetSetLinkStatusEnum\AssetSetLinkStatus::class);
        $this->status = $var;

        return $this;
    }

}

