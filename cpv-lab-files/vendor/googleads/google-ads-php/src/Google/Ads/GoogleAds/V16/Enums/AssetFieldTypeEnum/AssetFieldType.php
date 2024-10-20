<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/enums/asset_field_type.proto

namespace Google\Ads\GoogleAds\V16\Enums\AssetFieldTypeEnum;

use UnexpectedValueException;

/**
 * Enum describing the possible placements of an asset.
 *
 * Protobuf type <code>google.ads.googleads.v16.enums.AssetFieldTypeEnum.AssetFieldType</code>
 */
class AssetFieldType
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
     * The asset is linked for use as a headline.
     *
     * Generated from protobuf enum <code>HEADLINE = 2;</code>
     */
    const HEADLINE = 2;
    /**
     * The asset is linked for use as a description.
     *
     * Generated from protobuf enum <code>DESCRIPTION = 3;</code>
     */
    const DESCRIPTION = 3;
    /**
     * The asset is linked for use as mandatory ad text.
     *
     * Generated from protobuf enum <code>MANDATORY_AD_TEXT = 4;</code>
     */
    const MANDATORY_AD_TEXT = 4;
    /**
     * The asset is linked for use as a marketing image.
     *
     * Generated from protobuf enum <code>MARKETING_IMAGE = 5;</code>
     */
    const MARKETING_IMAGE = 5;
    /**
     * The asset is linked for use as a media bundle.
     *
     * Generated from protobuf enum <code>MEDIA_BUNDLE = 6;</code>
     */
    const MEDIA_BUNDLE = 6;
    /**
     * The asset is linked for use as a YouTube video.
     *
     * Generated from protobuf enum <code>YOUTUBE_VIDEO = 7;</code>
     */
    const YOUTUBE_VIDEO = 7;
    /**
     * The asset is linked to indicate that a hotels campaign is "Book on
     * Google" enabled.
     *
     * Generated from protobuf enum <code>BOOK_ON_GOOGLE = 8;</code>
     */
    const BOOK_ON_GOOGLE = 8;
    /**
     * The asset is linked for use as a Lead Form extension.
     *
     * Generated from protobuf enum <code>LEAD_FORM = 9;</code>
     */
    const LEAD_FORM = 9;
    /**
     * The asset is linked for use as a Promotion extension.
     *
     * Generated from protobuf enum <code>PROMOTION = 10;</code>
     */
    const PROMOTION = 10;
    /**
     * The asset is linked for use as a Callout extension.
     *
     * Generated from protobuf enum <code>CALLOUT = 11;</code>
     */
    const CALLOUT = 11;
    /**
     * The asset is linked for use as a Structured Snippet extension.
     *
     * Generated from protobuf enum <code>STRUCTURED_SNIPPET = 12;</code>
     */
    const STRUCTURED_SNIPPET = 12;
    /**
     * The asset is linked for use as a Sitelink.
     *
     * Generated from protobuf enum <code>SITELINK = 13;</code>
     */
    const SITELINK = 13;
    /**
     * The asset is linked for use as a Mobile App extension.
     *
     * Generated from protobuf enum <code>MOBILE_APP = 14;</code>
     */
    const MOBILE_APP = 14;
    /**
     * The asset is linked for use as a Hotel Callout extension.
     *
     * Generated from protobuf enum <code>HOTEL_CALLOUT = 15;</code>
     */
    const HOTEL_CALLOUT = 15;
    /**
     * The asset is linked for use as a Call extension.
     *
     * Generated from protobuf enum <code>CALL = 16;</code>
     */
    const CALL = 16;
    /**
     * The asset is linked for use as a Price extension.
     *
     * Generated from protobuf enum <code>PRICE = 24;</code>
     */
    const PRICE = 24;
    /**
     * The asset is linked for use as a long headline.
     *
     * Generated from protobuf enum <code>LONG_HEADLINE = 17;</code>
     */
    const LONG_HEADLINE = 17;
    /**
     * The asset is linked for use as a business name.
     *
     * Generated from protobuf enum <code>BUSINESS_NAME = 18;</code>
     */
    const BUSINESS_NAME = 18;
    /**
     * The asset is linked for use as a square marketing image.
     *
     * Generated from protobuf enum <code>SQUARE_MARKETING_IMAGE = 19;</code>
     */
    const SQUARE_MARKETING_IMAGE = 19;
    /**
     * The asset is linked for use as a portrait marketing image.
     *
     * Generated from protobuf enum <code>PORTRAIT_MARKETING_IMAGE = 20;</code>
     */
    const PORTRAIT_MARKETING_IMAGE = 20;
    /**
     * The asset is linked for use as a logo.
     *
     * Generated from protobuf enum <code>LOGO = 21;</code>
     */
    const LOGO = 21;
    /**
     * The asset is linked for use as a landscape logo.
     *
     * Generated from protobuf enum <code>LANDSCAPE_LOGO = 22;</code>
     */
    const LANDSCAPE_LOGO = 22;
    /**
     * The asset is linked for use as a non YouTube logo.
     *
     * Generated from protobuf enum <code>VIDEO = 23;</code>
     */
    const VIDEO = 23;
    /**
     * The asset is linked for use to select a call-to-action.
     *
     * Generated from protobuf enum <code>CALL_TO_ACTION_SELECTION = 25;</code>
     */
    const CALL_TO_ACTION_SELECTION = 25;
    /**
     * The asset is linked for use to select an ad image.
     *
     * Generated from protobuf enum <code>AD_IMAGE = 26;</code>
     */
    const AD_IMAGE = 26;
    /**
     * The asset is linked for use as a business logo.
     *
     * Generated from protobuf enum <code>BUSINESS_LOGO = 27;</code>
     */
    const BUSINESS_LOGO = 27;
    /**
     * The asset is linked for use as a hotel property in a Performance Max for
     * travel goals campaign.
     *
     * Generated from protobuf enum <code>HOTEL_PROPERTY = 28;</code>
     */
    const HOTEL_PROPERTY = 28;
    /**
     * The asset is linked for use as a discovery carousel card.
     *
     * Generated from protobuf enum <code>DISCOVERY_CAROUSEL_CARD = 29;</code>
     */
    const DISCOVERY_CAROUSEL_CARD = 29;

    private static $valueToName = [
        self::UNSPECIFIED => 'UNSPECIFIED',
        self::UNKNOWN => 'UNKNOWN',
        self::HEADLINE => 'HEADLINE',
        self::DESCRIPTION => 'DESCRIPTION',
        self::MANDATORY_AD_TEXT => 'MANDATORY_AD_TEXT',
        self::MARKETING_IMAGE => 'MARKETING_IMAGE',
        self::MEDIA_BUNDLE => 'MEDIA_BUNDLE',
        self::YOUTUBE_VIDEO => 'YOUTUBE_VIDEO',
        self::BOOK_ON_GOOGLE => 'BOOK_ON_GOOGLE',
        self::LEAD_FORM => 'LEAD_FORM',
        self::PROMOTION => 'PROMOTION',
        self::CALLOUT => 'CALLOUT',
        self::STRUCTURED_SNIPPET => 'STRUCTURED_SNIPPET',
        self::SITELINK => 'SITELINK',
        self::MOBILE_APP => 'MOBILE_APP',
        self::HOTEL_CALLOUT => 'HOTEL_CALLOUT',
        self::CALL => 'CALL',
        self::PRICE => 'PRICE',
        self::LONG_HEADLINE => 'LONG_HEADLINE',
        self::BUSINESS_NAME => 'BUSINESS_NAME',
        self::SQUARE_MARKETING_IMAGE => 'SQUARE_MARKETING_IMAGE',
        self::PORTRAIT_MARKETING_IMAGE => 'PORTRAIT_MARKETING_IMAGE',
        self::LOGO => 'LOGO',
        self::LANDSCAPE_LOGO => 'LANDSCAPE_LOGO',
        self::VIDEO => 'VIDEO',
        self::CALL_TO_ACTION_SELECTION => 'CALL_TO_ACTION_SELECTION',
        self::AD_IMAGE => 'AD_IMAGE',
        self::BUSINESS_LOGO => 'BUSINESS_LOGO',
        self::HOTEL_PROPERTY => 'HOTEL_PROPERTY',
        self::DISCOVERY_CAROUSEL_CARD => 'DISCOVERY_CAROUSEL_CARD',
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
class_alias(AssetFieldType::class, \Google\Ads\GoogleAds\V16\Enums\AssetFieldTypeEnum_AssetFieldType::class);

