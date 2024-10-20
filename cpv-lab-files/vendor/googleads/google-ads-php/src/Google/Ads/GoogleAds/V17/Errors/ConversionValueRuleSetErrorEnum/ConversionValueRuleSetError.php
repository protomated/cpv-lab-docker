<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v17/errors/conversion_value_rule_set_error.proto

namespace Google\Ads\GoogleAds\V17\Errors\ConversionValueRuleSetErrorEnum;

use UnexpectedValueException;

/**
 * Enum describing possible conversion value rule set errors.
 *
 * Protobuf type <code>google.ads.googleads.v17.errors.ConversionValueRuleSetErrorEnum.ConversionValueRuleSetError</code>
 */
class ConversionValueRuleSetError
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
     * Two value rules in this value rule set contain conflicting conditions.
     *
     * Generated from protobuf enum <code>CONFLICTING_VALUE_RULE_CONDITIONS = 2;</code>
     */
    const CONFLICTING_VALUE_RULE_CONDITIONS = 2;
    /**
     * This value rule set includes a value rule that cannot be found, has been
     * permanently removed or belongs to a different customer.
     *
     * Generated from protobuf enum <code>INVALID_VALUE_RULE = 3;</code>
     */
    const INVALID_VALUE_RULE = 3;
    /**
     * An error that's thrown when a mutate operation is trying to
     * replace/remove some existing elements in the dimensions field. In other
     * words, ADD op is always fine and UPDATE op is fine if it's only appending
     * new elements into dimensions list.
     *
     * Generated from protobuf enum <code>DIMENSIONS_UPDATE_ONLY_ALLOW_APPEND = 4;</code>
     */
    const DIMENSIONS_UPDATE_ONLY_ALLOW_APPEND = 4;
    /**
     * An error that's thrown when a mutate is adding new value rule(s) into a
     * value rule set and the added value rule(s) include conditions that are
     * not specified in the dimensions of the value rule set.
     *
     * Generated from protobuf enum <code>CONDITION_TYPE_NOT_ALLOWED = 5;</code>
     */
    const CONDITION_TYPE_NOT_ALLOWED = 5;
    /**
     * The dimensions field contains duplicate elements.
     *
     * Generated from protobuf enum <code>DUPLICATE_DIMENSIONS = 6;</code>
     */
    const DUPLICATE_DIMENSIONS = 6;
    /**
     * This value rule set is attached to an invalid campaign id. Either a
     * campaign with this campaign id doesn't exist or it belongs to a different
     * customer.
     *
     * Generated from protobuf enum <code>INVALID_CAMPAIGN_ID = 7;</code>
     */
    const INVALID_CAMPAIGN_ID = 7;
    /**
     * When a mutate request tries to pause a value rule set, the enabled
     * value rules in this set must be paused in the same command, or this error
     * will be thrown.
     *
     * Generated from protobuf enum <code>CANNOT_PAUSE_UNLESS_ALL_VALUE_RULES_ARE_PAUSED = 8;</code>
     */
    const CANNOT_PAUSE_UNLESS_ALL_VALUE_RULES_ARE_PAUSED = 8;
    /**
     * When a mutate request tries to pause all the value rules in a value rule
     * set, the value rule set must be paused, or this error will be thrown.
     *
     * Generated from protobuf enum <code>SHOULD_PAUSE_WHEN_ALL_VALUE_RULES_ARE_PAUSED = 9;</code>
     */
    const SHOULD_PAUSE_WHEN_ALL_VALUE_RULES_ARE_PAUSED = 9;
    /**
     * This value rule set is attached to a campaign that does not support value
     * rules. Currently, campaign level value rule sets can only be created on
     * Search, or Display campaigns.
     *
     * Generated from protobuf enum <code>VALUE_RULES_NOT_SUPPORTED_FOR_CAMPAIGN_TYPE = 10;</code>
     */
    const VALUE_RULES_NOT_SUPPORTED_FOR_CAMPAIGN_TYPE = 10;
    /**
     * To add a value rule set that applies on Store Visits/Store Sales
     * conversion action categories, the customer must have valid Store Visits/
     * Store Sales conversion actions.
     *
     * Generated from protobuf enum <code>INELIGIBLE_CONVERSION_ACTION_CATEGORIES = 11;</code>
     */
    const INELIGIBLE_CONVERSION_ACTION_CATEGORIES = 11;
    /**
     * If NO_CONDITION is used as a dimension of a value rule set, it must be
     * the only dimension.
     *
     * Generated from protobuf enum <code>DIMENSION_NO_CONDITION_USED_WITH_OTHER_DIMENSIONS = 12;</code>
     */
    const DIMENSION_NO_CONDITION_USED_WITH_OTHER_DIMENSIONS = 12;
    /**
     * Dimension NO_CONDITION can only be used by Store Visits/Store Sales value
     * rule set.
     *
     * Generated from protobuf enum <code>DIMENSION_NO_CONDITION_NOT_ALLOWED = 13;</code>
     */
    const DIMENSION_NO_CONDITION_NOT_ALLOWED = 13;
    /**
     * Value rule sets defined on the specified conversion action categories are
     * not supported. The list of conversion action categories must be an empty
     * list, only STORE_VISIT, or only STORE_SALE.
     *
     * Generated from protobuf enum <code>UNSUPPORTED_CONVERSION_ACTION_CATEGORIES = 14;</code>
     */
    const UNSUPPORTED_CONVERSION_ACTION_CATEGORIES = 14;

    private static $valueToName = [
        self::UNSPECIFIED => 'UNSPECIFIED',
        self::UNKNOWN => 'UNKNOWN',
        self::CONFLICTING_VALUE_RULE_CONDITIONS => 'CONFLICTING_VALUE_RULE_CONDITIONS',
        self::INVALID_VALUE_RULE => 'INVALID_VALUE_RULE',
        self::DIMENSIONS_UPDATE_ONLY_ALLOW_APPEND => 'DIMENSIONS_UPDATE_ONLY_ALLOW_APPEND',
        self::CONDITION_TYPE_NOT_ALLOWED => 'CONDITION_TYPE_NOT_ALLOWED',
        self::DUPLICATE_DIMENSIONS => 'DUPLICATE_DIMENSIONS',
        self::INVALID_CAMPAIGN_ID => 'INVALID_CAMPAIGN_ID',
        self::CANNOT_PAUSE_UNLESS_ALL_VALUE_RULES_ARE_PAUSED => 'CANNOT_PAUSE_UNLESS_ALL_VALUE_RULES_ARE_PAUSED',
        self::SHOULD_PAUSE_WHEN_ALL_VALUE_RULES_ARE_PAUSED => 'SHOULD_PAUSE_WHEN_ALL_VALUE_RULES_ARE_PAUSED',
        self::VALUE_RULES_NOT_SUPPORTED_FOR_CAMPAIGN_TYPE => 'VALUE_RULES_NOT_SUPPORTED_FOR_CAMPAIGN_TYPE',
        self::INELIGIBLE_CONVERSION_ACTION_CATEGORIES => 'INELIGIBLE_CONVERSION_ACTION_CATEGORIES',
        self::DIMENSION_NO_CONDITION_USED_WITH_OTHER_DIMENSIONS => 'DIMENSION_NO_CONDITION_USED_WITH_OTHER_DIMENSIONS',
        self::DIMENSION_NO_CONDITION_NOT_ALLOWED => 'DIMENSION_NO_CONDITION_NOT_ALLOWED',
        self::UNSUPPORTED_CONVERSION_ACTION_CATEGORIES => 'UNSUPPORTED_CONVERSION_ACTION_CATEGORIES',
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
class_alias(ConversionValueRuleSetError::class, \Google\Ads\GoogleAds\V17\Errors\ConversionValueRuleSetErrorEnum_ConversionValueRuleSetError::class);

