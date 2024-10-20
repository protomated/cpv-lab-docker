<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/errors/conversion_action_error.proto

namespace Google\Ads\GoogleAds\V15\Errors\ConversionActionErrorEnum;

use UnexpectedValueException;

/**
 * Enum describing possible conversion action errors.
 *
 * Protobuf type <code>google.ads.googleads.v15.errors.ConversionActionErrorEnum.ConversionActionError</code>
 */
class ConversionActionError
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
     * The specified conversion action name already exists.
     *
     * Generated from protobuf enum <code>DUPLICATE_NAME = 2;</code>
     */
    const DUPLICATE_NAME = 2;
    /**
     * Another conversion action with the specified app id already exists.
     *
     * Generated from protobuf enum <code>DUPLICATE_APP_ID = 3;</code>
     */
    const DUPLICATE_APP_ID = 3;
    /**
     * Android first open action conflicts with Google play codeless download
     * action tracking the same app.
     *
     * Generated from protobuf enum <code>TWO_CONVERSION_ACTIONS_BIDDING_ON_SAME_APP_DOWNLOAD = 4;</code>
     */
    const TWO_CONVERSION_ACTIONS_BIDDING_ON_SAME_APP_DOWNLOAD = 4;
    /**
     * Android first open action conflicts with Google play codeless download
     * action tracking the same app.
     *
     * Generated from protobuf enum <code>BIDDING_ON_SAME_APP_DOWNLOAD_AS_GLOBAL_ACTION = 5;</code>
     */
    const BIDDING_ON_SAME_APP_DOWNLOAD_AS_GLOBAL_ACTION = 5;
    /**
     * The attribution model cannot be set to DATA_DRIVEN because a data-driven
     * model has never been generated.
     *
     * Generated from protobuf enum <code>DATA_DRIVEN_MODEL_WAS_NEVER_GENERATED = 6;</code>
     */
    const DATA_DRIVEN_MODEL_WAS_NEVER_GENERATED = 6;
    /**
     * The attribution model cannot be set to DATA_DRIVEN because the
     * data-driven model is expired.
     *
     * Generated from protobuf enum <code>DATA_DRIVEN_MODEL_EXPIRED = 7;</code>
     */
    const DATA_DRIVEN_MODEL_EXPIRED = 7;
    /**
     * The attribution model cannot be set to DATA_DRIVEN because the
     * data-driven model is stale.
     *
     * Generated from protobuf enum <code>DATA_DRIVEN_MODEL_STALE = 8;</code>
     */
    const DATA_DRIVEN_MODEL_STALE = 8;
    /**
     * The attribution model cannot be set to DATA_DRIVEN because the
     * data-driven model is unavailable or the conversion action was newly
     * added.
     *
     * Generated from protobuf enum <code>DATA_DRIVEN_MODEL_UNKNOWN = 9;</code>
     */
    const DATA_DRIVEN_MODEL_UNKNOWN = 9;
    /**
     * Creation of this conversion action type isn't supported by Google
     * Ads API.
     *
     * Generated from protobuf enum <code>CREATION_NOT_SUPPORTED = 10;</code>
     */
    const CREATION_NOT_SUPPORTED = 10;
    /**
     * Update of this conversion action isn't supported by Google Ads API.
     *
     * Generated from protobuf enum <code>UPDATE_NOT_SUPPORTED = 11;</code>
     */
    const UPDATE_NOT_SUPPORTED = 11;
    /**
     * Rule-based attribution models are deprecated and not allowed to be set
     * by conversion action.
     *
     * Generated from protobuf enum <code>CANNOT_SET_RULE_BASED_ATTRIBUTION_MODELS = 12;</code>
     */
    const CANNOT_SET_RULE_BASED_ATTRIBUTION_MODELS = 12;

    private static $valueToName = [
        self::UNSPECIFIED => 'UNSPECIFIED',
        self::UNKNOWN => 'UNKNOWN',
        self::DUPLICATE_NAME => 'DUPLICATE_NAME',
        self::DUPLICATE_APP_ID => 'DUPLICATE_APP_ID',
        self::TWO_CONVERSION_ACTIONS_BIDDING_ON_SAME_APP_DOWNLOAD => 'TWO_CONVERSION_ACTIONS_BIDDING_ON_SAME_APP_DOWNLOAD',
        self::BIDDING_ON_SAME_APP_DOWNLOAD_AS_GLOBAL_ACTION => 'BIDDING_ON_SAME_APP_DOWNLOAD_AS_GLOBAL_ACTION',
        self::DATA_DRIVEN_MODEL_WAS_NEVER_GENERATED => 'DATA_DRIVEN_MODEL_WAS_NEVER_GENERATED',
        self::DATA_DRIVEN_MODEL_EXPIRED => 'DATA_DRIVEN_MODEL_EXPIRED',
        self::DATA_DRIVEN_MODEL_STALE => 'DATA_DRIVEN_MODEL_STALE',
        self::DATA_DRIVEN_MODEL_UNKNOWN => 'DATA_DRIVEN_MODEL_UNKNOWN',
        self::CREATION_NOT_SUPPORTED => 'CREATION_NOT_SUPPORTED',
        self::UPDATE_NOT_SUPPORTED => 'UPDATE_NOT_SUPPORTED',
        self::CANNOT_SET_RULE_BASED_ATTRIBUTION_MODELS => 'CANNOT_SET_RULE_BASED_ATTRIBUTION_MODELS',
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
class_alias(ConversionActionError::class, \Google\Ads\GoogleAds\V15\Errors\ConversionActionErrorEnum_ConversionActionError::class);

