<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/common/audiences.proto

namespace Google\Ads\GoogleAds\V15\Common;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Dimension specifying users by their membership in other audience segments.
 *
 * Generated from protobuf message <code>google.ads.googleads.v15.common.AudienceSegmentDimension</code>
 */
class AudienceSegmentDimension extends \Google\Protobuf\Internal\Message
{
    /**
     * Included audience segments. Users are included if they belong to at least
     * one segment.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v15.common.AudienceSegment segments = 1;</code>
     */
    private $segments;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type array<\Google\Ads\GoogleAds\V15\Common\AudienceSegment>|\Google\Protobuf\Internal\RepeatedField $segments
     *           Included audience segments. Users are included if they belong to at least
     *           one segment.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V15\Common\Audiences::initOnce();
        parent::__construct($data);
    }

    /**
     * Included audience segments. Users are included if they belong to at least
     * one segment.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v15.common.AudienceSegment segments = 1;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getSegments()
    {
        return $this->segments;
    }

    /**
     * Included audience segments. Users are included if they belong to at least
     * one segment.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v15.common.AudienceSegment segments = 1;</code>
     * @param array<\Google\Ads\GoogleAds\V15\Common\AudienceSegment>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setSegments($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Ads\GoogleAds\V15\Common\AudienceSegment::class);
        $this->segments = $arr;

        return $this;
    }

}

