<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/auth.proto

namespace GPBMetadata\Google\Api;

class Auth
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
�
google/api/auth.proto
google.api"l
Authentication-
rules (2.google.api.AuthenticationRule+
	providers (2.google.api.AuthProvider"�
AuthenticationRule
selector (	,
oauth (2.google.api.OAuthRequirements 
allow_without_credential (1
requirements (2.google.api.AuthRequirement"^
JwtLocation
header (	H 
query (	H 
cookie (	H 
value_prefix (	B
in"�
AuthProvider

id (	
issuer (	
jwks_uri (	
	audiences (	
authorization_url (	.

jwt_locations (2.google.api.JwtLocation"-
OAuthRequirements
canonical_scopes (	"9
AuthRequirement
provider_id (	
	audiences (	Bk
com.google.apiB	AuthProtoPZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig�GAPIbproto3'
            , true);

        static::$is_initialized = true;
    }
}

