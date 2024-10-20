<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/enums/ad_strength.proto

namespace Google\Ads\GoogleAds\V15\Enums\AdStrengthEnum;

use UnexpectedValueException;

/**
 * Enum listing the possible ad strengths.
 *
 * Protobuf type <code>google.ads.googleads.v15.enums.AdStrengthEnum.AdStrength</code>
 */
class AdStrength
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
     * The ad strength is currently pending.
     *
     * Generated from protobuf enum <code>PENDING = 2;</code>
     */
    const PENDING = 2;
    /**
     * No ads could be generated.
     *
     * Generated from protobuf enum <code>NO_ADS = 3;</code>
     */
    const NO_ADS = 3;
    /**
     * Poor strength.
     *
     * Generated from protobuf enum <code>POOR = 4;</code>
     */
    const POOR = 4;
    /**
     * Average strength.
     *
     * Generated from protobuf enum <code>AVERAGE = 5;</code>
     */
    const AVERAGE = 5;
    /**
     * Good strength.
     *
     * Generated from protobuf enum <code>GOOD = 6;</code>
     */
    const GOOD = 6;
    /**
     * Excellent strength.
     *
     * Generated from protobuf enum <code>EXCELLENT = 7;</code>
     */
    const EXCELLENT = 7;

    private static $valueToName = [
        self::UNSPECIFIED => 'UNSPECIFIED',
        self::UNKNOWN => 'UNKNOWN',
        self::PENDING => 'PENDING',
        self::NO_ADS => 'NO_ADS',
        self::POOR => 'POOR',
        self::AVERAGE => 'AVERAGE',
        self::GOOD => 'GOOD',
        self::EXCELLENT => 'EXCELLENT',
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
class_alias(AdStrength::class, \Google\Ads\GoogleAds\V15\Enums\AdStrengthEnum_AdStrength::class);

