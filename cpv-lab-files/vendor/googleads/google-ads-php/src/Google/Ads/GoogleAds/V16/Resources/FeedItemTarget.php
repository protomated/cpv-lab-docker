<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/resources/feed_item_target.proto

namespace Google\Ads\GoogleAds\V16\Resources;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * A feed item target.
 *
 * Generated from protobuf message <code>google.ads.googleads.v16.resources.FeedItemTarget</code>
 */
class FeedItemTarget extends \Google\Protobuf\Internal\Message
{
    /**
     * Immutable. The resource name of the feed item target.
     * Feed item target resource names have the form:
     * `customers/{customer_id}/feedItemTargets/{feed_id}~{feed_item_id}~{feed_item_target_type}~{feed_item_target_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     */
    protected $resource_name = '';
    /**
     * Immutable. The feed item to which this feed item target belongs.
     *
     * Generated from protobuf field <code>optional string feed_item = 12 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     */
    protected $feed_item = null;
    /**
     * Output only. The target type of this feed item target. This field is
     * read-only.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.FeedItemTargetTypeEnum.FeedItemTargetType feed_item_target_type = 3 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $feed_item_target_type = 0;
    /**
     * Output only. The ID of the targeted resource. This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 feed_item_target_id = 13 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $feed_item_target_id = null;
    /**
     * Output only. Status of the feed item target.
     * This field is read-only.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.FeedItemTargetStatusEnum.FeedItemTargetStatus status = 11 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $status = 0;
    protected $target;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $resource_name
     *           Immutable. The resource name of the feed item target.
     *           Feed item target resource names have the form:
     *           `customers/{customer_id}/feedItemTargets/{feed_id}~{feed_item_id}~{feed_item_target_type}~{feed_item_target_id}`
     *     @type string $feed_item
     *           Immutable. The feed item to which this feed item target belongs.
     *     @type int $feed_item_target_type
     *           Output only. The target type of this feed item target. This field is
     *           read-only.
     *     @type int|string $feed_item_target_id
     *           Output only. The ID of the targeted resource. This field is read-only.
     *     @type int $status
     *           Output only. Status of the feed item target.
     *           This field is read-only.
     *     @type string $campaign
     *           Immutable. The targeted campaign.
     *     @type string $ad_group
     *           Immutable. The targeted ad group.
     *     @type \Google\Ads\GoogleAds\V16\Common\KeywordInfo $keyword
     *           Immutable. The targeted keyword.
     *     @type string $geo_target_constant
     *           Immutable. The targeted geo target constant resource name.
     *     @type int $device
     *           Immutable. The targeted device.
     *     @type \Google\Ads\GoogleAds\V16\Common\AdScheduleInfo $ad_schedule
     *           Immutable. The targeted schedule.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Google\Ads\GoogleAds\V16\Resources\FeedItemTarget::initOnce();
        parent::__construct($data);
    }

    /**
     * Immutable. The resource name of the feed item target.
     * Feed item target resource names have the form:
     * `customers/{customer_id}/feedItemTargets/{feed_id}~{feed_item_id}~{feed_item_target_type}~{feed_item_target_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getResourceName()
    {
        return $this->resource_name;
    }

    /**
     * Immutable. The resource name of the feed item target.
     * Feed item target resource names have the form:
     * `customers/{customer_id}/feedItemTargets/{feed_id}~{feed_item_id}~{feed_item_target_type}~{feed_item_target_id}`
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
     * Immutable. The feed item to which this feed item target belongs.
     *
     * Generated from protobuf field <code>optional string feed_item = 12 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getFeedItem()
    {
        return isset($this->feed_item) ? $this->feed_item : '';
    }

    public function hasFeedItem()
    {
        return isset($this->feed_item);
    }

    public function clearFeedItem()
    {
        unset($this->feed_item);
    }

    /**
     * Immutable. The feed item to which this feed item target belongs.
     *
     * Generated from protobuf field <code>optional string feed_item = 12 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @param string $var
     * @return $this
     */
    public function setFeedItem($var)
    {
        GPBUtil::checkString($var, True);
        $this->feed_item = $var;

        return $this;
    }

    /**
     * Output only. The target type of this feed item target. This field is
     * read-only.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.FeedItemTargetTypeEnum.FeedItemTargetType feed_item_target_type = 3 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int
     */
    public function getFeedItemTargetType()
    {
        return $this->feed_item_target_type;
    }

    /**
     * Output only. The target type of this feed item target. This field is
     * read-only.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.FeedItemTargetTypeEnum.FeedItemTargetType feed_item_target_type = 3 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int $var
     * @return $this
     */
    public function setFeedItemTargetType($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V16\Enums\FeedItemTargetTypeEnum\FeedItemTargetType::class);
        $this->feed_item_target_type = $var;

