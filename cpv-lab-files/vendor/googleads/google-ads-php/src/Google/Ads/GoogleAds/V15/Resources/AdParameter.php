<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/resources/ad_parameter.proto

namespace Google\Ads\GoogleAds\V15\Resources;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * An ad parameter that is used to update numeric values (such as prices or
 * inventory levels) in any text line of an ad (including URLs). There can
 * be a maximum of two AdParameters per ad group criterion. (One with
 * parameter_index = 1 and one with parameter_index = 2.)
 * In the ad the parameters are referenced by a placeholder of the form
 * "{param#:value}". For example, "{param1:$17}"
 *
 * Generated from protobuf message <code>google.ads.googleads.v15.resources.AdParameter</code>
 */
class AdParameter extends \Google\Protobuf\Internal\Message
{
    /**
     * Immutable. The resource name of the ad parameter.
     * Ad parameter resource names have the form:
     * `customers/{customer_id}/adParameters/{ad_group_id}~{criterion_id}~{parameter_index}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     */
    protected $resource_name = '';
    /**
     * Immutable. The ad group criterion that this ad parameter belongs to.
     *
     * Generated from protobuf field <code>optional string ad_group_criterion = 5 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     */
    protected $ad_group_criterion = null;
    /**
     * Immutable. The unique index of this ad parameter. Must be either 1 or 2.
     *
     * Generated from protobuf field <code>optional int64 parameter_index = 6 [(.google.api.field_behavior) = IMMUTABLE];</code>
     */
    protected $parameter_index = null;
    /**
     * Numeric value to insert into the ad text. The following restrictions
     *  apply:
     *  - Can use comma or period as a separator, with an optional period or
     *    comma (respectively) for fractional values. For example, 1,000,000.00
     *    and 2.000.000,10 are valid.
     *  - Can be prepended or appended with a currency symbol. For example,
     *    $99.99 is valid.
     *  - Can be prepended or appended with a currency code. For example, 99.99USD
     *    and EUR200 are valid.
     *  - Can use '%'. For example, 1.0% and 1,0% are valid.
     *  - Can use plus or minus. For example, -10.99 and 25+ are valid.
     *  - Can use '/' between two numbers. For example 4/1 and 0.95/0.45 are
     *    valid.
     *
     * Generated from protobuf field <code>optional string insertion_text = 7;</code>
     */
    protected $insertion_text = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type string $resource_name
     *           Immutable. The resource name of the ad parameter.
     *           Ad parameter resource names have the form:
     *           `customers/{customer_id}/adParameters/{ad_group_id}~{criterion_id}~{parameter_index}`
     * @type string $ad_group_criterion
     *           Immutable. The ad group criterion that this ad parameter belongs to.
     * @type int|string $parameter_index
     *           Immutable. The unique index of this ad parameter. Must be either 1 or 2.
     * @type string $insertion_text
     *           Numeric value to insert into the ad text. The following restrictions
     *            apply:
     *            - Can use comma or period as a separator, with an optional period or
     *              comma (respectively) for fractional values. For example, 1,000,000.00
     *              and 2.000.000,10 are valid.
     *            - Can be prepended or appended with a currency symbol. For example,
     *              $99.99 is valid.
     *            - Can be prepended or appended with a currency code. For example, 99.99USD
     *              and EUR200 are valid.
     *            - Can use '%'. For example, 1.0% and 1,0% are valid.
     *            - Can use plus or minus. For example, -10.99 and 25+ are valid.
     *            - Can use '/' between two numbers. For example 4/1 and 0.95/0.45 are
     *              valid.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V15\Resources\AdParameter::initOnce();
        parent::__construct($data);
    }

    /**
     * Immutable. The resource name of the ad parameter.
     * Ad parameter resource names have the form:
     * `customers/{customer_id}/adParameters/{ad_group_id}~{criterion_id}~{parameter_index}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getResourceName()
    {
        return $this->resource_name;
    }

    /**
     * Immutable. The resource name of the ad parameter.
     * Ad parameter resource names have the form:
     * `customers/{customer_id}/adParameters/{ad_group_id}~{criterion_id}~{parameter_index}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
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
     * Immutable. The ad group criterion that this ad parameter belongs to.
     *
     * Generated from protobuf field <code>optional string ad_group_criterion = 5 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getAdGroupCriterion()
    {
        return isset($this->ad_group_criterion) ? $this->ad_group_criterion : '';
    }

    public function hasAdGroupCriterion()
    {
        return isset($this->ad_group_criterion);
    }

    public function clearAdGroupCriterion()
    {
        unset($this->ad_group_criterion);
    }

    /**
     * Immutable. The ad group criterion that this ad parameter belongs to.
     *
     * Generated from protobuf field <code>optional string ad_group_criterion = 5 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @param string $var
     * @return $this
     */
    public function setAdGroupCriterion($var)
    {
        GPBUtil::checkString($var, True);
        $this->ad_group_criterion = $var;

        return $this;
    }

    /**
     * Immutable. The unique index of this ad parameter. Must be either 1 or 2.
     *
     * Generated from protobuf field <code>optional int64 parameter_index = 6 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @return int|string
     */
    public function getParameterIndex()
    {
        return isset($this->parameter_index) ? $this->parameter_index : 0;
    }

    public function hasParameterIndex()
    {
        return isset($this->parameter_index);
    }

    public function clearParameterIndex()
    {
        unset($this->parameter_index);
    }

    /**
     * Immutable. The unique index of this ad parameter. Must be either 1 or 2.
     *
     * Generated from protobuf field <code>optional int64 parameter_index = 6 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @param int|string $var
     * @return $this
     */
    public function setParameterIndex($var)
    {
        GPBUtil::checkInt64($var);
        $this->parameter_index = $var;

        return $this;
    }

    /**
     * Numeric value to insert into the ad text. The following restrictions
     *  apply:
     *  - Can use comma or period as a separator, with an optional period or
     *    comma (respectively) for fractional values. For example, 1,000,000.00
     *    and 2.000.000,10 are valid.
     *  - Can be prepended or appended with a currency symbol. For example,
     *    $99.99 is valid.
     *  - Can be prepended or appended with a currency code. For example, 99.99USD
     *    and EUR200 are valid.
     *  - Can use '%'. For example, 1.0% and 1,0% are valid.
     *  - Can use plus or minus. For example, -10.99 and 25+ are valid.
     *  - Can use '/' between two numbers. For example 4/1 and 0.95/0.45 are
     *    valid.
     *
     * Generated from protobuf field <code>optional string insertion_text = 7;</code>
     * @return string
     */
    public function getInsertionText()
    {
        return isset($this->insertion_text) ? $this->insertion_text : '';
    }

    public function hasInsertionText()
    {
        return isset($this->insertion_text);
    }

    public function clearInsertionText()
    {
        unset($this->insertion_text);
    }

    /**
     * Numeric value to insert into the ad text. The following restrictions
     *  apply:
     *  - Can use comma or period as a separator, with an optional period or
     *    comma (respectively) for fractional values. For example, 1,000,000.00
     *    and 2.000.000,10 are valid.
     *  - Can be prepended or appended with a currency symbol. For example,
     *    $99.99 is valid.
     *  - Can be prepended or appended with a currency code. For example, 99.99USD
     *    and EUR200 are valid.
     *  - Can use '%'. For example, 1.0% and 1,0% are valid.
     *  - Can use plus or minus. For example, -10.99 and 25+ are valid.
     *  - Can use '/' between two numbers. For example 4/1 and 0.95/0.45 are
     *    valid.
     *
     * Generated from protobuf field <code>optional string insertion_text = 7;</code>
     * @param string $var
     * @return $this
     */
    public function setInsertionText($var)
    {
        GPBUtil::checkString($var, True);
        $this->insertion_text = $var;

        return $this;
    }

}

