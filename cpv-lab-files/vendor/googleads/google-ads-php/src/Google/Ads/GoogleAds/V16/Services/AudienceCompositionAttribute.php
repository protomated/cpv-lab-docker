<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/services/audience_insights_service.proto

namespace Google\Ads\GoogleAds\V16\Services;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * An audience attribute with metadata and metrics.
 *
 * Generated from protobuf message <code>google.ads.googleads.v16.services.AudienceCompositionAttribute</code>
 */
class AudienceCompositionAttribute extends \Google\Protobuf\Internal\Message
{
    /**
     * The attribute with its metadata.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.services.AudienceInsightsAttributeMetadata attribute_metadata = 1;</code>
     */
    protected $attribute_metadata = null;
    /**
     * Share and index metrics for the attribute.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.services.AudienceCompositionMetrics metrics = 2;</code>
     */
    protected $metrics = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type \Google\Ads\GoogleAds\V16\Services\AudienceInsightsAttributeMetadata $attribute_metadata
     *           The attribute with its metadata.
     * @type \Google\Ads\GoogleAds\V16\Services\AudienceCompositionMetrics $metrics
     *           Share and index metrics for the attribute.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V16\Services\AudienceInsightsService::initOnce();
        parent::__construct($data);
    }

    /**
     * The attribute with its metadata.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.services.AudienceInsightsAttributeMetadata attribute_metadata = 1;</code>
     * @return \Google\Ads\GoogleAds\V16\Services\AudienceInsightsAttributeMetadata|null
     */
    public function getAttributeMetadata()
    {
        return $this->attribute_metadata;
    }

    public function hasAttributeMetadata()
    {
        return isset($this->attribute_metadata);
    }

    public function clearAttributeMetadata()
    {
        unset($this->attribute_metadata);
    }

    /**
     * The attribute with its metadata.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.services.AudienceInsightsAttributeMetadata attribute_metadata = 1;</code>
     * @param \Google\Ads\GoogleAds\V16\Services\AudienceInsightsAttributeMetadata $var
     * @return $this
     */
    public function setAttributeMetadata($var)
    {
        GPBUtil::checkMessage($var, \Google\Ads\GoogleAds\V16\Services\AudienceInsightsAttributeMetadata::class);
        $this->attribute_metadata = $var;

        return $this;
    }

    /**
     * Share and index metrics for the attribute.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.services.AudienceCompositionMetrics metrics = 2;</code>
     * @return \Google\Ads\GoogleAds\V16\Services\AudienceCompositionMetrics|null
     */
    public function getMetrics()
    {
        return $this->metrics;
    }

    public function hasMetrics()
    {
        return isset($this->metrics);
    }

    public function clearMetrics()
    {
        unset($this->metrics);
    }

    /**
     * Share and index metrics for the attribute.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.services.AudienceCompositionMetrics metrics = 2;</code>
     * @param \Google\Ads\GoogleAds\V16\Services\AudienceCompositionMetrics $var
     * @return $this
     */
    public function setMetrics($var)
    {
        GPBUtil::checkMessage($var, \Google\Ads\GoogleAds\V16\Services\AudienceCompositionMetrics::class);
        $this->metrics = $var;

        return $this;
    }

}

