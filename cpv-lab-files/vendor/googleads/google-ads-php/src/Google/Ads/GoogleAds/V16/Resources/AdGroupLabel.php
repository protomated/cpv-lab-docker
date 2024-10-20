<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/resources/ad_group_label.proto

namespace Google\Ads\GoogleAds\V16\Resources;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * A relationship between an ad group and a label.
 *
 * Generated from protobuf message <code>google.ads.googleads.v16.resources.AdGroupLabel</code>
 */
class AdGroupLabel extends \Google\Protobuf\Internal\Message
{
    /**
     * Immutable. The resource name of the ad group label.
     * Ad group label resource names have the form:
     * `customers/{customer_id}/adGroupLabels/{ad_group_id}~{label_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     */
    protected $resource_name = '';
    /**
     * Immutable. The ad group to which the label is attached.
     *
     * Generated from protobuf field <code>optional string ad_group = 4 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     */
    protected $ad_group = null;
    /**
     * Immutable. The label assigned to the ad group.
     *
     * Generated from protobuf field <code>optional string label = 5 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     */
    protected $label = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type string $resource_name
     *           Immutable. The resource name of the ad group label.
     *           Ad group label resource names have the form:
     *           `customers/{customer_id}/adGroupLabels/{ad_group_id}~{label_id}`
     * @type string $ad_group
     *           Immutable. The ad group to which the label is attached.
     * @type string $label
     *           Immutable. The label assigned to the ad group.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V16\Resources\AdGroupLabel::initOnce();
        parent::__construct($data);
    }

    /**
     * Immutable. The resource name of the ad group label.
     * Ad group label resource names have the form:
     * `customers/{customer_id}/adGroupLabels/{ad_group_id}~{label_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getResourceName()
    {
        return $this->resource_name;
    }

    /**
     * Immutable. The resource name of the ad group label.
     * Ad group label resource names have the form:
     * `customers/{customer_id}/adGroupLabels/{ad_group_id}~{label_id}`
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
     * Immutable. The ad group to which the label is attached.
     *
     * Generated from protobuf field <code>optional string ad_group = 4 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getAdGroup()
    {
        return isset($this->ad_group) ? $this->ad_group : '';
    }

    public function hasAdGroup()
    {
        return isset($this->ad_group);
    }

    public function clearAdGroup()
    {
        unset($this->ad_group);
    }

    /**
     * Immutable. The ad group to which the label is attached.
     *
     * Generated from protobuf field <code>optional string ad_group = 4 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
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
     * Immutable. The label assigned to the ad group.
     *
     * Generated from protobuf field <code>optional string label = 5 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getLabel()
    {
        return isset($this->label) ? $this->label : '';
    }

    public function hasLabel()
    {
        return isset($this->label);
    }

    public function clearLabel()
    {
        unset($this->label);
    }

    /**
     * Immutable. The label assigned to the ad group.
     *
     * Generated from protobuf field <code>optional string label = 5 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @param string $var
     * @return $this
     */
    public function setLabel($var)
    {
        GPBUtil::checkString($var, True);
        $this->label = $var;

        return $this;
    }

}

