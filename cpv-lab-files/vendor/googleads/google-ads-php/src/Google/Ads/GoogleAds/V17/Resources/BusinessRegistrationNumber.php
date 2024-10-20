<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v17/resources/local_services_verification_artifact.proto

namespace Google\Ads\GoogleAds\V17\Resources;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * A proto holding information specific to a local services business
 * registration number.
 *
 * Generated from protobuf message <code>google.ads.googleads.v17.resources.BusinessRegistrationNumber</code>
 */
class BusinessRegistrationNumber extends \Google\Protobuf\Internal\Message
{
    /**
     * Output only. Government-issued number for the business.
     *
     * Generated from protobuf field <code>optional string number = 1 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $number = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type string $number
     *           Output only. Government-issued number for the business.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V17\Resources\LocalServicesVerificationArtifact::initOnce();
        parent::__construct($data);
    }

    /**
     * Output only. Government-issued number for the business.
     *
     * Generated from protobuf field <code>optional string number = 1 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return string
     */
    public function getNumber()
    {
        return isset($this->number) ? $this->number : '';
    }

    public function hasNumber()
    {
        return isset($this->number);
    }

    public function clearNumber()
    {
        unset($this->number);
    }

    /**
     * Output only. Government-issued number for the business.
     *
     * Generated from protobuf field <code>optional string number = 1 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param string $var
     * @return $this
     */
    public function setNumber($var)
    {
        GPBUtil::checkString($var, True);
        $this->number = $var;

        return $this;
    }

}

