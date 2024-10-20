<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/errors/asset_set_asset_error.proto

namespace Google\Ads\GoogleAds\V16\Errors\AssetSetAssetErrorEnum;

use UnexpectedValueException;

/**
 * Enum describing possible asset set asset errors.
 *
 * Protobuf type <code>google.ads.googleads.v16.errors.AssetSetAssetErrorEnum.AssetSetAssetError</code>
 */
class AssetSetAssetError
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
     * The asset type is not eligible to be linked to the specific type of asset
     * set.
     *
     * Generated from protobuf enum <code>INVALID_ASSET_TYPE = 2;</code>
     */
    const INVALID_ASSET_TYPE = 2;
    /**
     * The asset set type is not eligible to contain the specified type of
     * assets.
     *
     * Generated from protobuf enum <code>INVALID_ASSET_SET_TYPE = 3;</code>
     */
    const INVALID_ASSET_SET_TYPE = 3;
    /**
     * The asset contains duplicate external key with another asset in the asset
     * set.
     *
     * Generated from protobuf enum <code>DUPLICATE_EXTERNAL_KEY = 4;</code>
     */
    const DUPLICATE_EXTERNAL_KEY = 4;
    /**
     * When attaching a Location typed Asset to a LocationGroup typed AssetSet,
     * the AssetSetAsset linkage between the parent LocationSync AssetSet and
     * the Asset doesn't exist.
     *
     * Generated from protobuf enum <code>PARENT_LINKAGE_DOES_NOT_EXIST = 5;</code>
     */
    const PARENT_LINKAGE_DOES_NOT_EXIST = 5;

    private static $valueToName = [
        self::UNSPECIFIED => 'UNSPECIFIED',
        self::UNKNOWN => 'UNKNOWN',
        self::INVALID_ASSET_TYPE => 'INVALID_ASSET_TYPE',
        self::INVALID_ASSET_SET_TYPE => 'INVALID_ASSET_SET_TYPE',
        self::DUPLICATE_EXTERNAL_KEY => 'DUPLICATE_EXTERNAL_KEY',
        self::PARENT_LINKAGE_DOES_NOT_EXIST => 'PARENT_LINKAGE_DOES_NOT_EXIST',
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
class_alias(AssetSetAssetError::class, \Google\Ads\GoogleAds\V16\Errors\AssetSetAssetErrorEnum_AssetSetAssetError::class);

