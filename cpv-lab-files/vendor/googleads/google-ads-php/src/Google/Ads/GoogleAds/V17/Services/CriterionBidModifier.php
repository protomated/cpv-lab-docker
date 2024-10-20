<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v17/services/keyword_plan_idea_service.proto

namespace Google\Ads\GoogleAds\V17\Services;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Location Criterion bid modifier.
 *
 * Generated from protobuf message <code>google.ads.googleads.v17.services.CriterionBidModifier</code>
 */
class CriterionBidModifier extends \Google\Protobuf\Internal\Message
{
    /**
     * The resource name of the geo location to target. The resource name is of
     * the format "geoTargetConstants/{criterion_id}".
     *
     * Generated from protobuf field <code>string geo_target_constant = 1;</code>
     */
    protected $geo_target_constant = '';
    /**
     * The associated multiplier for the criterion_id. If set, this value cannot
     * be 0.
     *
     * Generated from protobuf field <code>optional double bid_modifier = 2;</code>
     */
    protected $bid_modifier = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type string $geo_target_constant
     *           The resource name of the geo location to target. The resource name is of
     *           the format "geoTargetConstants/{criterion_id}".
     * @type float $bid_modifier
     *           The associated multiplier for the criterion_id. If set, this value cannot
     *           be 0.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V17\Services\KeywordPlanIdeaService::initOnce();
        parent::__construct($data);
    }

    /**
     * The resource name of the geo location to target. The resource name is of
     * the format "geoTargetConstants/{criterion_id}".
     *
     * Generated from protobuf field <code>string geo_target_constant = 1;</code>
     * @return string
     */
    public function getGeoTargetConstant()
    {
        return $this->geo_target_constant;
    }

    /**
     * The resource name of the geo location to target. The resource name is of
     * the format "geoTargetConstants/{criterion_id}".
     *
     * Generated from protobuf field <code>string geo_target_constant = 1;</code>
     * @param string $var
     * @return $this
     */
    public function setGeoTargetConstant($var)
    {
        GPBUtil::checkString($var, True);
        $this->geo_target_constant = $var;

        return $this;
    }

    /**
     * The associated multiplier for the criterion_id. If set, this value cannot
     * be 0.
     *
     * Generated from protobuf field <code>optional double bid_modifier = 2;</code>
     * @return float
     */
    public function getBidModifier()
    {
        return isset($this->bid_modifier) ? $this->bid_modifier : 0.0;
    }

    public function hasBidModifier()
    {
        return isset($this->bid_modifier);
    }

    public function clearBidModifier()
    {
        unset($this->bid_modifier);
    }

    /**
     * The associated multiplier for the criterion_id. If set, this value cannot
     * be 0.
     *
     * Generated from protobuf field <code>optional double bid_modifier = 2;</code>
     * @param float $var
     * @return $this
     */
    public function setBidModifier($var)
    {
        GPBUtil::checkDouble($var);
        $this->bid_modifier = $var;

        return $this;
    }

}

