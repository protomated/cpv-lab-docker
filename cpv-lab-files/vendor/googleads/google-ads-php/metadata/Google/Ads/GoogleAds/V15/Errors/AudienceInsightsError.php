<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/errors/audience_insights_error.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V15\Errors;

class AudienceInsightsError
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
�
=google/ads/googleads/v15/errors/audience_insights_error.protogoogle.ads.googleads.v15.errors"�
AudienceInsightsErrorEnum"r
AudienceInsightsError
UNSPECIFIED 
UNKNOWN;
7DIMENSION_INCOMPATIBLE_WITH_TOPIC_AUDIENCE_COMBINATIONSB�
#com.google.ads.googleads.v15.errorsBAudienceInsightsErrorProtoPZEgoogle.golang.org/genproto/googleapis/ads/googleads/v15/errors;errors�GAA�Google.Ads.GoogleAds.V15.Errors�Google\\Ads\\GoogleAds\\V15\\Errors�#Google::Ads::GoogleAds::V15::Errorsbproto3'
            , true);
        static::$is_initialized = true;
    }
}

