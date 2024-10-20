<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/services/reach_plan_service.proto

namespace Google\Ads\GoogleAds\V16\Services;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * The duration of a planned campaign.
 *
 * Generated from protobuf message <code>google.ads.googleads.v16.services.CampaignDuration</code>
 */
class CampaignDuration extends \Google\Protobuf\Internal\Message
{
    /**
     * The duration value in days.
     * This field cannot be combined with the date_range field.
     *
     * Generated from protobuf field <code>optional int32 duration_in_days = 2;</code>
     */
    protected $duration_in_days = null;
    /**
     * Date range of the campaign.
     * Dates are in the yyyy-mm-dd format and inclusive.
     * The end date must be < 1 year in the future and the
     * date range must be <= 92 days long.
     * This field cannot be combined with the duration_in_days field.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.common.DateRange date_range = 3;</code>
     */
    protected $date_range = null;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type int $duration_in_days
     *           The duration value in days.
     *           This field cannot be combined with the date_range field.
     * @type \Google\Ads\GoogleAds\V16\Common\DateRange $date_range
     *           Date range of the campaign.
     *           Dates are in the yyyy-mm-dd format and inclusive.
     *           The end date must be < 1 year in the future and the
     *           date range must be <= 92 days long.
     *           This field cannot be combined with the duration_in_days field.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V16\Services\ReachPlanService::initOnce();
        parent::__construct($data);
    }

    /**
     * The duration value in days.
     * This field cannot be combined with the date_range field.
     *
     * Generated from protobuf field <code>optional int32 duration_in_days = 2;</code>
     * @return int
     */
    public function getDurationInDays()
    {
        return isset($this->duration_in_days) ? $this->duration_in_days : 0;
    }

    public function hasDurationInDays()
    {
        return isset($this->duration_in_days);
    }

    public function clearDurationInDays()
    {
        unset($this->duration_in_days);
    }

    /**
     * The duration value in days.
     * This field cannot be combined with the date_range field.
     *
     * Generated from protobuf field <code>optional int32 duration_in_days = 2;</code>
     * @param int $var
     * @return $this
     */
    public function setDurationInDays($var)
    {
        GPBUtil::checkInt32($var);
        $this->duration_in_days = $var;

        return $this;
    }

    /**
     * Date range of the campaign.
     * Dates are in the yyyy-mm-dd format and inclusive.
     * The end date must be < 1 year in the future and the
     * date range must be <= 92 days long.
     * This field cannot be combined with the duration_in_days field.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.common.DateRange date_range = 3;</code>
     * @return \Google\Ads\GoogleAds\V16\Common\DateRange|null
     */
    public function getDateRange()
    {
        return $this->date_range;
    }

    public function hasDateRange()
    {
        return isset($this->date_range);
    }

    public function clearDateRange()
    {
        unset($this->date_range);
    }

    /**
     * Date range of the campaign.
     * Dates are in the yyyy-mm-dd format and inclusive.
     * The end date must be < 1 year in the future and the
     * date range must be <= 92 days long.
     * This field cannot be combined with the duration_in_days field.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.common.DateRange date_range = 3;</code>
     * @param \Google\Ads\GoogleAds\V16\Common\DateRange $var
     * @return $this
     */
    public function setDateRange($var)
    {
        GPBUtil::checkMessage($var, \Google\Ads\GoogleAds\V16\Common\DateRange::class);
        $this->date_range = $var;

        return $this;
    }

}

