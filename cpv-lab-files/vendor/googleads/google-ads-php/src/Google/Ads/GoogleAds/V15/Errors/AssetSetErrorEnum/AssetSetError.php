<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/errors/asset_set_error.proto

namespace Google\Ads\GoogleAds\V15\Errors\AssetSetErrorEnum;

use UnexpectedValueException;

/**
 * Enum describing possible asset set errors.
 *
 * Protobuf type <code>google.ads.googleads.v15.errors.AssetSetErrorEnum.AssetSetError</code>
 */
class AssetSetError
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
     * The asset set name matches that of another enabled asset set.
     *
     * Generated from protobuf enum <code>DUPLICATE_ASSET_SET_NAME = 2;</code>
     */
    const DUPLICATE_ASSET_SET_NAME = 2;
    /**
     * The type of AssetSet.asset_set_source does not match the type of
     * AssetSet.location_set.source in its parent AssetSet.
     *
     * Generated from protobuf enum <code>INVALID_PARENT_ASSET_SET_TYPE = 3;</code>
     */
    const INVALID_PARENT_ASSET_SET_TYPE = 3;
    /**
     * The asset set source doesn't match its parent AssetSet's data.
     *
     * Generated from protobuf enum <code>ASSET_SET_SOURCE_INCOMPATIBLE_WITH_PARENT_ASSET_SET = 4;</code>
     */
    const ASSET_SET_SOURCE_INCOMPATIBLE_WITH_PARENT_ASSET_SET = 4;
    /**
     * This AssetSet type cannot be linked to CustomerAssetSet.
     *
     * Generated from protobuf enum <code>ASSET_SET_TYPE_CANNOT_BE_LINKED_TO_CUSTOMER = 5;</code>
     */
    const ASSET_SET_TYPE_CANNOT_BE_LINKED_TO_CUSTOMER = 5;
    /**
     * The chain id(s) in ChainSet of a LOCATION_SYNC typed AssetSet is invalid.
     *
     * Generated from protobuf enum <code>INVALID_CHAIN_IDS = 6;</code>
     */
    const INVALID_CHAIN_IDS = 6;
    /**
     * The relationship type in ChainSet of a LOCATION_SYNC typed AssetSet is
     * not supported.
     *
     * Generated from protobuf enum <code>LOCATION_SYNC_ASSET_SET_DOES_NOT_SUPPORT_RELATIONSHIP_TYPE = 7;</code>
     */
    const LOCATION_SYNC_ASSET_SET_DOES_NOT_SUPPORT_RELATIONSHIP_TYPE = 7;
    /**
     * There is more than one enabled LocationSync typed AssetSet under one
     * customer.
     *
     * Generated from protobuf enum <code>NOT_UNIQUE_ENABLED_LOCATION_SYNC_TYPED_ASSET_SET = 8;</code>
     */
    const NOT_UNIQUE_ENABLED_LOCATION_SYNC_TYPED_ASSET_SET = 8;
    /**
     * The place id(s) in a LocationSync typed AssetSet is invalid and can't be
     * decoded.
     *
     * Generated from protobuf enum <code>INVALID_PLACE_IDS = 9;</code>
     */
    const INVALID_PLACE_IDS = 9;
    /**
     * The Google Business Profile OAuth info is invalid.
     *
     * Generated from protobuf enum <code>OAUTH_INFO_INVALID = 11;</code>
     */
    const OAUTH_INFO_INVALID = 11;
    /**
     * The Google Business Profile OAuth info is missing.
     *
     * Generated from protobuf enum <code>OAUTH_INFO_MISSING = 12;</code>
     */
    const OAUTH_INFO_MISSING = 12;
    /**
     * Can't delete an AssetSet if it has any enabled linkages (e.g.
     * CustomerAssetSet), or AssetSet is a parent AssetSet and has enabled child
     * AssetSet associated.
     *
     * Generated from protobuf enum <code>CANNOT_DELETE_AS_ENABLED_LINKAGES_EXIST = 10;</code>
     */
    const CANNOT_DELETE_AS_ENABLED_LINKAGES_EXIST = 10;

    private static $valueToName = [
        self::UNSPECIFIED => 'UNSPECIFIED',
        self::UNKNOWN => 'UNKNOWN',
        self::DUPLICATE_ASSET_SET_NAME => 'DUPLICATE_ASSET_SET_NAME',
        self::INVALID_PARENT_ASSET_SET_TYPE => 'INVALID_PARENT_ASSET_SET_TYPE',
        self::ASSET_SET_SOURCE_INCOMPATIBLE_WITH_PARENT_ASSET_SET => 'ASSET_SET_SOURCE_INCOMPATIBLE_WITH_PARENT_ASSET_SET',
        self::ASSET_SET_TYPE_CANNOT_BE_LINKED_TO_CUSTOMER => 'ASSET_SET_TYPE_CANNOT_BE_LINKED_TO_CUSTOMER',
        self::INVALID_CHAIN_IDS => 'INVALID_CHAIN_IDS',
        self::LOCATION_SYNC_ASSET_SET_DOES_NOT_SUPPORT_RELATIONSHIP_TYPE => 'LOCATION_SYNC_ASSET_SET_DOES_NOT_SUPPORT_RELATIONSHIP_TYPE',
        self::NOT_UNIQUE_ENABLED_LOCATION_SYNC_TYPED_ASSET_SET => 'NOT_UNIQUE_ENABLED_LOCATION_SYNC_TYPED_ASSET_SET',
        self::INVALID_PLACE_IDS => 'INVALID_PLACE_IDS',
        self::OAUTH_INFO_INVALID => 'OAUTH_INFO_INVALID',
        self::OAUTH_INFO_MISSING => 'OAUTH_INFO_MISSING',
        self::CANNOT_DELETE_AS_ENABLED_LINKAGES_EXIST => 'CANNOT_DELETE_AS_ENABLED_LINKAGES_EXIST',
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
class_alias(AssetSetError::class, \Google\Ads\GoogleAds\V15\Errors\AssetSetErrorEnum_AssetSetError::class);

