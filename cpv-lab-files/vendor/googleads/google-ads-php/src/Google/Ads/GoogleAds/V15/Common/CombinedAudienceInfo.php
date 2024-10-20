<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/common/criteria.proto

namespace Google\Ads\GoogleAds\V15\Common;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * A combined audience criterion.
 *
 * Generated from protobuf message <code>google.ads.googleads.v15.common.CombinedAudienceInfo</code>
 */
class CombinedAudienceInfo extends \Google\Protobuf\Internal\Message
{
    /**
     * The CombinedAudience resource name.
     *
     * Generated from protobuf field <code>string combined_audience = 1 [(.google.api.resource_reference) = {</code>
     */
    protected $combined_audience = '';

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type string $combined_audience
     *           The CombinedAudience resource name.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V15\Common\Criteria::initOnce();
        parent::__construct($data);
    }

    /**
     * The CombinedAudience resource name.
     *
     * Generated from protobuf field <code>string combined_audience = 1 [(.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getCombinedAudience()
    {
        return $this->combined_audience;
    }

    /**
     * The CombinedAudience resource name.
     *
     * Generated from protobuf field <code>string combined_audience = 1 [(.google.api.resource_reference) = {</code>
     * @param string $var
     * @return $this
     */
    public function setCombinedAudience($var)
    {
        GPBUtil::checkString($var, True);
        $this->combined_audience = $var;

        return $this;
    }

}

