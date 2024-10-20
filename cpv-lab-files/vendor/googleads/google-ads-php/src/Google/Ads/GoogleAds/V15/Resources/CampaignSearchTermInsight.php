<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/resources/campaign_search_term_insight.proto

namespace Google\Ads\GoogleAds\V15\Resources;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * A Campaign search term view.
 * Historical data is available starting March 2023.
 *
 * Generated from protobuf message <code>google.ads.googleads.v15.resources.CampaignSearchTermInsight</code>
 */
class CampaignSearchTermInsight extends \Google\Protobuf\Internal\Message
{
    /**
     * Output only. The resource name of the campaign level search term insight.
     * Campaign level search term insight resource names have the form:
     * `customers/{customer_id}/campaignSearchTermInsights/{campaign_id}~{category_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = OUTPUT_ONLY, (.google.api.resource_reference) = {</code>
     */
    protected $resource_name = '';
    /**
     * Output only. The label for the search category. An empty string denotes the
     * catch-all category for search terms that didn't fit into another category.
     *
     * Generated from protobuf field <code>optional string category_label = 2 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $category_label = null;
    /**
     * Output only. The ID of the insight.
     *
     * Generated from protobuf field <code>optional int64 id = 3 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $id = null;
    /**
     * Output only. The ID of the campaign.
     *
     * Generated from protobuf field <code>optional int64 campaign_id = 4 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $campaign_id = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type string $resource_name
     *           Output only. The resource name of the campaign level search term insight.
     *           Campaign level search term insight resource names have the form:
     *           `customers/{customer_id}/campaignSearchTermInsights/{campaign_id}~{category_id}`
     * @type string $category_label
     *           Output only. The label for the search category. An empty string denotes the
     *           catch-all category for search terms that didn't fit into another category.
     * @type int|string $id
     *           Output only. The ID of the insight.
     * @type int|string $campaign_id
     *           Output only. The ID of the campaign.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V15\Resources\CampaignSearchTermInsight::initOnce();
        parent::__construct($data);
    }

    /**
     * Output only. The resource name of the campaign level search term insight.
     * Campaign level search term insight resource names have the form:
     * `customers/{customer_id}/campaignSearchTermInsights/{campaign_id}~{category_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = OUTPUT_ONLY, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getResourceName()
    {
        return $this->resource_name;
    }

    /**
     * Output only. The resource name of the campaign level search term insight.
     * Campaign level search term insight resource names have the form:
     * `customers/{customer_id}/campaignSearchTermInsights/{campaign_id}~{category_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = OUTPUT_ONLY, (.google.api.resource_reference) = {</code>
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
     * Output only. The label for the search category. An empty string denotes the
     * catch-all category for search terms that didn't fit into another category.
     *
     * Generated from protobuf field <code>optional string category_label = 2 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return string
     */
    public function getCategoryLabel()
    {
        return isset($this->category_label) ? $this->category_label : '';
    }

    public function hasCategoryLabel()
    {
        return isset($this->category_label);
    }

    public function clearCategoryLabel()
    {
        unset($this->category_label);
    }

    /**
     * Output only. The label for the search category. An empty string denotes the
     * catch-all category for search terms that didn't fit into another category.
     *
     * Generated from protobuf field <code>optional string category_label = 2 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param string $var
     * @return $this
     */
    public function setCategoryLabel($var)
    {
        GPBUtil::checkString($var, True);
        $this->category_label = $var;

        return $this;
    }

    /**
     * Output only. The ID of the insight.
     *
     * Generated from protobuf field <code>optional int64 id = 3 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int|string
     */
    public function getId()
    {
        return isset($this->id) ? $this->id : 0;
    }

    public function hasId()
    {
        return isset($this->id);
    }

    public function clearId()
    {
        unset($this->id);
    }

    /**
     * Output only. The ID of the insight.
     *
     * Generated from protobuf field <code>optional int64 id = 3 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int|string $var
     * @return $this
     */
    public function setId($var)
    {
        GPBUtil::checkInt64($var);
        $this->id = $var;

        return $this;
    }

    /**
     * Output only. The ID of the campaign.
     *
     * Generated from protobuf field <code>optional int64 campaign_id = 4 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int|string
     */
    public function getCampaignId()
    {
        return isset($this->campaign_id) ? $this->campaign_id : 0;
    }

    public function hasCampaignId()
    {
        return isset($this->campaign_id);
    }

    public function clearCampaignId()
    {
        unset($this->campaign_id);
    }

    /**
     * Output only. The ID of the campaign.
     *
     * Generated from protobuf field <code>optional int64 campaign_id = 4 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int|string $var
     * @return $this
     */
    public function setCampaignId($var)
    {
        GPBUtil::checkInt64($var);
        $this->campaign_id = $var;

        return $this;
    }

}

