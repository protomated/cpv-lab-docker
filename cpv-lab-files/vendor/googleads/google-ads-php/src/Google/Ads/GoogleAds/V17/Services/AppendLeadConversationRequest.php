<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v17/services/local_services_lead_service.proto

namespace Google\Ads\GoogleAds\V17\Services;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Request message for
 * [LocalServicesLeadService.AppendLeadConversation][google.ads.googleads.v17.services.LocalServicesLeadService.AppendLeadConversation].
 *
 * Generated from protobuf message <code>google.ads.googleads.v17.services.AppendLeadConversationRequest</code>
 */
class AppendLeadConversationRequest extends \Google\Protobuf\Internal\Message
{
    /**
     * Required. The Id of the customer which owns the leads onto which the
     * conversations will be appended.
     *
     * Generated from protobuf field <code>string customer_id = 1 [(.google.api.field_behavior) = REQUIRED];</code>
     */
    protected $customer_id = '';
    /**
     * Required. Conversations that are being appended.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v17.services.Conversation conversations = 2 [(.google.api.field_behavior) = REQUIRED];</code>
     */
    private $conversations;

    /**
     * @param string $customerId Required. The Id of the customer which owns the leads onto which the
     *                                                                         conversations will be appended.
     * @param \Google\Ads\GoogleAds\V17\Services\Conversation[] $conversations Required. Conversations that are being appended.
     *
     * @return \Google\Ads\GoogleAds\V17\Services\AppendLeadConversationRequest
     *
     * @experimental
     */
    public static function build(string $customerId, array $conversations): self
    {
        return (new self())
            ->setCustomerId($customerId)
            ->setConversations($conversations);
    }

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type string $customer_id
     *           Required. The Id of the customer which owns the leads onto which the
     *           conversations will be appended.
     * @type array<\Google\Ads\GoogleAds\V17\Services\Conversation>|\Google\Protobuf\Internal\RepeatedField $conversations
     *           Required. Conversations that are being appended.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V17\Services\LocalServicesLeadService::initOnce();
        parent::__construct($data);
    }

    /**
     * Required. The Id of the customer which owns the leads onto which the
     * conversations will be appended.
     *
     * Generated from protobuf field <code>string customer_id = 1 [(.google.api.field_behavior) = REQUIRED];</code>
     * @return string
     */
    public function getCustomerId()
    {
        return $this->customer_id;
    }

    /**
     * Required. The Id of the customer which owns the leads onto which the
     * conversations will be appended.
     *
     * Generated from protobuf field <code>string customer_id = 1 [(.google.api.field_behavior) = REQUIRED];</code>
     * @param string $var
     * @return $this
     */
    public function setCustomerId($var)
    {
        GPBUtil::checkString($var, True);
        $this->customer_id = $var;

        return $this;
    }

    /**
     * Required. Conversations that are being appended.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v17.services.Conversation conversations = 2 [(.google.api.field_behavior) = REQUIRED];</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getConversations()
    {
        return $this->conversations;
    }

    /**
     * Required. Conversations that are being appended.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v17.services.Conversation conversations = 2 [(.google.api.field_behavior) = REQUIRED];</code>
     * @param array<\Google\Ads\GoogleAds\V17\Services\Conversation>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setConversations($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Ads\GoogleAds\V17\Services\Conversation::class);
        $this->conversations = $arr;

        return $this;
    }

}

