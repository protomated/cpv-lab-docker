<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/services/account_link_service.proto

namespace GPBMetadata\Google\Ads\GoogleAds\V15\Services;

class AccountLinkService
{
    public static $is_initialized = false;

    public static function initOnce()
    {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();
        if (static::$is_initialized == true) {
            return;
        }
        \GPBMetadata\Google\Api\Resource::initOnce();
        \GPBMetadata\Google\Protobuf\Duration::initOnce();
        \GPBMetadata\Google\Api\FieldBehavior::initOnce();
        \GPBMetadata\Google\Api\Http::initOnce();
        \GPBMetadata\Google\Api\Annotations::initOnce();
        \GPBMetadata\Google\Protobuf\FieldMask::initOnce();
        \GPBMetadata\Google\Protobuf\Any::initOnce();
        \GPBMetadata\Google\Rpc\Status::initOnce();
        \GPBMetadata\Google\Api\LaunchStage::initOnce();
        \GPBMetadata\Google\Api\Client::initOnce();
        $pool->internalAddGeneratedFile(
            '
�
6google/ads/googleads/v15/enums/mobile_app_vendor.protogoogle.ads.googleads.v15.enums"q
MobileAppVendorEnum"Z
MobileAppVendor
UNSPECIFIED 
UNKNOWN
APPLE_APP_STORE
GOOGLE_APP_STOREB�
"com.google.ads.googleads.v15.enumsBMobileAppVendorProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
8google/ads/googleads/v15/enums/linked_account_type.protogoogle.ads.googleads.v15.enums"�
LinkedAccountTypeEnum"�
LinkedAccountType
UNSPECIFIED 
UNKNOWN
THIRD_PARTY_APP_ANALYTICS
DATA_PARTNER

GOOGLE_ADS
ADVERTISING_PARTNERB�
"com.google.ads.googleads.v15.enumsBLinkedAccountTypeProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
8google/ads/googleads/v15/enums/account_link_status.protogoogle.ads.googleads.v15.enums"�
AccountLinkStatusEnum"�
AccountLinkStatus
UNSPECIFIED 
UNKNOWN
ENABLED
REMOVED
	REQUESTED
PENDING_APPROVAL
REJECTED
REVOKEDB�
"com.google.ads.googleads.v15.enumsBAccountLinkStatusProtoPZCgoogle.golang.org/genproto/googleapis/ads/googleads/v15/enums;enums�GAA�Google.Ads.GoogleAds.V15.Enums�Google\\Ads\\GoogleAds\\V15\\Enums�"Google::Ads::GoogleAds::V15::Enumsbproto3
�
5google/ads/googleads/v15/resources/account_link.proto"google.ads.googleads.v15.resources8google/ads/googleads/v15/enums/linked_account_type.proto6google/ads/googleads/v15/enums/mobile_app_vendor.protogoogle/api/field_behavior.protogoogle/api/resource.proto"�
AccountLinkC

resource_name (	B,�A�A&
$googleads.googleapis.com/AccountLink!
account_link_id (B�AH�W
status (2G.google.ads.googleads.v15.enums.AccountLinkStatusEnum.AccountLinkStatusZ
type (2G.google.ads.googleads.v15.enums.LinkedAccountTypeEnum.LinkedAccountTypeB�Ar
third_party_app_analytics (2H.google.ads.googleads.v15.resources.ThirdPartyAppAnalyticsLinkIdentifierB�AH Z
data_partner (2=.google.ads.googleads.v15.resources.DataPartnerLinkIdentifierB�AH V

google_ads (2;.google.ads.googleads.v15.resources.GoogleAdsLinkIdentifierB�AH h
advertising_partner
 (2D.google.ads.googleads.v15.resources.AdvertisingPartnerLinkIdentifierB�AH :a�A^
$googleads.googleapis.com/AccountLink6customers/{customer_id}/accountLinks/{account_link_id}B
linked_accountB
_account_link_id"�
$ThirdPartyAppAnalyticsLinkIdentifier+
app_analytics_provider_id (B�AH �
app_id (	B�AH�\\

app_vendor (2C.google.ads.googleads.v15.enums.MobileAppVendorEnum.MobileAppVendorB�AB
_app_analytics_provider_idB	
_app_id"R
DataPartnerLinkIdentifier!
data_partner_id (B�AH �B
_data_partner_id"h
GoogleAdsLinkIdentifier@
customer (	B)�A�A#
!googleads.googleapis.com/CustomerH �B
	_customer"q
 AdvertisingPartnerLinkIdentifier@
customer (	B)�A�A#
!googleads.googleapis.com/CustomerH �B
	_customerB�
&com.google.ads.googleads.v15.resourcesBAccountLinkProtoPZKgoogle.golang.org/genproto/googleapis/ads/googleads/v15/resources;resources�GAA�"Google.Ads.GoogleAds.V15.Resources�"Google\\Ads\\GoogleAds\\V15\\Resources�&Google::Ads::GoogleAds::V15::Resourcesbproto3
�
<google/ads/googleads/v15/services/account_link_service.proto!google.ads.googleads.v15.servicesgoogle/api/annotations.protogoogle/api/client.protogoogle/api/field_behavior.protogoogle/api/resource.proto google/protobuf/field_mask.protogoogle/rpc/status.proto"�
CreateAccountLinkRequest
customer_id (	B�AJ
account_link (2/.google.ads.googleads.v15.resources.AccountLinkB�A"]
CreateAccountLinkResponse@

resource_name (	B)�A&
$googleads.googleapis.com/AccountLink"�
MutateAccountLinkRequest
customer_id (	B�AO
	operation (27.google.ads.googleads.v15.services.AccountLinkOperationB�A
partial_failure (

validate_only ("�
AccountLinkOperation/
update_mask (2.google.protobuf.FieldMaskA
update (2/.google.ads.googleads.v15.resources.AccountLinkH ;
remove (	B)�A&
$googleads.googleapis.com/AccountLinkH B
	operation"�
MutateAccountLinkResponseJ
result (2:.google.ads.googleads.v15.services.MutateAccountLinkResult1
partial_failure_error (2.google.rpc.Status"[
MutateAccountLinkResult@

resource_name (	B)�A&
$googleads.googleapis.com/AccountLink2�
AccountLinkService�
CreateAccountLink;.google.ads.googleads.v15.services.CreateAccountLinkRequest<.google.ads.googleads.v15.services.CreateAccountLinkResponse"X���7"2/v15/customers/{customer_id=*}/accountLinks:create:*�Acustomer_id,account_link�
MutateAccountLink;.google.ads.googleads.v15.services.MutateAccountLinkRequest<.google.ads.googleads.v15.services.MutateAccountLinkResponse"U���7"2/v15/customers/{customer_id=*}/accountLinks:mutate:*�Acustomer_id,operationE�Agoogleads.googleapis.com�A\'https://www.googleapis.com/auth/adwordsB�
%com.google.ads.googleads.v15.servicesBAccountLinkServiceProtoPZIgoogle.golang.org/genproto/googleapis/ads/googleads/v15/services;services�GAA�!Google.Ads.GoogleAds.V15.Services�!Google\\Ads\\GoogleAds\\V15\\Services�%Google::Ads::GoogleAds::V15::Servicesbproto3'
            , true);
        static::$is_initialized = true;
    }
}