        return $this;
    }

    /**
     * Output only. The ID of the targeted resource. This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 feed_item_target_id = 13 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int|string
     */
    public function getFeedItemTargetId()
    {
        return isset($this->feed_item_target_id) ? $this->feed_item_target_id : 0;
    }

    public function hasFeedItemTargetId()
    {
        return isset($this->feed_item_target_id);
    }

    public function clearFeedItemTargetId()
    {
        unset($this->feed_item_target_id);
    }

    /**
     * Output only. The ID of the targeted resource. This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 feed_item_target_id = 13 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int|string $var
     * @return $this
     */
    public function setFeedItemTargetId($var)
    {
        GPBUtil::checkInt64($var);
        $this->feed_item_target_id = $var;

        return $this;
    }

    /**
     * Output only. Status of the feed item target.
     * This field is read-only.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.FeedItemTargetStatusEnum.FeedItemTargetStatus status = 11 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int
     */
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * Output only. Status of the feed item target.
     * This field is read-only.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.FeedItemTargetStatusEnum.FeedItemTargetStatus status = 11 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int $var
     * @return $this
     */
    public function setStatus($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V16\Enums\FeedItemTargetStatusEnum\FeedItemTargetStatus::class);
        $this->status = $var;

        return $this;
    }

    /**
     * Immutable. The targeted campaign.
     *
     * Generated from protobuf field <code>string campaign = 14 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getCampaign()
    {
        return $this->readOneof(14);
    }

    public function hasCampaign()
    {
        return $this->hasOneof(14);
    }

    /**
     * Immutable. The targeted campaign.
     *
     * Generated from protobuf field <code>string campaign = 14 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @param string $var
     * @return $this
     */
    public function setCampaign($var)
    {
        GPBUtil::checkString($var, True);
        $this->writeOneof(14, $var);

        return $this;
    }

    /**
     * Immutable. The targeted ad group.
     *
     * Generated from protobuf field <code>string ad_group = 15 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getAdGroup()
    {
        return $this->readOneof(15);
    }

    public function hasAdGroup()
    {
        return $this->hasOneof(15);
    }

    /**
     * Immutable. The targeted ad group.
     *
     * Generated from protobuf field <code>string ad_group = 15 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @param string $var
     * @return $this
     */
    public function setAdGroup($var)
    {
        GPBUtil::checkString($var, True);
        $this->writeOneof(15, $var);

        return $this;
    }

    /**
     * Immutable. The targeted keyword.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.common.KeywordInfo keyword = 7 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @return \Google\Ads\GoogleAds\V16\Common\KeywordInfo|null
     */
    public function getKeyword()
    {
        return $this->readOneof(7);
    }

    public function hasKeyword()
    {
        return $this->hasOneof(7);
    }

    /**
     * Immutable. The targeted keyword.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.common.KeywordInfo keyword = 7 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @param \Google\Ads\GoogleAds\V16\Common\KeywordInfo $var
     * @return $this
     */
    public function setKeyword($var)
    {
        GPBUtil::checkMessage($var, \Google\Ads\GoogleAds\V16\Common\KeywordInfo::class);
        $this->writeOneof(7, $var);

        return $this;
    }

    /**
     * Immutable. The targeted geo target constant resource name.
     *
     * Generated from protobuf field <code>string geo_target_constant = 16 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getGeoTargetConstant()
    {
        return $this->readOneof(16);
    }

    public function hasGeoTargetConstant()
    {
        return $this->hasOneof(16);
    }

    /**
     * Immutable. The targeted geo target constant resource name.
     *
     * Generated from protobuf field <code>string geo_target_constant = 16 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @param string $var
     * @return $this
     */
    public function setGeoTargetConstant($var)
    {
        GPBUtil::checkString($var, True);
        $this->writeOneof(16, $var);

        return $this;
    }

    /**
     * Immutable. The targeted device.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.FeedItemTargetDeviceEnum.FeedItemTargetDevice device = 9 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @return int
     */
    public function getDevice()
    {
        return $this->readOneof(9);
    }

    public function hasDevice()
    {
        return $this->hasOneof(9);
    }

    /**
     * Immutable. The targeted device.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.FeedItemTargetDeviceEnum.FeedItemTargetDevice device = 9 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @param int $var
     * @return $this
     */
    public function setDevice($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V16\Enums\FeedItemTargetDeviceEnum\FeedItemTargetDevice::class);
        $this->writeOneof(9, $var);

        return $this;
    }

    /**
     * Immutable. The targeted schedule.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.common.AdScheduleInfo ad_schedule = 10 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @return \Google\Ads\GoogleAds\V16\Common\AdScheduleInfo|null
     */
    public function getAdSchedule()
    {
        return $this->readOneof(10);
    }

    public function hasAdSchedule()
    {
        return $this->hasOneof(10);
    }

    /**
     * Immutable. The targeted schedule.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.common.AdScheduleInfo ad_schedule = 10 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @param \Google\Ads\GoogleAds\V16\Common\AdScheduleInfo $var
     * @return $this
     */
    public function setAdSchedule($var)
    {
        GPBUtil::checkMessage($var, \Google\Ads\GoogleAds\V16\Common\AdScheduleInfo::class);
        $this->writeOneof(10, $var);

        return $this;
    }

    /**
     * @return string
     */
    public function getTarget()
    {
        return $this->whichOneof("target");
    }

}

