<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/config_change.proto

namespace GPBMetadata\Google\Api;

class ConfigChange
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
google/api/config_change.proto
google.api"�
ConfigChange
element (	
	old_value (	
	new_value (	+
change_type (2.google.api.ChangeType#
advices (2.google.api.Advice"
Advice
description (	*O

ChangeType
CHANGE_TYPE_UNSPECIFIED 	
ADDED
REMOVED
MODIFIEDBq
com.google.apiBConfigChangeProtoPZCgoogle.golang.org/genproto/googleapis/api/configchange;configchange�GAPIbproto3'
            , true);

        static::$is_initialized = true;
    }
}

