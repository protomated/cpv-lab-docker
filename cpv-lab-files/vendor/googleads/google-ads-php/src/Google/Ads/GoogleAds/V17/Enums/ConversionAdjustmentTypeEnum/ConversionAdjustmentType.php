<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v17/enums/conversion_adjustment_type.proto

namespace Google\Ads\GoogleAds\V17\Enums\ConversionAdjustmentTypeEnum;

use UnexpectedValueException;

/**
 * The different actions advertisers can take to adjust the conversions that
 * they already reported. Retractions negate a conversion. Restatements change
 * the value of a conversion.
 *
 * Protobuf type <code>google.ads.googleads.v17.enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType</code>
 */
class ConversionAdjustmentType
{
    /**
     * Not specified.
     *
     * Generated from protobuf enum <code>UNSPECIFIED = 0;</code>
     */
    const UNSPECIFIED = 0;
    /**
     * Represents value unknown in this version.
     *
     * Generated from protobuf enum <code>UNKNOWN = 1;</code>
     */
    const UNKNOWN = 1;
    /**
     * Negates a conversion so that its total value and count are both zero.
     *
     * Generated from protobuf enum <code>RETRACTION = 2;</code>
     */
    const RETRACTION = 2;
    /**
     * Changes the value of a conversion.
     *
     * Generated from protobuf enum <code>RESTATEMENT = 3;</code>
     */
    const RESTATEMENT = 3;
    /**
     * Supplements an existing conversion with provided user identifiers and
     * user agent, which can be used by Google to enhance the conversion count.
     *
     * Generated from protobuf enum <code>ENHANCEMENT = 4;</code>
     */
    const ENHANCEMENT = 4;

    private static $valueToName = [
        self::UNSPECIFIED => 'UNSPECIFIED',
        self::UNKNOWN => 'UNKNOWN',
        self::RETRACTION => 'RETRACTION',
        self::RESTATEMENT => 'RESTATEMENT',
        self::ENHANCEMENT => 'ENHANCEMENT',
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
class_alias(ConversionAdjustmentType::class, \Google\Ads\GoogleAds\V17\Enums\ConversionAdjustmentTypeEnum_ConversionAdjustmentType::class);

