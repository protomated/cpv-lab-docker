<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v17/common/asset_set_types.proto

namespace Google\Ads\GoogleAds\V17\Common;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Business Profile location group business name filter.
 *
 * Generated from protobuf message <code>google.ads.googleads.v17.common.BusinessProfileBusinessNameFilter</code>
 */
class BusinessProfileBusinessNameFilter extends \Google\Protobuf\Internal\Message
{
    /**
     * Business name string to use for filtering.
     *
     * Generated from protobuf field <code>string business_name = 1;</code>
     */
    protected $business_name = '';
    /**
     * The type of string matching to use when filtering with business_name.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v17.enums.LocationStringFilterTypeEnum.LocationStringFilterType filter_type = 2;</code>
     */
    protected $filter_type = 0;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type string $business_name
     *           Business name string to use for filtering.
     * @type int $filter_type
     *           The type of string matching to use when filtering with business_name.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V17\Common\AssetSetTypes::initOnce();
        parent::__construct($data);
    }

    /**
     * Business name string to use for filtering.
     *
     * Generated from protobuf field <code>string business_name = 1;</code>
     * @return string
     */
    public function getBusinessName()
    {
        return $this->business_name;
    }

    /**
     * Business name string to use for filtering.
     *
     * Generated from protobuf field <code>string business_name = 1;</code>
     * @param string $var
     * @return $this
     */
    public function setBusinessName($var)
    {
        GPBUtil::checkString($var, True);
        $this->business_name = $var;

        return $this;
    }

    /**
     * The type of string matching to use when filtering with business_name.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v17.enums.LocationStringFilterTypeEnum.LocationStringFilterType filter_type = 2;</code>
     * @return int
     */
    public function getFilterType()
    {
        return $this->filter_type;
    }

    /**
     * The type of string matching to use when filtering with business_name.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v17.enums.LocationStringFilterTypeEnum.LocationStringFilterType filter_type = 2;</code>
     * @param int $var
     * @return $this
     */
    public function setFilterType($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V17\Enums\LocationStringFilterTypeEnum\LocationStringFilterType::class);
        $this->filter_type = $var;

        return $this;
    }

}

