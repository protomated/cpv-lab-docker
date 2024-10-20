<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/enums/account_budget_status.proto

namespace Google\Ads\GoogleAds\V16\Enums\AccountBudgetStatusEnum;

use UnexpectedValueException;

/**
 * The possible statuses of an AccountBudget.
 *
 * Protobuf type <code>google.ads.googleads.v16.enums.AccountBudgetStatusEnum.AccountBudgetStatus</code>
 */
class AccountBudgetStatus
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
     * The account budget is pending approval.
     *
     * Generated from protobuf enum <code>PENDING = 2;</code>
     */
    const PENDING = 2;
    /**
     * The account budget has been approved.
     *
     * Generated from protobuf enum <code>APPROVED = 3;</code>
     */
    const APPROVED = 3;
    /**
     * The account budget has been cancelled by the user.
     *
     * Generated from protobuf enum <code>CANCELLED = 4;</code>
     */
    const CANCELLED = 4;

    private static $valueToName = [
        self::UNSPECIFIED => 'UNSPECIFIED',
        self::UNKNOWN => 'UNKNOWN',
        self::PENDING => 'PENDING',
        self::APPROVED => 'APPROVED',
        self::CANCELLED => 'CANCELLED',
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
class_alias(AccountBudgetStatus::class, \Google\Ads\GoogleAds\V16\Enums\AccountBudgetStatusEnum_AccountBudgetStatus::class);

