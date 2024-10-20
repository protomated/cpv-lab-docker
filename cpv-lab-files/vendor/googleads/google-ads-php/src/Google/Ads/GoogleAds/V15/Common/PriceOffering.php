<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/common/asset_types.proto

namespace Google\Ads\GoogleAds\V15\Common;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * A single price offering within a PriceAsset.
 *
 * Generated from protobuf message <code>google.ads.googleads.v15.common.PriceOffering</code>
 */
class PriceOffering extends \Google\Protobuf\Internal\Message
{
    /**
     * Required. The header of the price offering.
     * The length of this string should be between 1 and 25, inclusive.
     *
     * Generated from protobuf field <code>string header = 1 [(.google.api.field_behavior) = REQUIRED];</code>
     */
    protected $header = '';
    /**
     * Required. The description of the price offering.
     * The length of this string should be between 1 and 25, inclusive.
     *
     * Generated from protobuf field <code>string description = 2 [(.google.api.field_behavior) = REQUIRED];</code>
     */
    protected $description = '';
    /**
     * Required. The price value of the price offering.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.common.Money price = 3 [(.google.api.field_behavior) = REQUIRED];</code>
     */
    protected $price = null;
    /**
     * The price unit of the price offering.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit unit = 4;</code>
     */
    protected $unit = 0;
    /**
     * Required. The final URL after all cross domain redirects.
     *
     * Generated from protobuf field <code>string final_url = 5 [(.google.api.field_behavior) = REQUIRED];</code>
     */
    protected $final_url = '';
    /**
     * The final mobile URL after all cross domain redirects.
     *
     * Generated from protobuf field <code>string final_mobile_url = 6;</code>
     */
    protected $final_mobile_url = '';

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $header
     *           Required. The header of the price offering.
     *           The length of this string should be between 1 and 25, inclusive.
     *     @type string $description
     *           Required. The description of the price offering.
     *           The length of this string should be between 1 and 25, inclusive.
     *     @type \Google\Ads\GoogleAds\V15\Common\Money $price
     *           Required. The price value of the price offering.
     *     @type int $unit
     *           The price unit of the price offering.
     *     @type string $final_url
     *           Required. The final URL after all cross domain redirects.
     *     @type string $final_mobile_url
     *           The final mobile URL after all cross domain redirects.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Google\Ads\GoogleAds\V15\Common\AssetTypes::initOnce();
        parent::__construct($data);
    }

    /**
     * Required. The header of the price offering.
     * The length of this string should be between 1 and 25, inclusive.
     *
     * Generated from protobuf field <code>string header = 1 [(.google.api.field_behavior) = REQUIRED];</code>
     * @return string
     */
    public function getHeader()
    {
        return $this->header;
    }

    /**
     * Required. The header of the price offering.
     * The length of this string should be between 1 and 25, inclusive.
     *
     * Generated from protobuf field <code>string header = 1 [(.google.api.field_behavior) = REQUIRED];</code>
     * @param string $var
     * @return $this
     */
    public function setHeader($var)
    {
        GPBUtil::checkString($var, True);
        $this->header = $var;

        return $this;
    }

    /**
     * Required. The description of the price offering.
     * The length of this string should be between 1 and 25, inclusive.
     *
     * Generated from protobuf field <code>string description = 2 [(.google.api.field_behavior) = REQUIRED];</code>
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Required. The description of the price offering.
     * The length of this string should be between 1 and 25, inclusive.
     *
     * Generated from protobuf field <code>string description = 2 [(.google.api.field_behavior) = REQUIRED];</code>
     * @param string $var
     * @return $this
     */
    public function setDescription($var)
    {
        GPBUtil::checkString($var, True);
        $this->description = $var;

        return $this;
    }

    /**
     * Required. The price value of the price offering.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.common.Money price = 3 [(.google.api.field_behavior) = REQUIRED];</code>
     * @return \Google\Ads\GoogleAds\V15\Common\Money|null
     */
    public function getPrice()
    {
        return $this->price;
    }

    public function hasPrice()
    {
        return isset($this->price);
    }

    public function clearPrice()
    {
        unset($this->price);
    }

    /**
     * Required. The price value of the price offering.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.common.Money price = 3 [(.google.api.field_behavior) = REQUIRED];</code>
     * @param \Google\Ads\GoogleAds\V15\Common\Money $var
     * @return $this
     */
    public function setPrice($var)
    {
        GPBUtil::checkMessage($var, \Google\Ads\GoogleAds\V15\Common\Money::class);
        $this->price = $var;

        return $this;
    }

    /**
     * The price unit of the price offering.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit unit = 4;</code>
     * @return int
     */
    public function getUnit()
    {
        return $this->unit;
    }

    /**
     * The price unit of the price offering.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit unit = 4;</code>
     * @param int $var
     * @return $this
     */
    public function setUnit($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V15\Enums\PriceExtensionPriceUnitEnum\PriceExtensionPriceUnit::class);
        $this->unit = $var;

        return $this;
    }

    /**
     * Required. The final URL after all cross domain redirects.
     *
     * Generated from protobuf field <code>string final_url = 5 [(.google.api.field_behavior) = REQUIRED];</code>
     * @return string
     */
    public function getFinalUrl()
    {
        return $this->final_url;
    }

    /**
     * Required. The final URL after all cross domain redirects.
     *
     * Generated from protobuf field <code>string final_url = 5 [(.google.api.field_behavior) = REQUIRED];</code>
     * @param string $var
     * @return $this
     */
    public function setFinalUrl($var)
    {
        GPBUtil::checkString($var, True);
        $this->final_url = $var;

        return $this;
    }

    /**
     * The final mobile URL after all cross domain redirects.
     *
     * Generated from protobuf field <code>string final_mobile_url = 6;</code>
     * @return string
     */
    public function getFinalMobileUrl()
    {
        return $this->final_mobile_url;
    }

    /**
     * The final mobile URL after all cross domain redirects.
     *
     * Generated from protobuf field <code>string final_mobile_url = 6;</code>
     * @param string $var
     * @return $this
     */
    public function setFinalMobileUrl($var)
    {
        GPBUtil::checkString($var, True);
        $this->final_mobile_url = $var;

        return $this;
    }

}

