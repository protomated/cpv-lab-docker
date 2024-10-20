<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/services/conversion_upload_service.proto

namespace Google\Ads\GoogleAds\V16\Services;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * A click conversion.
 *
 * Generated from protobuf message <code>google.ads.googleads.v16.services.ClickConversion</code>
 */
class ClickConversion extends \Google\Protobuf\Internal\Message
{
    /**
     * The Google click ID (gclid) associated with this conversion.
     *
     * Generated from protobuf field <code>optional string gclid = 9;</code>
     */
    protected $gclid = null;
    /**
     * The click identifier for clicks associated with app conversions and
     * originating from iOS devices starting with iOS14.
     *
     * Generated from protobuf field <code>string gbraid = 18;</code>
     */
    protected $gbraid = '';
    /**
     * The click identifier for clicks associated with web conversions and
     * originating from iOS devices starting with iOS14.
     *
     * Generated from protobuf field <code>string wbraid = 19;</code>
     */
    protected $wbraid = '';
    /**
     * Resource name of the conversion action associated with this conversion.
     * Note: Although this resource name consists of a customer id and a
     * conversion action id, validation will ignore the customer id and use the
     * conversion action id as the sole identifier of the conversion action.
     *
     * Generated from protobuf field <code>optional string conversion_action = 10;</code>
     */
    protected $conversion_action = null;
    /**
     * The date time at which the conversion occurred. Must be after
     * the click time. The timezone must be specified. The format is
     * "yyyy-mm-dd hh:mm:ss+|-hh:mm", for example, "2019-01-01 12:32:45-08:00".
     *
     * Generated from protobuf field <code>optional string conversion_date_time = 11;</code>
     */
    protected $conversion_date_time = null;
    /**
     * The value of the conversion for the advertiser.
     *
     * Generated from protobuf field <code>optional double conversion_value = 12;</code>
     */
    protected $conversion_value = null;
    /**
     * Currency associated with the conversion value. This is the ISO 4217
     * 3-character currency code. For example: USD, EUR.
     *
     * Generated from protobuf field <code>optional string currency_code = 13;</code>
     */
    protected $currency_code = null;
    /**
     * The order ID associated with the conversion. An order id can only be used
     * for one conversion per conversion action.
     *
     * Generated from protobuf field <code>optional string order_id = 14;</code>
     */
    protected $order_id = null;
    /**
     * Additional data about externally attributed conversions. This field
     * is required for conversions with an externally attributed conversion
     * action, but should not be set otherwise.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.services.ExternalAttributionData external_attribution_data = 7;</code>
     */
    protected $external_attribution_data = null;
    /**
     * The custom variables associated with this conversion.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.services.CustomVariable custom_variables = 15;</code>
     */
    private $custom_variables;
    /**
     * The cart data associated with this conversion.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.services.CartData cart_data = 16;</code>
     */
    protected $cart_data = null;
    /**
     * The user identifiers associated with this conversion. Only hashed_email and
     * hashed_phone_number are supported for conversion uploads. The maximum
     * number of user identifiers for each conversion is 5.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.UserIdentifier user_identifiers = 17;</code>
     */
    private $user_identifiers;
    /**
     * The environment this conversion was recorded on, for example, App or Web.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.ConversionEnvironmentEnum.ConversionEnvironment conversion_environment = 20;</code>
     */
    protected $conversion_environment = 0;
    /**
     * The consent setting for the event.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.common.Consent consent = 23;</code>
     */
    protected $consent = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type string $gclid
     *           The Google click ID (gclid) associated with this conversion.
     * @type string $gbraid
     *           The click identifier for clicks associated with app conversions and
     *           originating from iOS devices starting with iOS14.
     * @type string $wbraid
     *           The click identifier for clicks associated with web conversions and
     *           originating from iOS devices starting with iOS14.
     * @type string $conversion_action
     *           Resource name of the conversion action associated with this conversion.
     *           Note: Although this resource name consists of a customer id and a
     *           conversion action id, validation will ignore the customer id and use the
     *           conversion action id as the sole identifier of the conversion action.
     * @type string $conversion_date_time
     *           The date time at which the conversion occurred. Must be after
     *           the click time. The timezone must be specified. The format is
     *           "yyyy-mm-dd hh:mm:ss+|-hh:mm", for example, "2019-01-01 12:32:45-08:00".
     * @type float $conversion_value
     *           The value of the conversion for the advertiser.
     * @type string $currency_code
     *           Currency associated with the conversion value. This is the ISO 4217
     *           3-character currency code. For example: USD, EUR.
     * @type string $order_id
     *           The order ID associated with the conversion. An order id can only be used
     *           for one conversion per conversion action.
     * @type \Google\Ads\GoogleAds\V16\Services\ExternalAttributionData $external_attribution_data
     *           Additional data about externally attributed conversions. This field
     *           is required for conversions with an externally attributed conversion
     *           action, but should not be set otherwise.
     * @type array<\Google\Ads\GoogleAds\V16\Services\CustomVariable>|\Google\Protobuf\Internal\RepeatedField $custom_variables
     *           The custom variables associated with this conversion.
     * @type \Google\Ads\GoogleAds\V16\Services\CartData $cart_data
     *           The cart data associated with this conversion.
     * @type array<\Google\Ads\GoogleAds\V16\Common\UserIdentifier>|\Google\Protobuf\Internal\RepeatedField $user_identifiers
     *           The user identifiers associated with this conversion. Only hashed_email and
     *           hashed_phone_number are supported for conversion uploads. The maximum
     *           number of user identifiers for each conversion is 5.
     * @type int $conversion_environment
     *           The environment this conversion was recorded on, for example, App or Web.
     * @type \Google\Ads\GoogleAds\V16\Common\Consent $consent
     *           The consent setting for the event.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V16\Services\ConversionUploadService::initOnce();
        parent::__construct($data);
    }

    /**
     * The Google click ID (gclid) associated with this conversion.
     *
     * Generated from protobuf field <code>optional string gclid = 9;</code>
     * @return string
     */
    public function getGclid()
    {
        return isset($this->gclid) ? $this->gclid : '';
    }

    public function hasGclid()
    {
        return isset($this->gclid);
    }

    public function clearGclid()
    {
        unset($this->gclid);
    }

    /**
     * The Google click ID (gclid) associated with this conversion.
     *
     * Generated from protobuf field <code>optional string gclid = 9;</code>
     * @param string $var
     * @return $this
     */
    public function setGclid($var)
    {
        GPBUtil::checkString($var, True);
        $this->gclid = $var;

        return $this;
    }

    /**
     * The click identifier for clicks associated with app conversions and
     * originating from iOS devices starting with iOS14.
     *
     * Generated from protobuf field <code>string gbraid = 18;</code>
     * @return string
     */
    public function getGbraid()
    {
        return $this->gbraid;
    }

    /**
     * The click identifier for clicks associated with app conversions and
     * originating from iOS devices starting with iOS14.
     *
     * Generated from protobuf field <code>string gbraid = 18;</code>
     * @param string $var
     * @return $this
     */
    public function setGbraid($var)
    {
        GPBUtil::checkString($var, True);
        $this->gbraid = $var;

        return $this;
    }

    /**
     * The click identifier for clicks associated with web conversions and
     * originating from iOS devices starting with iOS14.
     *
     * Generated from protobuf field <code>string wbraid = 19;</code>
     * @return string
     */
    public function getWbraid()
    {
        return $this->wbraid;
    }

    /**
     * The click identifier for clicks associated with web conversions and
     * originating from iOS devices starting with iOS14.
     *
     * Generated from protobuf field <code>string wbraid = 19;</code>
     * @param string $var
     * @return $this
     */
    public function setWbraid($var)
    {
        GPBUtil::checkString($var, True);
        $this->wbraid = $var;

        return $this;
    }

    /**
     * Resource name of the conversion action associated with this conversion.
     * Note: Although this resource name consists of a customer id and a
     * conversion action id, validation will ignore the customer id and use the
     * conversion action id as the sole identifier of the conversion action.
     *
     * Generated from protobuf field <code>optional string conversion_action = 10;</code>
     * @return string
     */
    public function getConversionAction()
    {
        return isset($this->conversion_action) ? $this->conversion_action : '';
    }

    public function hasConversionAction()
    {
        return isset($this->conversion_action);
    }

    public function clearConversionAction()
    {
        unset($this->conversion_action);
    }

    /**
     * Resource name of the conversion action associated with this conversion.
     * Note: Although this resource name consists of a customer id and a
     * conversion action id, validation will ignore the customer id and use the
     * conversion action id as the sole identifier of the conversion action.
     *
     * Generated from protobuf field <code>optional string conversion_action = 10;</code>
     * @param string $var
     * @return $this
     */
    public function setConversionAction($var)
    {
        GPBUtil::checkString($var, True);
        $this->conversion_action = $var;

        return $this;
    }

    /**
     * The date time at which the conversion occurred. Must be after
     * the click time. The timezone must be specified. The format is
     * "yyyy-mm-dd hh:mm:ss+|-hh:mm", for example, "2019-01-01 12:32:45-08:00".
     *
     * Generated from protobuf field <code>optional string conversion_date_time = 11;</code>
     * @return string
     */
    public function getConversionDateTime()
    {
        return isset($this->conversion_date_time) ? $this->conversion_date_time : '';
    }

    public function hasConversionDateTime()
    {
        return isset($this->conversion_date_time);
    }

    public function clearConversionDateTime()
    {
        unset($this->conversion_date_time);
    }

    /**
     * The date time at which the conversion occurred. Must be after
     * the click time. The timezone must be specified. The format is
     * "yyyy-mm-dd hh:mm:ss+|-hh:mm", for example, "2019-01-01 12:32:45-08:00".
     *
     * Generated from protobuf field <code>optional string conversion_date_time = 11;</code>
     * @param string $var
     * @return $this
     */
    public function setConversionDateTime($var)
    {
        GPBUtil::checkString($var, True);
        $this->conversion_date_time = $var;

        return $this;
    }

    /**
     * The value of the conversion for the advertiser.
     *
     * Generated from protobuf field <code>optional double conversion_value = 12;</code>
     * @return float
     */
    public function getConversionValue()
    {
        return isset($this->conversion_value) ? $this->conversion_value : 0.0;
    }

    public function hasConversionValue()
    {
        return isset($this->conversion_value);
    }

    public function clearConversionValue()
    {
        unset($this->conversion_value);
    }

    /**
     * The value of the conversion for the advertiser.
     *
     * Generated from protobuf field <code>optional double conversion_value = 12;</code>
     * @param float $var
     * @return $this
     */
    public function setConversionValue($var)
    {
        GPBUtil::checkDouble($var);
        $this->conversion_value = $var;

        return $this;
    }

    /**
     * Currency associated with the conversion value. This is the ISO 4217
     * 3-character currency code. For example: USD, EUR.
     *
     * Generated from protobuf field <code>optional string currency_code = 13;</code>
     * @return string
     */
    public function getCurrencyCode()
    {
        return isset($this->currency_code) ? $this->currency_code : '';
    }

    public function hasCurrencyCode()
    {
        return isset($this->currency_code);
    }

    public function clearCurrencyCode()
    {
        unset($this->currency_code);
    }

    /**
     * Currency associated with the conversion value. This is the ISO 4217
     * 3-character currency code. For example: USD, EUR.
     *
     * Generated from protobuf field <code>optional string currency_code = 13;</code>
     * @param string $var
     * @return $this
     */
    public function setCurrencyCode($var)
    {
        GPBUtil::checkString($var, True);
        $this->currency_code = $var;

        return $this;
    }

    /**
     * The order ID associated with the conversion. An order id can only be used
     * for one conversion per conversion action.
     *
     * Generated from protobuf field <code>optional string order_id = 14;</code>
     * @return string
     */
    public function getOrderId()
    {
        return isset($this->order_id) ? $this->order_id : '';
    }

    public function hasOrderId()
    {
        return isset($this->order_id);
    }

    public function clearOrderId()
    {
        unset($this->order_id);
    }

    /**
     * The order ID associated with the conversion. An order id can only be used
     * for one conversion per conversion action.
     *
     * Generated from protobuf field <code>optional string order_id = 14;</code>
     * @param string $var
     * @return $this
     */
    public function setOrderId($var)
    {
        GPBUtil::checkString($var, True);
        $this->order_id = $var;

        return $this;
    }

    /**
     * Additional data about externally attributed conversions. This field
     * is required for conversions with an externally attributed conversion
     * action, but should not be set otherwise.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.services.ExternalAttributionData external_attribution_data = 7;</code>
     * @return \Google\Ads\GoogleAds\V16\Services\ExternalAttributionData|null
     */
    public function getExternalAttributionData()
    {
        return $this->external_attribution_data;
    }

    public function hasExternalAttributionData()
    {
        return isset($this->external_attribution_data);
    }

    public function clearExternalAttributionData()
    {
        unset($this->external_attribution_data);
    }

    /**
     * Additional data about externally attributed conversions. This field
     * is required for conversions with an externally attributed conversion
     * action, but should not be set otherwise.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.services.ExternalAttributionData external_attribution_data = 7;</code>
     * @param \Google\Ads\GoogleAds\V16\Services\ExternalAttributionData $var
     * @return $this
     */
    public function setExternalAttributionData($var)
    {
        GPBUtil::checkMessage($var, \Google\Ads\GoogleAds\V16\Services\ExternalAttributionData::class);
        $this->external_attribution_data = $var;

        return $this;
    }

    /**
     * The custom variables associated with this conversion.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.services.CustomVariable custom_variables = 15;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getCustomVariables()
    {
        return $this->custom_variables;
    }

    /**
     * The custom variables associated with this conversion.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.services.CustomVariable custom_variables = 15;</code>
     * @param array<\Google\Ads\GoogleAds\V16\Services\CustomVariable>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setCustomVariables($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Ads\GoogleAds\V16\Services\CustomVariable::class);
        $this->custom_variables = $arr;

        return $this;
    }

    /**
     * The cart data associated with this conversion.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.services.CartData cart_data = 16;</code>
     * @return \Google\Ads\GoogleAds\V16\Services\CartData|null
     */
    public function getCartData()
    {
        return $this->cart_data;
    }

    public function hasCartData()
    {
        return isset($this->cart_data);
    }

    public function clearCartData()
    {
        unset($this->cart_data);
    }

    /**
     * The cart data associated with this conversion.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.services.CartData cart_data = 16;</code>
     * @param \Google\Ads\GoogleAds\V16\Services\CartData $var
     * @return $this
     */
    public function setCartData($var)
    {
        GPBUtil::checkMessage($var, \Google\Ads\GoogleAds\V16\Services\CartData::class);
        $this->cart_data = $var;

        return $this;
    }

    /**
     * The user identifiers associated with this conversion. Only hashed_email and
     * hashed_phone_number are supported for conversion uploads. The maximum
     * number of user identifiers for each conversion is 5.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.UserIdentifier user_identifiers = 17;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getUserIdentifiers()
    {
        return $this->user_identifiers;
    }

    /**
     * The user identifiers associated with this conversion. Only hashed_email and
     * hashed_phone_number are supported for conversion uploads. The maximum
     * number of user identifiers for each conversion is 5.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.UserIdentifier user_identifiers = 17;</code>
     * @param array<\Google\Ads\GoogleAds\V16\Common\UserIdentifier>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setUserIdentifiers($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Ads\GoogleAds\V16\Common\UserIdentifier::class);
        $this->user_identifiers = $arr;

        return $this;
    }

    /**
     * The environment this conversion was recorded on, for example, App or Web.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.ConversionEnvironmentEnum.ConversionEnvironment conversion_environment = 20;</code>
     * @return int
     */
    public function getConversionEnvironment()
    {
        return $this->conversion_environment;
    }

    /**
     * The environment this conversion was recorded on, for example, App or Web.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.ConversionEnvironmentEnum.ConversionEnvironment conversion_environment = 20;</code>
     * @param int $var
     * @return $this
     */
    public function setConversionEnvironment($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V16\Enums\ConversionEnvironmentEnum\ConversionEnvironment::class);
        $this->conversion_environment = $var;

        return $this;
    }

    /**
     * The consent setting for the event.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.common.Consent consent = 23;</code>
     * @return \Google\Ads\GoogleAds\V16\Common\Consent|null
     */
    public function getConsent()
    {
        return $this->consent;
    }

    public function hasConsent()
    {
        return isset($this->consent);
    }

    public function clearConsent()
    {
        unset($this->consent);
    }

    /**
     * The consent setting for the event.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.common.Consent consent = 23;</code>
     * @param \Google\Ads\GoogleAds\V16\Common\Consent $var
     * @return $this
     */
    public function setConsent($var)
    {
        GPBUtil::checkMessage($var, \Google\Ads\GoogleAds\V16\Common\Consent::class);
        $this->consent = $var;

        return $this;
    }

}

