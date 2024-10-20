<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v17/enums/brand_state.proto

namespace Google\Ads\GoogleAds\V17\Enums\BrandStateEnum;

use UnexpectedValueException;

/**
 * Enumeration of different brand states.
 *
 * Protobuf type <code>google.ads.googleads.v17.enums.BrandStateEnum.BrandState</code>
 */
class BrandState
{
    /**
     * No value has been specified.
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
     * Brand is verified and globally available for selection
     *
     * Generated from protobuf enum <code>ENABLED = 2;</code>
     */
    const ENABLED = 2;
    /**
     * Brand was globally available in past but is no longer a valid brand
     * (based on business criteria)
     *
     * Generated from protobuf enum <code>DEPRECATED = 3;</code>
     */
    const DEPRECATED = 3;
    /**
     * Brand is unverified and customer scoped, but can be selected by customer
     * (only who requested for same) for targeting
     *
     * Generated from protobuf enum <code>UNVERIFIED = 4;</code>
     */
    const UNVERIFIED = 4;
    /**
     * Was a customer-scoped (unverified) brand, which got approved by business
     * and added to the global list. Its assigned CKG MID should be used instead
     * of this
     *
     * Generated from protobuf enum <code>APPROVED = 5;</code>
     */
    const APPROVED = 5;
    /**
     * Was a customer-scoped (unverified) brand, but the request was canceled by
     * customer and this brand id is no longer valid
     *
     * Generated from protobuf enum <code>CANCELLED = 6;</code>
     */
    const CANCELLED = 6;
    /**
     * Was a customer-scoped (unverified) brand, but the request was rejected by
     * internal business team and this brand id is no longer valid
     *
     * Generated from protobuf enum <code>REJECTED = 7;</code>
     */
    const REJECTED = 7;

    private static $valueToName = [
        self::UNSPECIFIED => 'UNSPECIFIED',
        self::UNKNOWN => 'UNKNOWN',
        self::ENABLED => 'ENABLED',
        self::DEPRECATED => 'DEPRECATED',
        self::UNVERIFIED => 'UNVERIFIED',
        self::APPROVED => 'APPROVED',
        self::CANCELLED => 'CANCELLED',
        self::REJECTED => 'REJECTED',
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
class_alias(BrandState::class, \Google\Ads\GoogleAds\V17\Enums\BrandStateEnum_BrandState::class);

