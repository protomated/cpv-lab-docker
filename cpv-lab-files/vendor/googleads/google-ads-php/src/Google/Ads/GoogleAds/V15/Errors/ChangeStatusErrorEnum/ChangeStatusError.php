<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/errors/change_status_error.proto

namespace Google\Ads\GoogleAds\V15\Errors\ChangeStatusErrorEnum;

use UnexpectedValueException;

/**
 * Enum describing possible change status errors.
 *
 * Protobuf type <code>google.ads.googleads.v15.errors.ChangeStatusErrorEnum.ChangeStatusError</code>
 */
class ChangeStatusError
{
    /**
     * Enum unspecified.
     *
     * Generated from protobuf enum <code>UNSPECIFIED = 0;</code>
     */
    const UNSPECIFIED = 0;
    /**
     * The received error code is not known in this version.
     *
     * Generated from protobuf enum <code>UNKNOWN = 1;</code>
     */
    const UNKNOWN = 1;
    /**
     * The requested start date is too old.
     *
     * Generated from protobuf enum <code>START_DATE_TOO_OLD = 3;</code>
     */
    const START_DATE_TOO_OLD = 3;
    /**
     * The change_status search request must specify a finite range filter
     * on last_change_date_time.
     *
     * Generated from protobuf enum <code>CHANGE_DATE_RANGE_INFINITE = 4;</code>
     */
    const CHANGE_DATE_RANGE_INFINITE = 4;
    /**
     * The change status search request has specified invalid date time filters
     * that can never logically produce any valid results (for example, start
     * time after end time).
     *
     * Generated from protobuf enum <code>CHANGE_DATE_RANGE_NEGATIVE = 5;</code>
     */
    const CHANGE_DATE_RANGE_NEGATIVE = 5;
    /**
     * The change_status search request must specify a LIMIT.
     *
     * Generated from protobuf enum <code>LIMIT_NOT_SPECIFIED = 6;</code>
     */
    const LIMIT_NOT_SPECIFIED = 6;
    /**
     * The LIMIT specified by change_status request should be less than or equal
     * to 10K.
     *
     * Generated from protobuf enum <code>INVALID_LIMIT_CLAUSE = 7;</code>
     */
    const INVALID_LIMIT_CLAUSE = 7;

    private static $valueToName = [
        self::UNSPECIFIED => 'UNSPECIFIED',
        self::UNKNOWN => 'UNKNOWN',
        self::START_DATE_TOO_OLD => 'START_DATE_TOO_OLD',
        self::CHANGE_DATE_RANGE_INFINITE => 'CHANGE_DATE_RANGE_INFINITE',
        self::CHANGE_DATE_RANGE_NEGATIVE => 'CHANGE_DATE_RANGE_NEGATIVE',
        self::LIMIT_NOT_SPECIFIED => 'LIMIT_NOT_SPECIFIED',
        self::INVALID_LIMIT_CLAUSE => 'INVALID_LIMIT_CLAUSE',
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
class_alias(ChangeStatusError::class, \Google\Ads\GoogleAds\V15\Errors\ChangeStatusErrorEnum_ChangeStatusError::class);

