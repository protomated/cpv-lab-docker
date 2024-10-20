<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v17/services/campaign_lifecycle_goal_service.proto

namespace Google\Ads\GoogleAds\V17\Services;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Response message for
 * [CampaignLifecycleGoalService.configureCampaignLifecycleGoals][].
 *
 * Generated from protobuf message <code>google.ads.googleads.v17.services.ConfigureCampaignLifecycleGoalsResponse</code>
 */
class ConfigureCampaignLifecycleGoalsResponse extends \Google\Protobuf\Internal\Message
{
    /**
     * Result for the campaign lifecycle goal configuration.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v17.services.ConfigureCampaignLifecycleGoalsResult result = 1;</code>
     */
    protected $result = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type \Google\Ads\GoogleAds\V17\Services\ConfigureCampaignLifecycleGoalsResult $result
     *           Result for the campaign lifecycle goal configuration.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V17\Services\CampaignLifecycleGoalService::initOnce();
        parent::__construct($data);
    }

    /**
     * Result for the campaign lifecycle goal configuration.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v17.services.ConfigureCampaignLifecycleGoalsResult result = 1;</code>
     * @return \Google\Ads\GoogleAds\V17\Services\ConfigureCampaignLifecycleGoalsResult|null
     */
    public function getResult()
    {
        return $this->result;
    }

    public function hasResult()
    {
        return isset($this->result);
    }

    public function clearResult()
    {
        unset($this->result);
    }

    /**
     * Result for the campaign lifecycle goal configuration.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v17.services.ConfigureCampaignLifecycleGoalsResult result = 1;</code>
     * @param \Google\Ads\GoogleAds\V17\Services\ConfigureCampaignLifecycleGoalsResult $var
     * @return $this
     */
    public function setResult($var)
    {
        GPBUtil::checkMessage($var, \Google\Ads\GoogleAds\V17\Services\ConfigureCampaignLifecycleGoalsResult::class);
        $this->result = $var;

        return $this;
    }

}

