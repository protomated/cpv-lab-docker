<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v17/common/extensions.proto

namespace Google\Ads\GoogleAds\V17\Common;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Represents a callout extension.
 *
 * Generated from protobuf message <code>google.ads.googleads.v17.common.CalloutFeedItem</code>
 */
class CalloutFeedItem extends \Google\Protobuf\Internal\Message
{
    /**
     * The callout text.
     * The length of this string should be between 1 and 25, inclusive.
     *
     * Generated from protobuf field <code>optional string callout_text = 2;</code>
     */
    protected $callout_text = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type string $callout_text
     *           The callout text.
     *           The length of this string should be between 1 and 25, inclusive.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V17\Common\Extensions::initOnce();
        parent::__construct($data);
    }

    /**
     * The callout text.
     * The length of this string should be between 1 and 25, inclusive.
     *
     * Generated from protobuf field <code>optional string callout_text = 2;</code>
     * @return string
     */
    public function getCalloutText()
    {
        return isset($this->callout_text) ? $this->callout_text : '';
    }

    public function hasCalloutText()
    {
        return isset($this->callout_text);
    }

    public function clearCalloutText()
    {
        unset($this->callout_text);
    }

    /**
     * The callout text.
     * The length of this string should be between 1 and 25, inclusive.
     *
     * Generated from protobuf field <code>optional string callout_text = 2;</code>
     * @param string $var
     * @return $this
     */
    public function setCalloutText($var)
    {
        GPBUtil::checkString($var, True);
        $this->callout_text = $var;

        return $this;
    }

}

