<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/services/ad_group_criterion_customizer_service.proto

namespace Google\Ads\GoogleAds\V15\Services;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * The result for the ad group criterion customizer mutate.
 *
 * Generated from protobuf message <code>google.ads.googleads.v15.services.MutateAdGroupCriterionCustomizerResult</code>
 */
class MutateAdGroupCriterionCustomizerResult extends \Google\Protobuf\Internal\Message
{
    /**
     * Returned for successful operations.
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.resource_reference) = {</code>
     */
    protected $resource_name = '';
    /**
     * The mutated AdGroupCriterionCustomizer with only mutable fields after
     * mutate. The field will only be returned when response_content_type is set
     * to "MUTABLE_RESOURCE".
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.resources.AdGroupCriterionCustomizer ad_group_criterion_customizer = 2;</code>
     */
    protected $ad_group_criterion_customizer = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $resource_name
     *           Returned for successful operations.
     *     @type \Google\Ads\GoogleAds\V15\Resources\AdGroupCriterionCustomizer $ad_group_criterion_customizer
     *           The mutated AdGroupCriterionCustomizer with only mutable fields after
     *           mutate. The field will only be returned when response_content_type is set
     *           to "MUTABLE_RESOURCE".
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Google\Ads\GoogleAds\V15\Services\AdGroupCriterionCustomizerService::initOnce();
        parent::__construct($data);
    }

    /**
     * Returned for successful operations.
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getResourceName()
    {
        return $this->resource_name;
    }

    /**
     * Returned for successful operations.
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.resource_reference) = {</code>
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
     * The mutated AdGroupCriterionCustomizer with only mutable fields after
     * mutate. The field will only be returned when response_content_type is set
     * to "MUTABLE_RESOURCE".
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.resources.AdGroupCriterionCustomizer ad_group_criterion_customizer = 2;</code>
     * @return \Google\Ads\GoogleAds\V15\Resources\AdGroupCriterionCustomizer|null
     */
    public function getAdGroupCriterionCustomizer()
    {
        return $this->ad_group_criterion_customizer;
    }

    public function hasAdGroupCriterionCustomizer()
    {
        return isset($this->ad_group_criterion_customizer);
    }

    public function clearAdGroupCriterionCustomizer()
    {
        unset($this->ad_group_criterion_customizer);
    }

    /**
     * The mutated AdGroupCriterionCustomizer with only mutable fields after
     * mutate. The field will only be returned when response_content_type is set
     * to "MUTABLE_RESOURCE".
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.resources.AdGroupCriterionCustomizer ad_group_criterion_customizer = 2;</code>
     * @param \Google\Ads\GoogleAds\V15\Resources\AdGroupCriterionCustomizer $var
     * @return $this
     */
    public function setAdGroupCriterionCustomizer($var)
    {
        GPBUtil::checkMessage($var, \Google\Ads\GoogleAds\V15\Resources\AdGroupCriterionCustomizer::class);
        $this->ad_group_criterion_customizer = $var;

        return $this;
    }

}

