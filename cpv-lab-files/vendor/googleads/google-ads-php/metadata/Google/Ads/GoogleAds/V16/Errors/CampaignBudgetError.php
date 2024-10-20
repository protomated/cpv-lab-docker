<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/errors/campaign_budget_error.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V16\Errors;

class CampaignBudgetError
{
    public static $is_initialized = false;

    public static function initOnce()
    {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();
        if (static::$is_initialized == true) {
            return;
        }
        $pool->internalAddGeneratedFile(
            '
�	
;google/ads/googleads/v16/errors/campaign_budget_error.protogoogle.ads.googleads.v16.errors"�
CampaignBudgetErrorEnum"�
CampaignBudgetError
UNSPECIFIED 
UNKNOWN$
 CAMPAIGN_BUDGET_CANNOT_BE_SHARED
CAMPAIGN_BUDGET_REMOVED
CAMPAIGN_BUDGET_IN_USE(
$CAMPAIGN_BUDGET_PERIOD_NOT_AVAILABLE<
8CANNOT_MODIFY_FIELD_OF_IMPLICITLY_SHARED_CAMPAIGN_BUDGET6
2CANNOT_UPDATE_CAMPAIGN_BUDGET_TO_IMPLICITLY_SHAREDC
?CANNOT_UPDATE_CAMPAIGN_BUDGET_TO_EXPLICITLY_SHARED_WITHOUT_NAME6
2CANNOT_UPDATE_CAMPAIGN_BUDGET_TO_EXPLICITLY_SHARED	H
DCANNOT_USE_IMPLICITLY_SHARED_CAMPAIGN_BUDGET_WITH_MULTIPLE_CAMPAIGNS

DUPLICATE_NAME"
MONEY_AMOUNT_IN_WRONG_CURRENCY/
+MONEY_AMOUNT_LESS_THAN_CURRENCY_MINIMUM_CPC

MONEY_AMOUNT_TOO_LARGE
NEGATIVE_MONEY_AMOUNT)
%NON_MULTIPLE_OF_MINIMUM_CURRENCY_UNIT=
9TOTAL_BUDGET_AMOUNT_MUST_BE_UNSET_FOR_BUDGET_PERIOD_DAILY
INVALID_PERIOD(
$CANNOT_USE_ACCELERATED_DELIVERY_MODE8
4BUDGET_AMOUNT_MUST_BE_UNSET_FOR_CUSTOM_BUDGET_PERIODB�
#com.google.ads.googleads.v16.errorsBCampaignBudgetErrorProtoPZEgoogle.golang.org/genproto/googleapis/ads/googleads/v16/errors;errors�GAA�Google.Ads.GoogleAds.V16.Errors�Google\\Ads\\GoogleAds\\V16\\Errors�#Google::Ads::GoogleAds::V16::Errorsbproto3'
            , true);
        static::$is_initialized = true;
    }
}

