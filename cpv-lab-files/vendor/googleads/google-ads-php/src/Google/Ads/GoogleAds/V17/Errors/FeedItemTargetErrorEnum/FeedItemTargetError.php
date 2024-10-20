<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v17/errors/feed_item_target_error.proto

namespace Google\Ads\GoogleAds\V17\Errors\FeedItemTargetErrorEnum;

use UnexpectedValueException;

/**
 * Enum describing possible feed item target errors.
 *
 * Protobuf type <code>google.ads.googleads.v17.errors.FeedItemTargetErrorEnum.FeedItemTargetError</code>
 */
class FeedItemTargetError
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
     * On CREATE, the FeedItemTarget must have a populated field in the oneof
     * target.
     *
     * Generated from protobuf enum <code>MUST_SET_TARGET_ONEOF_ON_CREATE = 2;</code>
     */
    const MUST_SET_TARGET_ONEOF_ON_CREATE = 2;
    /**
     * The specified feed item target already exists, so it cannot be added.
     *
     * Generated from protobuf enum <code>FEED_ITEM_TARGET_ALREADY_EXISTS = 3;</code>
     */
    const FEED_ITEM_TARGET_ALREADY_EXISTS = 3;
    /**
     * The schedules for a given feed item cannot overlap.
     *
     * Generated from protobuf enum <code>FEED_ITEM_SCHEDULES_CANNOT_OVERLAP = 4;</code>
     */
    const FEED_ITEM_SCHEDULES_CANNOT_OVERLAP = 4;
    /**
     * Too many targets of a given type were added for a single feed item.
     *
     * Generated from protobuf enum <code>TARGET_LIMIT_EXCEEDED_FOR_GIVEN_TYPE = 5;</code>
     */
    const TARGET_LIMIT_EXCEEDED_FOR_GIVEN_TYPE = 5;
    /**
     * Too many AdSchedules are enabled for the feed item for the given day.
     *
     * Generated from protobuf enum <code>TOO_MANY_SCHEDULES_PER_DAY = 6;</code>
     */
    const TOO_MANY_SCHEDULES_PER_DAY = 6;
    /**
     * A feed item may either have an enabled campaign target or an enabled ad
     * group target.
     *
     * Generated from protobuf enum <code>CANNOT_HAVE_ENABLED_CAMPAIGN_AND_ENABLED_AD_GROUP_TARGETS = 7;</code>
     */
    const CANNOT_HAVE_ENABLED_CAMPAIGN_AND_ENABLED_AD_GROUP_TARGETS = 7;
    /**
     * Duplicate ad schedules aren't allowed.
     *
     * Generated from protobuf enum <code>DUPLICATE_AD_SCHEDULE = 8;</code>
     */
    const DUPLICATE_AD_SCHEDULE = 8;
    /**
     * Duplicate keywords aren't allowed.
     *
     * Generated from protobuf enum <code>DUPLICATE_KEYWORD = 9;</code>
     */
    const DUPLICATE_KEYWORD = 9;

    private static $valueToName = [
        self::UNSPECIFIED => 'UNSPECIFIED',
        self::UNKNOWN => 'UNKNOWN',
        self::MUST_SET_TARGET_ONEOF_ON_CREATE => 'MUST_SET_TARGET_ONEOF_ON_CREATE',
        self::FEED_ITEM_TARGET_ALREADY_EXISTS => 'FEED_ITEM_TARGET_ALREADY_EXISTS',
        self::FEED_ITEM_SCHEDULES_CANNOT_OVERLAP => 'FEED_ITEM_SCHEDULES_CANNOT_OVERLAP',
        self::TARGET_LIMIT_EXCEEDED_FOR_GIVEN_TYPE => 'TARGET_LIMIT_EXCEEDED_FOR_GIVEN_TYPE',
        self::TOO_MANY_SCHEDULES_PER_DAY => 'TOO_MANY_SCHEDULES_PER_DAY',
        self::CANNOT_HAVE_ENABLED_CAMPAIGN_AND_ENABLED_AD_GROUP_TARGETS => 'CANNOT_HAVE_ENABLED_CAMPAIGN_AND_ENABLED_AD_GROUP_TARGETS',
        self::DUPLICATE_AD_SCHEDULE => 'DUPLICATE_AD_SCHEDULE',
        self::DUPLICATE_KEYWORD => 'DUPLICATE_KEYWORD',
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
class_alias(FeedItemTargetError::class, \Google\Ads\GoogleAds\V17\Errors\FeedItemTargetErrorEnum_FeedItemTargetError::class);

