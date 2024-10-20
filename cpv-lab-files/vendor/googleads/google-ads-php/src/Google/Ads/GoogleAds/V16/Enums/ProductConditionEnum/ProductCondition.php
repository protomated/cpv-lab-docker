<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/enums/product_condition.proto

namespace Google\Ads\GoogleAds\V16\Enums\ProductConditionEnum;

use UnexpectedValueException;

/**
 * Enum describing the condition of a product offer.
 *
 * Protobuf type <code>google.ads.googleads.v16.enums.ProductConditionEnum.ProductCondition</code>
 */
class ProductCondition
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
     * The product condition is new.
     *
     * Generated from protobuf enum <code>NEW = 3;</code>
     */
    const PBNEW = 3;
    /**
     * The product condition is refurbished.
     *
     * Generated from protobuf enum <code>REFURBISHED = 4;</code>
     */
    const REFURBISHED = 4;
    /**
     * The product condition is used.
     *
     * Generated from protobuf enum <code>USED = 5;</code>
     */
    const USED = 5;

    private static $valueToName = [
        self::UNSPECIFIED => 'UNSPECIFIED',
        self::UNKNOWN => 'UNKNOWN',
        self::PBNEW => 'NEW',
        self::REFURBISHED => 'REFURBISHED',
        self::USED => 'USED',
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
            $pbconst =  __CLASS__. '::PB' . strtoupper($name);
            if (!defined($pbconst)) {
                throw new UnexpectedValueException(sprintf(
                        'Enum %s has no value defined for name %s', __CLASS__, $name));
            }
            return constant($pbconst);
        }
        return constant($const);
    }
}

// Adding a class alias for backwards compatibility with the previous class name.
class_alias(ProductCondition::class, \Google\Ads\GoogleAds\V16\Enums\ProductConditionEnum_ProductCondition::class);

