<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/errors/batch_job_error.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V15\Errors;

class BatchJobError
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
�
5google/ads/googleads/v15/errors/batch_job_error.protogoogle.ads.googleads.v15.errors"�
BatchJobErrorEnum"�

BatchJobError
UNSPECIFIED 
UNKNOWN.
*CANNOT_MODIFY_JOB_AFTER_JOB_STARTS_RUNNING
EMPTY_OPERATIONS
INVALID_SEQUENCE_TOKEN
RESULTS_NOT_READY
INVALID_PAGE_SIZE
CAN_ONLY_REMOVE_PENDING_JOB
CANNOT_LIST_RESULTSB�
#com.google.ads.googleads.v15.errorsBBatchJobErrorProtoPZEgoogle.golang.org/genproto/googleapis/ads/googleads/v15/errors;errors�GAA�Google.Ads.GoogleAds.V15.Errors�Google\\Ads\\GoogleAds\\V15\\Errors�#Google::Ads::GoogleAds::V15::Errorsbproto3'
            , true);
        static::$is_initialized = true;
    }
}

