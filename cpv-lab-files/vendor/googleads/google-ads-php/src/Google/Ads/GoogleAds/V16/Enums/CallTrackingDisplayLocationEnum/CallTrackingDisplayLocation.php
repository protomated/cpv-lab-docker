<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/enums/call_tracking_display_location.proto

namespace Google\Ads\GoogleAds\V16\Enums\CallTrackingDisplayLocationEnum;

use UnexpectedValueException;

/**
 * Possible call tracking display locations.
 *
 * Protobuf type <code>google.ads.googleads.v16.enums.CallTrackingDisplayLocationEnum.CallTrackingDisplayLocation</code>
 */
class CallTrackingDisplayLocation
{
    /**
     * Not specified.
     *
     * Generated from protobuf enum <code>UNSPECIFIED = 0;</code>
     */
    const UNSPECIFIED = 0;
    /**
     * Used for return value only. Represents value unknown in this version.
     *
     * Generated from protobuf enum <code>UNKNOWN = 1;</code>
     */
    const UNKNOWN = 1;
    /**
     * The phone call placed from the ad.
     *
     * Generated from protobuf enum <code>AD = 2;</code>
     */
    const AD = 2;
    /**
     * The phone call placed from the landing page ad points to.
     *
     * Generated from protobuf enum <code>LANDING_PAGE = 3;</code>
     */
    const LANDING_PAGE = 3;

    private static $valueToName = [
        self::UNSPECIFIED => 'UNSPECIFIED',
        self::UNKNOWN => 'UNKNOWN',
        self::AD => 'AD',
        self::LANDING_PAGE => 'LANDING_PAGE',
    ];

    public static function name($value)
    {
        if (!isset(self::$valueToName[$value])) {
            throw new UnexpectedValueException(sprintf(
                'Enum %s has no name defined for value %s', __CLASS__, $value));
        }
        return self::$valueToName[$value];
    }


    public static function value($name)
    {
        $const = __CLASS__ . '::' . strtoupper($name);
        if (!defined($const)) {
            throw new UnexpectedValueException(sprintf(
                'Enum %s has no value defined for name %s', __CLASS__, $name));
        }
        return constant($const);
    }
}

// Adding a class alias for backwards compatibility with the previous class name.
class_alias(CallTrackingDisplayLocation::class, \Google\Ads\GoogleAds\V16\Enums\CallTrackingDisplayLocationEnum_CallTrackingDisplayLocation::class);

