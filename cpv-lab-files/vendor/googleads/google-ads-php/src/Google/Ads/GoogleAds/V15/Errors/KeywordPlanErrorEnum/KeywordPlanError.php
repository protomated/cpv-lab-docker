<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/errors/keyword_plan_error.proto

namespace Google\Ads\GoogleAds\V15\Errors\KeywordPlanErrorEnum;

use UnexpectedValueException;

/**
 * Enum describing possible errors from applying a keyword plan.
 *
 * Protobuf type <code>google.ads.googleads.v15.errors.KeywordPlanErrorEnum.KeywordPlanError</code>
 */
class KeywordPlanError
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
     * The plan's bid multiplier value is outside the valid range.
     *
     * Generated from protobuf enum <code>BID_MULTIPLIER_OUT_OF_RANGE = 2;</code>
     */
    const BID_MULTIPLIER_OUT_OF_RANGE = 2;
    /**
     * The plan's bid value is too high.
     *
     * Generated from protobuf enum <code>BID_TOO_HIGH = 3;</code>
     */
    const BID_TOO_HIGH = 3;
    /**
     * The plan's bid value is too low.
     *
     * Generated from protobuf enum <code>BID_TOO_LOW = 4;</code>
     */
    const BID_TOO_LOW = 4;
    /**
     * The plan's cpc bid is not a multiple of the minimum billable unit.
     *
     * Generated from protobuf enum <code>BID_TOO_MANY_FRACTIONAL_DIGITS = 5;</code>
     */
    const BID_TOO_MANY_FRACTIONAL_DIGITS = 5;
    /**
     * The plan's daily budget value is too low.
     *
     * Generated from protobuf enum <code>DAILY_BUDGET_TOO_LOW = 6;</code>
     */
    const DAILY_BUDGET_TOO_LOW = 6;
    /**
     * The plan's daily budget is not a multiple of the minimum billable unit.
     *
     * Generated from protobuf enum <code>DAILY_BUDGET_TOO_MANY_FRACTIONAL_DIGITS = 7;</code>
     */
    const DAILY_BUDGET_TOO_MANY_FRACTIONAL_DIGITS = 7;
    /**
     * The input has an invalid value.
     *
     * Generated from protobuf enum <code>INVALID_VALUE = 8;</code>
     */
    const INVALID_VALUE = 8;
    /**
     * The plan has no keyword.
     *
     * Generated from protobuf enum <code>KEYWORD_PLAN_HAS_NO_KEYWORDS = 9;</code>
     */
    const KEYWORD_PLAN_HAS_NO_KEYWORDS = 9;
    /**
     * The plan is not enabled and API cannot provide mutation, forecast or
     * stats.
     *
     * Generated from protobuf enum <code>KEYWORD_PLAN_NOT_ENABLED = 10;</code>
     */
    const KEYWORD_PLAN_NOT_ENABLED = 10;
    /**
     * The requested plan cannot be found for providing forecast or stats.
     *
     * Generated from protobuf enum <code>KEYWORD_PLAN_NOT_FOUND = 11;</code>
     */
    const KEYWORD_PLAN_NOT_FOUND = 11;
    /**
     * The plan is missing a cpc bid.
     *
     * Generated from protobuf enum <code>MISSING_BID = 13;</code>
     */
    const MISSING_BID = 13;
    /**
     * The plan is missing required forecast_period field.
     *
     * Generated from protobuf enum <code>MISSING_FORECAST_PERIOD = 14;</code>
     */
    const MISSING_FORECAST_PERIOD = 14;
    /**
     * The plan's forecast_period has invalid forecast date range.
     *
     * Generated from protobuf enum <code>INVALID_FORECAST_DATE_RANGE = 15;</code>
     */
    const INVALID_FORECAST_DATE_RANGE = 15;
    /**
     * The plan's name is invalid.
     *
     * Generated from protobuf enum <code>INVALID_NAME = 16;</code>
     */
    const INVALID_NAME = 16;

    private static $valueToName = [
        self::UNSPECIFIED => 'UNSPECIFIED',
        self::UNKNOWN => 'UNKNOWN',
        self::BID_MULTIPLIER_OUT_OF_RANGE => 'BID_MULTIPLIER_OUT_OF_RANGE',
        self::BID_TOO_HIGH => 'BID_TOO_HIGH',
        self::BID_TOO_LOW => 'BID_TOO_LOW',
        self::BID_TOO_MANY_FRACTIONAL_DIGITS => 'BID_TOO_MANY_FRACTIONAL_DIGITS',
        self::DAILY_BUDGET_TOO_LOW => 'DAILY_BUDGET_TOO_LOW',
        self::DAILY_BUDGET_TOO_MANY_FRACTIONAL_DIGITS => 'DAILY_BUDGET_TOO_MANY_FRACTIONAL_DIGITS',
        self::INVALID_VALUE => 'INVALID_VALUE',
        self::KEYWORD_PLAN_HAS_NO_KEYWORDS => 'KEYWORD_PLAN_HAS_NO_KEYWORDS',
        self::KEYWORD_PLAN_NOT_ENABLED => 'KEYWORD_PLAN_NOT_ENABLED',
        self::KEYWORD_PLAN_NOT_FOUND => 'KEYWORD_PLAN_NOT_FOUND',
        self::MISSING_BID => 'MISSING_BID',
        self::MISSING_FORECAST_PERIOD => 'MISSING_FORECAST_PERIOD',
        self::INVALID_FORECAST_DATE_RANGE => 'INVALID_FORECAST_DATE_RANGE',
        self::INVALID_NAME => 'INVALID_NAME',
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
class_alias(KeywordPlanError::class, \Google\Ads\GoogleAds\V15\Errors\KeywordPlanErrorEnum_KeywordPlanError::class);

