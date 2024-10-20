<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/common/offline_user_data.proto

namespace Google\Ads\GoogleAds\V15\Common;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Advertiser defined events and their attributes. All the values in the
 * nested fields are required.
 *
 * Generated from protobuf message <code>google.ads.googleads.v15.common.EventAttribute</code>
 */
class EventAttribute extends \Google\Protobuf\Internal\Message
{
    /**
     * Required. Advertiser defined event to be used for remarketing. The accepted
     * values are "Viewed", "Cart", "Purchased" and "Recommended".
     *
     * Generated from protobuf field <code>string event = 1 [(.google.api.field_behavior) = REQUIRED];</code>
     */
    protected $event = '';
    /**
     * Required. Timestamp at which the event happened.
     * The format is YYYY-MM-DD HH:MM:SS[+/-HH:MM], where [+/-HH:MM] is an
     * optional timezone offset from UTC. If the offset is absent, the API will
     * use the account's timezone as default.
     *
     * Generated from protobuf field <code>string event_date_time = 2 [(.google.api.field_behavior) = REQUIRED];</code>
     */
    protected $event_date_time = '';
    /**
     * Required. Item attributes of the event.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v15.common.EventItemAttribute item_attribute = 3 [(.google.api.field_behavior) = REQUIRED];</code>
     */
    private $item_attribute;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $event
     *           Required. Advertiser defined event to be used for remarketing. The accepted
     *           values are "Viewed", "Cart", "Purchased" and "Recommended".
     *     @type string $event_date_time
     *           Required. Timestamp at which the event happened.
     *           The format is YYYY-MM-DD HH:MM:SS[+/-HH:MM], where [+/-HH:MM] is an
     *           optional timezone offset from UTC. If the offset is absent, the API will
     *           use the account's timezone as default.
     *     @type array<\Google\Ads\GoogleAds\V15\Common\EventItemAttribute>|\Google\Protobuf\Internal\RepeatedField $item_attribute
     *           Required. Item attributes of the event.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Google\Ads\GoogleAds\V15\Common\OfflineUserData::initOnce();
        parent::__construct($data);
    }

    /**
     * Required. Advertiser defined event to be used for remarketing. The accepted
     * values are "Viewed", "Cart", "Purchased" and "Recommended".
     *
     * Generated from protobuf field <code>string event = 1 [(.google.api.field_behavior) = REQUIRED];</code>
     * @return string
     */
    public function getEvent()
    {
        return $this->event;
    }

    /**
     * Required. Advertiser defined event to be used for remarketing. The accepted
     * values are "Viewed", "Cart", "Purchased" and "Recommended".
     *
     * Generated from protobuf field <code>string event = 1 [(.google.api.field_behavior) = REQUIRED];</code>
     * @param string $var
     * @return $this
     */
    public function setEvent($var)
    {
        GPBUtil::checkString($var, True);
        $this->event = $var;

        return $this;
    }

    /**
     * Required. Timestamp at which the event happened.
     * The format is YYYY-MM-DD HH:MM:SS[+/-HH:MM], where [+/-HH:MM] is an
     * optional timezone offset from UTC. If the offset is absent, the API will
     * use the account's timezone as default.
     *
     * Generated from protobuf field <code>string event_date_time = 2 [(.google.api.field_behavior) = REQUIRED];</code>
     * @return string
     */
    public function getEventDateTime()
    {
        return $this->event_date_time;
    }

    /**
     * Required. Timestamp at which the event happened.
     * The format is YYYY-MM-DD HH:MM:SS[+/-HH:MM], where [+/-HH:MM] is an
     * optional timezone offset from UTC. If the offset is absent, the API will
     * use the account's timezone as default.
     *
     * Generated from protobuf field <code>string event_date_time = 2 [(.google.api.field_behavior) = REQUIRED];</code>
     * @param string $var
     * @return $this
     */
    public function setEventDateTime($var)
    {
        GPBUtil::checkString($var, True);
        $this->event_date_time = $var;

        return $this;
    }

    /**
     * Required. Item attributes of the event.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v15.common.EventItemAttribute item_attribute = 3 [(.google.api.field_behavior) = REQUIRED];</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getItemAttribute()
    {
        return $this->item_attribute;
    }

    /**
     * Required. Item attributes of the event.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v15.common.EventItemAttribute item_attribute = 3 [(.google.api.field_behavior) = REQUIRED];</code>
     * @param array<\Google\Ads\GoogleAds\V15\Common\EventItemAttribute>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setItemAttribute($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Ads\GoogleAds\V15\Common\EventItemAttribute::class);
        $this->item_attribute = $arr;

        return $this;
    }

}

