<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/enums/bidding_strategy_type.proto

namespace Google\Ads\GoogleAds\V16\Enums\BiddingStrategyTypeEnum;

use UnexpectedValueException;

/**
 * Enum describing possible bidding strategy types.
 *
 * Protobuf type <code>google.ads.googleads.v16.enums.BiddingStrategyTypeEnum.BiddingStrategyType</code>
 */
class BiddingStrategyType
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
     * Commission is an automatic bidding strategy in which the advertiser pays
     * a certain portion of the conversion value.
     *
     * Generated from protobuf enum <code>COMMISSION = 16;</code>
     */
    const COMMISSION = 16;
    /**
     * Enhanced CPC is a bidding strategy that raises bids for clicks
     * that seem more likely to lead to a conversion and lowers
     * them for clicks where they seem less likely.
     *
     * Generated from protobuf enum <code>ENHANCED_CPC = 2;</code>
     */
    const ENHANCED_CPC = 2;
    /**
     * Used for return value only. Indicates that a campaign does not have a
     * bidding strategy. This prevents the campaign from serving. For example,
     * a campaign may be attached to a manager bidding strategy and the serving
     * account is subsequently unlinked from the manager account. In this case
     * the campaign will automatically be detached from the now inaccessible
     * manager bidding strategy and transition to the INVALID bidding strategy
     * type.
     *
     * Generated from protobuf enum <code>INVALID = 17;</code>
     */
    const INVALID = 17;
    /**
     * Manual bidding strategy that allows advertiser to set the bid per
     * advertiser-specified action.
     *
     * Generated from protobuf enum <code>MANUAL_CPA = 18;</code>
     */
    const MANUAL_CPA = 18;
    /**
     * Manual click based bidding where user pays per click.
     *
     * Generated from protobuf enum <code>MANUAL_CPC = 3;</code>
     */
    const MANUAL_CPC = 3;
    /**
     * Manual impression based bidding
     * where user pays per thousand impressions.
     *
     * Generated from protobuf enum <code>MANUAL_CPM = 4;</code>
     */
    const MANUAL_CPM = 4;
    /**
     * A bidding strategy that pays a configurable amount per video view.
     *
     * Generated from protobuf enum <code>MANUAL_CPV = 13;</code>
     */
    const MANUAL_CPV = 13;
    /**
     * A bidding strategy that automatically maximizes number of conversions
     * given a daily budget.
     *
     * Generated from protobuf enum <code>MAXIMIZE_CONVERSIONS = 10;</code>
     */
    const MAXIMIZE_CONVERSIONS = 10;
    /**
     * An automated bidding strategy that automatically sets bids to maximize
     * revenue while spending your budget.
     *
     * Generated from protobuf enum <code>MAXIMIZE_CONVERSION_VALUE = 11;</code>
     */
    const MAXIMIZE_CONVERSION_VALUE = 11;
    /**
     * Page-One Promoted bidding scheme, which sets max cpc bids to
     * target impressions on page one or page one promoted slots on google.com.
     * This enum value is deprecated.
     *
     * Generated from protobuf enum <code>PAGE_ONE_PROMOTED = 5;</code>
     */
    const PAGE_ONE_PROMOTED = 5;
    /**
     * Percent Cpc is bidding strategy where bids are a fraction of the
     * advertised price for some good or service.
     *
     * Generated from protobuf enum <code>PERCENT_CPC = 12;</code>
     */
    const PERCENT_CPC = 12;
    /**
     * Target CPA is an automated bid strategy that sets bids
     * to help get as many conversions as possible
     * at the target cost-per-acquisition (CPA) you set.
     *
     * Generated from protobuf enum <code>TARGET_CPA = 6;</code>
     */
    const TARGET_CPA = 6;
    /**
     * Target CPM is an automated bid strategy that sets bids to help get
     * as many impressions as possible at the target cost per one thousand
     * impressions (CPM) you set.
     *
     * Generated from protobuf enum <code>TARGET_CPM = 14;</code>
     */
    const TARGET_CPM = 14;
    /**
     * An automated bidding strategy that sets bids so that a certain percentage
     * of search ads are shown at the top of the first page (or other targeted
     * location).
     *
     * Generated from protobuf enum <code>TARGET_IMPRESSION_SHARE = 15;</code>
     */
    const TARGET_IMPRESSION_SHARE = 15;
    /**
     * Target Outrank Share is an automated bidding strategy that sets bids
     * based on the target fraction of auctions where the advertiser
     * should outrank a specific competitor.
     * This enum value is deprecated.
     *
     * Generated from protobuf enum <code>TARGET_OUTRANK_SHARE = 7;</code>
     */
    const TARGET_OUTRANK_SHARE = 7;
    /**
     * Target ROAS is an automated bidding strategy
     * that helps you maximize revenue while averaging
     * a specific target Return On Average Spend (ROAS).
     *
     * Generated from protobuf enum <code>TARGET_ROAS = 8;</code>
     */
    const TARGET_ROAS = 8;
    /**
     * Target Spend is an automated bid strategy that sets your bids
     * to help get as many clicks as possible within your budget.
     *
     * Generated from protobuf enum <code>TARGET_SPEND = 9;</code>
     */
    const TARGET_SPEND = 9;

    private static $valueToName = [
        self::UNSPECIFIED => 'UNSPECIFIED',
        self::UNKNOWN => 'UNKNOWN',
        self::COMMISSION => 'COMMISSION',
        self::ENHANCED_CPC => 'ENHANCED_CPC',
        self::INVALID => 'INVALID',
        self::MANUAL_CPA => 'MANUAL_CPA',
        self::MANUAL_CPC => 'MANUAL_CPC',
        self::MANUAL_CPM => 'MANUAL_CPM',
        self::MANUAL_CPV => 'MANUAL_CPV',
        self::MAXIMIZE_CONVERSIONS => 'MAXIMIZE_CONVERSIONS',
        self::MAXIMIZE_CONVERSION_VALUE => 'MAXIMIZE_CONVERSION_VALUE',
        self::PAGE_ONE_PROMOTED => 'PAGE_ONE_PROMOTED',
        self::PERCENT_CPC => 'PERCENT_CPC',
        self::TARGET_CPA => 'TARGET_CPA',
        self::TARGET_CPM => 'TARGET_CPM',
        self::TARGET_IMPRESSION_SHARE => 'TARGET_IMPRESSION_SHARE',
        self::TARGET_OUTRANK_SHARE => 'TARGET_OUTRANK_SHARE',
        self::TARGET_ROAS => 'TARGET_ROAS',
        self::TARGET_SPEND => 'TARGET_SPEND',
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
class_alias(BiddingStrategyType::class, \Google\Ads\GoogleAds\V16\Enums\BiddingStrategyTypeEnum_BiddingStrategyType::class);

