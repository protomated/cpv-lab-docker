<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/services/audience_insights_service.proto

namespace Google\Ads\GoogleAds\V16\Services;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * A description of an audience used for requesting insights.
 *
 * Generated from protobuf message <code>google.ads.googleads.v16.services.BasicInsightsAudience</code>
 */
class BasicInsightsAudience extends \Google\Protobuf\Internal\Message
{
    /**
     * Required. The countries for this audience.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.LocationInfo country_location = 1 [(.google.api.field_behavior) = REQUIRED];</code>
     */
    private $country_location;
    /**
     * Sub-country geographic location attributes.  If present, each of these
     * must be contained in one of the countries in this audience.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.LocationInfo sub_country_locations = 2;</code>
     */
    private $sub_country_locations;
    /**
     * Gender for the audience.  If absent, the audience does not restrict by
     * gender.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.common.GenderInfo gender = 3;</code>
     */
    protected $gender = null;
    /**
     * Age ranges for the audience.  If absent, the audience represents all people
     * over 18 that match the other attributes.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.AgeRangeInfo age_ranges = 4;</code>
     */
    private $age_ranges;
    /**
     * User interests defining this audience.  Affinity and In-Market audiences
     * are supported.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.UserInterestInfo user_interests = 5;</code>
     */
    private $user_interests;
    /**
     * Topics, represented by Knowledge Graph entities and/or Product & Service
     * categories, that this audience is interested in.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.services.AudienceInsightsTopic topics = 6;</code>
     */
    private $topics;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type array<\Google\Ads\GoogleAds\V16\Common\LocationInfo>|\Google\Protobuf\Internal\RepeatedField $country_location
     *           Required. The countries for this audience.
     * @type array<\Google\Ads\GoogleAds\V16\Common\LocationInfo>|\Google\Protobuf\Internal\RepeatedField $sub_country_locations
     *           Sub-country geographic location attributes.  If present, each of these
     *           must be contained in one of the countries in this audience.
     * @type \Google\Ads\GoogleAds\V16\Common\GenderInfo $gender
     *           Gender for the audience.  If absent, the audience does not restrict by
     *           gender.
     * @type array<\Google\Ads\GoogleAds\V16\Common\AgeRangeInfo>|\Google\Protobuf\Internal\RepeatedField $age_ranges
     *           Age ranges for the audience.  If absent, the audience represents all people
     *           over 18 that match the other attributes.
     * @type array<\Google\Ads\GoogleAds\V16\Common\UserInterestInfo>|\Google\Protobuf\Internal\RepeatedField $user_interests
     *           User interests defining this audience.  Affinity and In-Market audiences
     *           are supported.
     * @type array<\Google\Ads\GoogleAds\V16\Services\AudienceInsightsTopic>|\Google\Protobuf\Internal\RepeatedField $topics
     *           Topics, represented by Knowledge Graph entities and/or Product & Service
     *           categories, that this audience is interested in.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V16\Services\AudienceInsightsService::initOnce();
        parent::__construct($data);
    }

    /**
     * Required. The countries for this audience.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.LocationInfo country_location = 1 [(.google.api.field_behavior) = REQUIRED];</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getCountryLocation()
    {
        return $this->country_location;
    }

    /**
     * Required. The countries for this audience.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.LocationInfo country_location = 1 [(.google.api.field_behavior) = REQUIRED];</code>
     * @param array<\Google\Ads\GoogleAds\V16\Common\LocationInfo>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setCountryLocation($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Ads\GoogleAds\V16\Common\LocationInfo::class);
        $this->country_location = $arr;

        return $this;
    }

    /**
     * Sub-country geographic location attributes.  If present, each of these
     * must be contained in one of the countries in this audience.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.LocationInfo sub_country_locations = 2;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getSubCountryLocations()
    {
        return $this->sub_country_locations;
    }

    /**
     * Sub-country geographic location attributes.  If present, each of these
     * must be contained in one of the countries in this audience.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.LocationInfo sub_country_locations = 2;</code>
     * @param array<\Google\Ads\GoogleAds\V16\Common\LocationInfo>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setSubCountryLocations($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Ads\GoogleAds\V16\Common\LocationInfo::class);
        $this->sub_country_locations = $arr;

        return $this;
    }

    /**
     * Gender for the audience.  If absent, the audience does not restrict by
     * gender.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.common.GenderInfo gender = 3;</code>
     * @return \Google\Ads\GoogleAds\V16\Common\GenderInfo|null
     */
    public function getGender()
    {
        return $this->gender;
    }

    public function hasGender()
    {
        return isset($this->gender);
    }

    public function clearGender()
    {
        unset($this->gender);
    }

    /**
     * Gender for the audience.  If absent, the audience does not restrict by
     * gender.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.common.GenderInfo gender = 3;</code>
     * @param \Google\Ads\GoogleAds\V16\Common\GenderInfo $var
     * @return $this
     */
    public function setGender($var)
    {
        GPBUtil::checkMessage($var, \Google\Ads\GoogleAds\V16\Common\GenderInfo::class);
        $this->gender = $var;

        return $this;
    }

    /**
     * Age ranges for the audience.  If absent, the audience represents all people
     * over 18 that match the other attributes.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.AgeRangeInfo age_ranges = 4;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getAgeRanges()
    {
        return $this->age_ranges;
    }

    /**
     * Age ranges for the audience.  If absent, the audience represents all people
     * over 18 that match the other attributes.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.AgeRangeInfo age_ranges = 4;</code>
     * @param array<\Google\Ads\GoogleAds\V16\Common\AgeRangeInfo>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setAgeRanges($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Ads\GoogleAds\V16\Common\AgeRangeInfo::class);
        $this->age_ranges = $arr;

        return $this;
    }

    /**
     * User interests defining this audience.  Affinity and In-Market audiences
     * are supported.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.UserInterestInfo user_interests = 5;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getUserInterests()
    {
        return $this->user_interests;
    }

    /**
     * User interests defining this audience.  Affinity and In-Market audiences
     * are supported.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.UserInterestInfo user_interests = 5;</code>
     * @param array<\Google\Ads\GoogleAds\V16\Common\UserInterestInfo>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setUserInterests($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Ads\GoogleAds\V16\Common\UserInterestInfo::class);
        $this->user_interests = $arr;

        return $this;
    }

    /**
     * Topics, represented by Knowledge Graph entities and/or Product & Service
     * categories, that this audience is interested in.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.services.AudienceInsightsTopic topics = 6;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getTopics()
    {
        return $this->topics;
    }

    /**
     * Topics, represented by Knowledge Graph entities and/or Product & Service
     * categories, that this audience is interested in.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.services.AudienceInsightsTopic topics = 6;</code>
     * @param array<\Google\Ads\GoogleAds\V16\Services\AudienceInsightsTopic>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setTopics($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Ads\GoogleAds\V16\Services\AudienceInsightsTopic::class);
        $this->topics = $arr;

        return $this;
    }

}

