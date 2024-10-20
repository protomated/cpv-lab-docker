<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/services/product_link_service.proto

namespace Google\Ads\GoogleAds\V16\Services;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Response message for
 * [ProductLinkService.CreateProductLink][google.ads.googleads.v16.services.ProductLinkService.CreateProductLink].
 *
 * Generated from protobuf message <code>google.ads.googleads.v16.services.CreateProductLinkResponse</code>
 */
class CreateProductLinkResponse extends \Google\Protobuf\Internal\Message
{
    /**
     * Returned for successful operations. Resource name of the product link.
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.resource_reference) = {</code>
     */
    protected $resource_name = '';

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type string $resource_name
     *           Returned for successful operations. Resource name of the product link.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V16\Services\ProductLinkService::initOnce();
        parent::__construct($data);
    }

    /**
     * Returned for successful operations. Resource name of the product link.
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getResourceName()
    {
        return $this->resource_name;
    }

    /**
     * Returned for successful operations. Resource name of the product link.
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

}

