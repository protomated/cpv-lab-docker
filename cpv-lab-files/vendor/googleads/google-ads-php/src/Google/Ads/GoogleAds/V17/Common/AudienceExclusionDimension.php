<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v17/common/audiences.proto

namespace Google\Ads\GoogleAds\V17\Common;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Negative dimension specifying users to exclude from the audience.
 *
 * Generated from protobuf message <code>google.ads.googleads.v17.common.AudienceExclusionDimension</code>
 */
class AudienceExclusionDimension extends \Google\Protobuf\Internal\Message
{
    /**
     * Audience segment to be excluded.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v17.common.ExclusionSegment exclusions = 1;</code>
     */
    private $exclusions;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type array<\Google\Ads\GoogleAds\V17\Common\ExclusionSegment>|\Google\Protobuf\Internal\RepeatedField $exclusions
     *           Audience segment to be excluded.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V17\Common\Audiences::initOnce();
        parent::__construct($data);
    }

    /**
     * Audience segment to be excluded.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v17.common.ExclusionSegment exclusions = 1;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getExclusions()
    {
        return $this->exclusions;
    }

    /**
     * Audience segment to be excluded.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v17.common.ExclusionSegment exclusions = 1;</code>
     * @param array<\Google\Ads\GoogleAds\V17\Common\ExclusionSegment>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setExclusions($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Ads\GoogleAds\V17\Common\ExclusionSegment::class);
        $this->exclusions = $arr;

        return $this;
    }

}

