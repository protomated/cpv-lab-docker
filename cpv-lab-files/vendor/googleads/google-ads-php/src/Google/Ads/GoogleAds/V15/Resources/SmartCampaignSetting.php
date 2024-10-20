<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/resources/smart_campaign_setting.proto

namespace Google\Ads\GoogleAds\V15\Resources;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Settings for configuring Smart campaigns.
 *
 * Generated from protobuf message <code>google.ads.googleads.v15.resources.SmartCampaignSetting</code>
 */
class SmartCampaignSetting extends \Google\Protobuf\Internal\Message
{
    /**
     * Immutable. The resource name of the Smart campaign setting.
     * Smart campaign setting resource names have the form:
     * `customers/{customer_id}/smartCampaignSettings/{campaign_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     */
    protected $resource_name = '';
    /**
     * Output only. The campaign to which these settings apply.
     *
     * Generated from protobuf field <code>string campaign = 2 [(.google.api.field_behavior) = OUTPUT_ONLY, (.google.api.resource_reference) = {</code>
     */
    protected $campaign = '';
    /**
     * Phone number and country code.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.resources.SmartCampaignSetting.PhoneNumber phone_number = 3;</code>
     */
    protected $phone_number = null;
    /**
     * The language code to advertise in from the set of
     * [supported language codes]
     * (https://developers.google.com/google-ads/api/reference/data/codes-formats#languages).
     *
     * Generated from protobuf field <code>string advertising_language_code = 7;</code>
     */
    protected $advertising_language_code = '';
    protected $landing_page;
    protected $business_setting;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $resource_name
     *           Immutable. The resource name of the Smart campaign setting.
     *           Smart campaign setting resource names have the form:
     *           `customers/{customer_id}/smartCampaignSettings/{campaign_id}`
     *     @type string $campaign
     *           Output only. The campaign to which these settings apply.
     *     @type \Google\Ads\GoogleAds\V15\Resources\SmartCampaignSetting\PhoneNumber $phone_number
     *           Phone number and country code.
     *     @type string $advertising_language_code
     *           The language code to advertise in from the set of
     *           [supported language codes]
     *           (https://developers.google.com/google-ads/api/reference/data/codes-formats#languages).
     *     @type string $final_url
     *           The user-provided landing page URL for this Campaign.
     *     @type \Google\Ads\GoogleAds\V15\Resources\SmartCampaignSetting\AdOptimizedBusinessProfileSetting $ad_optimized_business_profile_setting
     *           Settings for configuring a business profile optimized for ads as this
     *           campaign's landing page.  This campaign must be linked to a business
     *           profile to use this option.  For more information on this feature,
     *           consult https://support.google.com/google-ads/answer/9827068.
     *     @type string $business_name
     *           The name of the business.
     *     @type string $business_profile_location
     *           The resource name of a Business Profile location.
     *           Business Profile location resource names can be fetched through the
     *           Business Profile API and adhere to the following format:
     *           `locations/{locationId}`.
     *           See the [Business Profile API]
     *           (https://developers.google.com/my-business/reference/businessinformation/rest/v1/accounts.locations)
     *           for additional details.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Google\Ads\GoogleAds\V15\Resources\SmartCampaignSetting::initOnce();
        parent::__construct($data);
    }

    /**
     * Immutable. The resource name of the Smart campaign setting.
     * Smart campaign setting resource names have the form:
     * `customers/{customer_id}/smartCampaignSettings/{campaign_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getResourceName()
    {
        return $this->resource_name;
    }

    /**
     * Immutable. The resource name of the Smart campaign setting.
     * Smart campaign setting resource names have the form:
     * `customers/{customer_id}/smartCampaignSettings/{campaign_id}`
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
     * Output only. The campaign to which these settings apply.
     *
     * Generated from protobuf field <code>string campaign = 2 [(.google.api.field_behavior) = OUTPUT_ONLY, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getCampaign()
    {
        return $this->campaign;
    }

    /**
     * Output only. The campaign to which these settings apply.
     *
     * Generated from protobuf field <code>string campaign = 2 [(.google.api.field_behavior) = OUTPUT_ONLY, (.google.api.resource_reference) = {</code>
     * @param string $var
     * @return $this
     */
    public function setCampaign($var)
    {
        GPBUtil::checkString($var, True);
        $this->campaign = $var;

        return $this;
    }

    /**
     * Phone number and country code.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.resources.SmartCampaignSetting.PhoneNumber phone_number = 3;</code>
     * @return \Google\Ads\GoogleAds\V15\Resources\SmartCampaignSetting\PhoneNumber|null
     */
    public function getPhoneNumber()
    {
        return $this->phone_number;
    }

    public function hasPhoneNumber()
    {
        return isset($this->phone_number);
    }

    public function clearPhoneNumber()
    {
        unset($this->phone_number);
    }

    /**
     * Phone number and country code.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.resources.SmartCampaignSetting.PhoneNumber phone_number = 3;</code>
     * @param \Google\Ads\GoogleAds\V15\Resources\SmartCampaignSetting\PhoneNumber $var
     * @return $this
     */
    public function setPhoneNumber($var)
    {
        GPBUtil::checkMessage($var, \Google\Ads\GoogleAds\V15\Resources\SmartCampaignSetting\PhoneNumber::class);
        $this->phone_number = $var;

        return $this;
    }

    /**
     * The language code to advertise in from the set of
     * [supported language codes]
     * (https://developers.google.com/google-ads/api/reference/data/codes-formats#languages).
     *
     * Generated from protobuf field <code>string advertising_language_code = 7;</code>
     * @return string
     */
    public function getAdvertisingLanguageCode()
    {
        return $this->advertising_language_code;
    }

    /**
     * The language code to advertise in from the set of
     * [supported language codes]
     * (https://developers.google.com/google-ads/api/reference/data/codes-formats#languages).
     *
     * Generated from protobuf field <code>string advertising_language_code = 7;</code>
     * @param string $var
     * @return $this
     */
    public function setAdvertisingLanguageCode($var)
    {
        GPBUtil::checkString($var, True);
        $this->advertising_language_code = $var;

        return $this;
    }

    /**
     * The user-provided landing page URL for this Campaign.
     *
     * Generated from protobuf field <code>string final_url = 8;</code>
     * @return string
     */
    public function getFinalUrl()
    {
        return $this->readOneof(8);
    }

    public function hasFinalUrl()
    {
        return $this->hasOneof(8);
    }

    /**
     * The user-provided landing page URL for this Campaign.
     *
     * Generated from protobuf field <code>string final_url = 8;</code>
     * @param string $var
     * @return $this
     */
    public function setFinalUrl($var)
    {
        GPBUtil::checkString($var, True);
        $this->writeOneof(8, $var);

        return $this;
    }

    /**
     * Settings for configuring a business profile optimized for ads as this
     * campaign's landing page.  This campaign must be linked to a business
     * profile to use this option.  For more information on this feature,
     * consult https://support.google.com/google-ads/answer/9827068.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.resources.SmartCampaignSetting.AdOptimizedBusinessProfileSetting ad_optimized_business_profile_setting = 9;</code>
     * @return \Google\Ads\GoogleAds\V15\Resources\SmartCampaignSetting\AdOptimizedBusinessProfileSetting|null
     */
    public function getAdOptimizedBusinessProfileSetting()
    {
        return $this->readOneof(9);
    }

    public function hasAdOptimizedBusinessProfileSetting()
    {
        return $this->hasOneof(9);
    }

    /**
     * Settings for configuring a business profile optimized for ads as this
     * campaign's landing page.  This campaign must be linked to a business
     * profile to use this option.  For more information on this feature,
     * consult https://support.google.com/google-ads/answer/9827068.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.resources.SmartCampaignSetting.AdOptimizedBusinessProfileSetting ad_optimized_business_profile_setting = 9;</code>
     * @param \Google\Ads\GoogleAds\V15\Resources\SmartCampaignSetting\AdOptimizedBusinessProfileSetting $var
     * @return $this
     */
    public function setAdOptimizedBusinessProfileSetting($var)
    {
        GPBUtil::checkMessage($var, \Google\Ads\GoogleAds\V15\Resources\SmartCampaignSetting\AdOptimizedBusinessProfileSetting::class);
        $this->writeOneof(9, $var);

        return $this;
    }

    /**
     * The name of the business.
     *
     * Generated from protobuf field <code>string business_name = 5;</code>
     * @return string
     */
    public function getBusinessName()
    {
        return $this->readOneof(5);
    }

    public function hasBusinessName()
    {
        return $this->hasOneof(5);
    }

    /**
     * The name of the business.
     *
     * Generated from protobuf field <code>string business_name = 5;</code>
     * @param string $var
     * @return $this
     */
    public function setBusinessName($var)
    {
        GPBUtil::checkString($var, True);
        $this->writeOneof(5, $var);

        return $this;
    }

    /**
     * The resource name of a Business Profile location.
     * Business Profile location resource names can be fetched through the
     * Business Profile API and adhere to the following format:
     * `locations/{locationId}`.
     * See the [Business Profile API]
     * (https://developers.google.com/my-business/reference/businessinformation/rest/v1/accounts.locations)
     * for additional details.
     *
     * Generated from protobuf field <code>string business_profile_location = 10;</code>
     * @return string
     */
    public function getBusinessProfileLocation()
    {
        return $this->readOneof(10);
    }

    public function hasBusinessProfileLocation()
    {
        return $this->hasOneof(10);
    }

    /**
     * The resource name of a Business Profile location.
     * Business Profile location resource names can be fetched through the
     * Business Profile API and adhere to the following format:
     * `locations/{locationId}`.
     * See the [Business Profile API]
     * (https://developers.google.com/my-business/reference/businessinformation/rest/v1/accounts.locations)
     * for additional details.
     *
     * Generated from protobuf field <code>string business_profile_location = 10;</code>
     * @param string $var
     * @return $this
     */
    public function setBusinessProfileLocation($var)
    {
        GPBUtil::checkString($var, True);
        $this->writeOneof(10, $var);

        return $this;
    }

    /**
     * @return string
     */
    public function getLandingPage()
    {
        return $this->whichOneof("landing_page");
    }

    /**
     * @return string
     */
    public function getBusinessSetting()
    {
        return $this->whichOneof("business_setting");
    }

}

