<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/services/custom_interest_service.proto

namespace Google\Ads\GoogleAds\V15\Services;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * A single operation (create, update) on a custom interest.
 *
 * Generated from protobuf message <code>google.ads.googleads.v15.services.CustomInterestOperation</code>
 */
class CustomInterestOperation extends \Google\Protobuf\Internal\Message
{
    /**
     * FieldMask that determines which resource fields are modified in an update.
     *
     * Generated from protobuf field <code>.google.protobuf.FieldMask update_mask = 4;</code>
     */
    protected $update_mask = null;
    protected $operation;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type \Google\Protobuf\FieldMask $update_mask
     *           FieldMask that determines which resource fields are modified in an update.
     *     @type \Google\Ads\GoogleAds\V15\Resources\CustomInterest $create
     *           Create operation: No resource name is expected for the new custom
     *           interest.
     *     @type \Google\Ads\GoogleAds\V15\Resources\CustomInterest $update
     *           Update operation: The custom interest is expected to have a valid
     *           resource name.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Google\Ads\GoogleAds\V15\Services\CustomInterestService::initOnce();
        parent::__construct($data);
    }

    /**
     * FieldMask that determines which resource fields are modified in an update.
     *
     * Generated from protobuf field <code>.google.protobuf.FieldMask update_mask = 4;</code>
     * @return \Google\Protobuf\FieldMask|null
     */
    public function getUpdateMask()
    {
        return $this->update_mask;
    }

    public function hasUpdateMask()
    {
        return isset($this->update_mask);
    }

    public function clearUpdateMask()
    {
        unset($this->update_mask);
    }

    /**
     * FieldMask that determines which resource fields are modified in an update.
     *
     * Generated from protobuf field <code>.google.protobuf.FieldMask update_mask = 4;</code>
     * @param \Google\Protobuf\FieldMask $var
     * @return $this
     */
    public function setUpdateMask($var)
    {
        GPBUtil::checkMessage($var, \Google\Protobuf\FieldMask::class);
        $this->update_mask = $var;

        return $this;
    }

    /**
     * Create operation: No resource name is expected for the new custom
     * interest.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.resources.CustomInterest create = 1;</code>
     * @return \Google\Ads\GoogleAds\V15\Resources\CustomInterest|null
     */
    public function getCreate()
    {
        return $this->readOneof(1);
    }

    public function hasCreate()
    {
        return $this->hasOneof(1);
    }

    /**
     * Create operation: No resource name is expected for the new custom
     * interest.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.resources.CustomInterest create = 1;</code>
     * @param \Google\Ads\GoogleAds\V15\Resources\CustomInterest $var
     * @return $this
     */
    public function setCreate($var)
    {
        GPBUtil::checkMessage($var, \Google\Ads\GoogleAds\V15\Resources\CustomInterest::class);
        $this->writeOneof(1, $var);

        return $this;
    }

    /**
     * Update operation: The custom interest is expected to have a valid
     * resource name.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.resources.CustomInterest update = 2;</code>
     * @return \Google\Ads\GoogleAds\V15\Resources\CustomInterest|null
     */
    public function getUpdate()
    {
        return $this->readOneof(2);
    }

    public function hasUpdate()
    {
        return $this->hasOneof(2);
    }

    /**
     * Update operation: The custom interest is expected to have a valid
     * resource name.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.resources.CustomInterest update = 2;</code>
     * @param \Google\Ads\GoogleAds\V15\Resources\CustomInterest $var
     * @return $this
     */
    public function setUpdate($var)
    {
        GPBUtil::checkMessage($var, \Google\Ads\GoogleAds\V15\Resources\CustomInterest::class);
        $this->writeOneof(2, $var);

        return $this;
    }

    /**
     * @return string
     */
    public function getOperation()
    {
        return $this->whichOneof("operation");
    }

}

