<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/resources/account_budget_proposal.proto

namespace Google\Ads\GoogleAds\V16\Resources;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * An account-level budget proposal.
 * All fields prefixed with 'proposed' may not necessarily be applied directly.
 * For example, proposed spending limits may be adjusted before their
 * application.  This is true if the 'proposed' field has an 'approved'
 * counterpart, for example, spending limits.
 * Note that the proposal type (proposal_type) changes which fields are
 * required and which must remain empty.
 *
 * Generated from protobuf message <code>google.ads.googleads.v16.resources.AccountBudgetProposal</code>
 */
class AccountBudgetProposal extends \Google\Protobuf\Internal\Message
{
    /**
     * Immutable. The resource name of the proposal.
     * AccountBudgetProposal resource names have the form:
     * `customers/{customer_id}/accountBudgetProposals/{account_budget_proposal_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     */
    protected $resource_name = '';
    /**
     * Output only. The ID of the proposal.
     *
     * Generated from protobuf field <code>optional int64 id = 25 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $id = null;
    /**
     * Immutable. The resource name of the billing setup associated with this
     * proposal.
     *
     * Generated from protobuf field <code>optional string billing_setup = 26 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     */
    protected $billing_setup = null;
    /**
     * Immutable. The resource name of the account-level budget associated with
     * this proposal.
     *
     * Generated from protobuf field <code>optional string account_budget = 27 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     */
    protected $account_budget = null;
    /**
     * Immutable. The type of this proposal, for example, END to end the budget
     * associated with this proposal.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType proposal_type = 4 [(.google.api.field_behavior) = IMMUTABLE];</code>
     */
    protected $proposal_type = 0;
    /**
     * Output only. The status of this proposal.
     * When a new proposal is created, the status defaults to PENDING.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.AccountBudgetProposalStatusEnum.AccountBudgetProposalStatus status = 15 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $status = 0;
    /**
     * Immutable. The name to assign to the account-level budget.
     *
     * Generated from protobuf field <code>optional string proposed_name = 28 [(.google.api.field_behavior) = IMMUTABLE];</code>
     */
    protected $proposed_name = null;
    /**
     * Output only. The approved start date time in yyyy-mm-dd hh:mm:ss format.
     *
     * Generated from protobuf field <code>optional string approved_start_date_time = 30 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $approved_start_date_time = null;
    /**
     * Immutable. A purchase order number is a value that enables the user to help
     * them reference this budget in their monthly invoices.
     *
     * Generated from protobuf field <code>optional string proposed_purchase_order_number = 35 [(.google.api.field_behavior) = IMMUTABLE];</code>
     */
    protected $proposed_purchase_order_number = null;
    /**
     * Immutable. Notes associated with this budget.
     *
     * Generated from protobuf field <code>optional string proposed_notes = 36 [(.google.api.field_behavior) = IMMUTABLE];</code>
     */
    protected $proposed_notes = null;
    /**
     * Output only. The date time when this account-level budget proposal was
     * created, which is not the same as its approval date time, if applicable.
     *
     * Generated from protobuf field <code>optional string creation_date_time = 37 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $creation_date_time = null;
    /**
     * Output only. The date time when this account-level budget was approved, if
     * applicable.
     *
     * Generated from protobuf field <code>optional string approval_date_time = 38 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $approval_date_time = null;
    protected $proposed_start_time;
    protected $proposed_end_time;
    protected $approved_end_time;
    protected $proposed_spending_limit;
    protected $approved_spending_limit;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type string $resource_name
     *           Immutable. The resource name of the proposal.
     *           AccountBudgetProposal resource names have the form:
     *           `customers/{customer_id}/accountBudgetProposals/{account_budget_proposal_id}`
     * @type int|string $id
     *           Output only. The ID of the proposal.
     * @type string $billing_setup
     *           Immutable. The resource name of the billing setup associated with this
     *           proposal.
     * @type string $account_budget
     *           Immutable. The resource name of the account-level budget associated with
     *           this proposal.
     * @type int $proposal_type
     *           Immutable. The type of this proposal, for example, END to end the budget
     *           associated with this proposal.
     * @type int $status
     *           Output only. The status of this proposal.
     *           When a new proposal is created, the status defaults to PENDING.
     * @type string $proposed_name
     *           Immutable. The name to assign to the account-level budget.
     * @type string $approved_start_date_time
     *           Output only. The approved start date time in yyyy-mm-dd hh:mm:ss format.
     * @type string $proposed_purchase_order_number
     *           Immutable. A purchase order number is a value that enables the user to help
     *           them reference this budget in their monthly invoices.
     * @type string $proposed_notes
     *           Immutable. Notes associated with this budget.
     * @type string $creation_date_time
     *           Output only. The date time when this account-level budget proposal was
     *           created, which is not the same as its approval date time, if applicable.
     * @type string $approval_date_time
     *           Output only. The date time when this account-level budget was approved, if
     *           applicable.
     * @type string $proposed_start_date_time
     *           Immutable. The proposed start date time in yyyy-mm-dd hh:mm:ss format.
     * @type int $proposed_start_time_type
     *           Immutable. The proposed start date time as a well-defined type, for
     *           example, NOW.
     * @type string $proposed_end_date_time
     *           Immutable. The proposed end date time in yyyy-mm-dd hh:mm:ss format.
     * @type int $proposed_end_time_type
     *           Immutable. The proposed end date time as a well-defined type, for
     *           example, FOREVER.
     * @type string $approved_end_date_time
     *           Output only. The approved end date time in yyyy-mm-dd hh:mm:ss format.
     * @type int $approved_end_time_type
     *           Output only. The approved end date time as a well-defined type, for
     *           example, FOREVER.
     * @type int|string $proposed_spending_limit_micros
     *           Immutable. The proposed spending limit in micros.  One million is
     *           equivalent to one unit.
     * @type int $proposed_spending_limit_type
     *           Immutable. The proposed spending limit as a well-defined type, for
     *           example, INFINITE.
     * @type int|string $approved_spending_limit_micros
     *           Output only. The approved spending limit in micros.  One million is
     *           equivalent to one unit.
     * @type int $approved_spending_limit_type
     *           Output only. The approved spending limit as a well-defined type, for
     *           example, INFINITE.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V16\Resources\AccountBudgetProposal::initOnce();
        parent::__construct($data);
    }

    /**
     * Immutable. The resource name of the proposal.
     * AccountBudgetProposal resource names have the form:
     * `customers/{customer_id}/accountBudgetProposals/{account_budget_proposal_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getResourceName()
    {
        return $this->resource_name;
    }

    /**
     * Immutable. The resource name of the proposal.
     * AccountBudgetProposal resource names have the form:
     * `customers/{customer_id}/accountBudgetProposals/{account_budget_proposal_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @param string $var
     * @return $this
     */
    public function setResourceName($var)
    {
        GPBUtil::checkString($var, True);
        $this->resource_name = $var;

        return $this;
    }

    /**
     * Output only. The ID of the proposal.
     *
     * Generated from protobuf field <code>optional int64 id = 25 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int|string
     */
    public function getId()
    {
        return isset($this->id) ? $this->id : 0;
    }

    public function hasId()
    {
        return isset($this->id);
    }

    public function clearId()
    {
        unset($this->id);
    }

    /**
     * Output only. The ID of the proposal.
     *
     * Generated from protobuf field <code>optional int64 id = 25 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int|string $var
     * @return $this
     */
    public function setId($var)
    {
        GPBUtil::checkInt64($var);
        $this->id = $var;

        return $this;
    }

    /**
     * Immutable. The resource name of the billing setup associated with this
     * proposal.
     *
     * Generated from protobuf field <code>optional string billing_setup = 26 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getBillingSetup()
    {
        return isset($this->billing_setup) ? $this->billing_setup : '';
    }

    public function hasBillingSetup()
    {
        return isset($this->billing_setup);
    }

    public function clearBillingSetup()
    {
        unset($this->billing_setup);
    }

    /**
     * Immutable. The resource name of the billing setup associated with this
     * proposal.
     *
     * Generated from protobuf field <code>optional string billing_setup = 26 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @param string $var
     * @return $this
     */
    public function setBillingSetup($var)
    {
        GPBUtil::checkString($var, True);
        $this->billing_setup = $var;

        return $this;
    }

    /**
     * Immutable. The resource name of the account-level budget associated with
     * this proposal.
     *
     * Generated from protobuf field <code>optional string account_budget = 27 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getAccountBudget()
    {
        return isset($this->account_budget) ? $this->account_budget : '';
    }

    public function hasAccountBudget()
    {
        return isset($this->account_budget);
    }

    public function clearAccountBudget()
    {
        unset($this->account_budget);
    }

    /**
     * Immutable. The resource name of the account-level budget associated with
     * this proposal.
     *
     * Generated from protobuf field <code>optional string account_budget = 27 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @param string $var
     * @return $this
     */
    public function setAccountBudget($var)
    {
        GPBUtil::checkString($var, True);
        $this->account_budget = $var;

        return $this;
    }

    /**
     * Immutable. The type of this proposal, for example, END to end the budget
     * associated with this proposal.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType proposal_type = 4 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @return int
     */
    public function getProposalType()
    {
        return $this->proposal_type;
    }

    /**
     * Immutable. The type of this proposal, for example, END to end the budget
     * associated with this proposal.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType proposal_type = 4 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @param int $var
     * @return $this
     */
    public function setProposalType($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V16\Enums\AccountBudgetProposalTypeEnum\AccountBudgetProposalType::class);
        $this->proposal_type = $var;

        return $this;
    }

    /**
     * Output only. The status of this proposal.
     * When a new proposal is created, the status defaults to PENDING.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.AccountBudgetProposalStatusEnum.AccountBudgetProposalStatus status = 15 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int
     */
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * Output only. The status of this proposal.
     * When a new proposal is created, the status defaults to PENDING.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.AccountBudgetProposalStatusEnum.AccountBudgetProposalStatus status = 15 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int $var
     * @return $this
     */
    public function setStatus($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V16\Enums\AccountBudgetProposalStatusEnum\AccountBudgetProposalStatus::class);
        $this->status = $var;

        return $this;
    }

    /**
     * Immutable. The name to assign to the account-level budget.
     *
     * Generated from protobuf field <code>optional string proposed_name = 28 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @return string
     */
    public function getProposedName()
    {
        return isset($this->proposed_name) ? $this->proposed_name : '';
    }

    public function hasProposedName()
    {
        return isset($this->proposed_name);
    }

    public function clearProposedName()
    {
        unset($this->proposed_name);
    }

    /**
     * Immutable. The name to assign to the account-level budget.
     *
     * Generated from protobuf field <code>optional string proposed_name = 28 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @param string $var
     * @return $this
     */
    public function setProposedName($var)
    {
        GPBUtil::checkString($var, True);
        $this->proposed_name = $var;

        return $this;
    }

    /**
     * Output only. The approved start date time in yyyy-mm-dd hh:mm:ss format.
     *
     * Generated from protobuf field <code>optional string approved_start_date_time = 30 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return string
     */
    public function getApprovedStartDateTime()
    {
        return isset($this->approved_start_date_time) ? $this->approved_start_date_time : '';
    }

    public function hasApprovedStartDateTime()
    {
        return isset($this->approved_start_date_time);
    }

    public function clearApprovedStartDateTime()
    {
        unset($this->approved_start_date_time);
    }

    /**
     * Output only. The approved start date time in yyyy-mm-dd hh:mm:ss format.
     *
     * Generated from protobuf field <code>optional string approved_start_date_time = 30 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param string $var
     * @return $this
     */
    public function setApprovedStartDateTime($var)
    {
        GPBUtil::checkString($var, True);
        $this->approved_start_date_time = $var;

        return $this;
    }

    /**
     * Immutable. A purchase order number is a value that enables the user to help
     * them reference this budget in their monthly invoices.
     *
     * Generated from protobuf field <code>optional string proposed_purchase_order_number = 35 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @return string
     */
    public function getProposedPurchaseOrderNumber()
    {
        return isset($this->proposed_purchase_order_number) ? $this->proposed_purchase_order_number : '';
    }

    public function hasProposedPurchaseOrderNumber()
    {
        return isset($this->proposed_purchase_order_number);
    }

    public function clearProposedPurchaseOrderNumber()
    {
        unset($this->proposed_purchase_order_number);
    }

    /**
     * Immutable. A purchase order number is a value that enables the user to help
     * them reference this budget in their monthly invoices.
     *
     * Generated from protobuf field <code>optional string proposed_purchase_order_number = 35 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @param string $var
     * @return $this
     */
    public function setProposedPurchaseOrderNumber($var)
    {
        GPBUtil::checkString($var, True);
        $this->proposed_purchase_order_number = $var;

        return $this;
    }

    /**
     * Immutable. Notes associated with this budget.
     *
     * Generated from protobuf field <code>optional string proposed_notes = 36 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @return string
     */
    public function getProposedNotes()
    {
        return isset($this->proposed_notes) ? $this->proposed_notes : '';
    }

    public function hasProposedNotes()
    {
        return isset($this->proposed_notes);
    }

    public function clearProposedNotes()
    {
        unset($this->proposed_notes);
    }

    /**
     * Immutable. Notes associated with this budget.
     *
     * Generated from protobuf field <code>optional string proposed_notes = 36 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @param string $var
     * @return $this
     */
    public function setProposedNotes($var)
    {
        GPBUtil::checkString($var, True);
        $this->proposed_notes = $var;

        return $this;
    }

    /**
     * Output only. The date time when this account-level budget proposal was
     * created, which is not the same as its approval date time, if applicable.
     *
     * Generated from protobuf field <code>optional string creation_date_time = 37 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return string
     */
    public function getCreationDateTime()
    {
        return isset($this->creation_date_time) ? $this->creation_date_time : '';
    }

    public function hasCreationDateTime()
    {
        return isset($this->creation_date_time);
    }

    public function clearCreationDateTime()
    {
        unset($this->creation_date_time);
    }

    /**
     * Output only. The date time when this account-level budget proposal was
     * created, which is not the same as its approval date time, if applicable.
     *
     * Generated from protobuf field <code>optional string creation_date_time = 37 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param string $var
     * @return $this
     */
    public function setCreationDateTime($var)
    {
        GPBUtil::checkString($var, True);
        $this->creation_date_time = $var;

        return $this;
    }

    /**
     * Output only. The date time when this account-level budget was approved, if
     * applicable.
     *
     * Generated from protobuf field <code>optional string approval_date_time = 38 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return string
     */
    public function getApprovalDateTime()
    {
        return isset($this->approval_date_time) ? $this->approval_date_time : '';
    }

    public function hasApprovalDateTime()
    {
        return isset($this->approval_date_time);
    }

    public function clearApprovalDateTime()
    {
        unset($this->approval_date_time);
    }

    /**
     * Output only. The date time when this account-level budget was approved, if
     * applicable.
     *
     * Generated from protobuf field <code>optional string approval_date_time = 38 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param string $var
     * @return $this
     */
    public function setApprovalDateTime($var)
    {
        GPBUtil::checkString($var, True);
        $this->approval_date_time = $var;

        return $this;
    }

    /**
     * Immutable. The proposed start date time in yyyy-mm-dd hh:mm:ss format.
     *
     * Generated from protobuf field <code>string proposed_start_date_time = 29 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @return string
     */
    public function getProposedStartDateTime()
    {
        return $this->readOneof(29);
    }

    public function hasProposedStartDateTime()
    {
        return $this->hasOneof(29);
    }

    /**
     * Immutable. The proposed start date time in yyyy-mm-dd hh:mm:ss format.
     *
     * Generated from protobuf field <code>string proposed_start_date_time = 29 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @param string $var
     * @return $this
     */
    public function setProposedStartDateTime($var)
    {
        GPBUtil::checkString($var, True);
        $this->writeOneof(29, $var);

        return $this;
    }

    /**
     * Immutable. The proposed start date time as a well-defined type, for
     * example, NOW.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.TimeTypeEnum.TimeType proposed_start_time_type = 7 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @return int
     */
    public function getProposedStartTimeType()
    {
        return $this->readOneof(7);
    }

    public function hasProposedStartTimeType()
    {
        return $this->hasOneof(7);
    }

    /**
     * Immutable. The proposed start date time as a well-defined type, for
     * example, NOW.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.TimeTypeEnum.TimeType proposed_start_time_type = 7 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @param int $var
     * @return $this
     */
    public function setProposedStartTimeType($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V16\Enums\TimeTypeEnum\TimeType::class);
        $this->writeOneof(7, $var);

        return $this;
    }

    /**
     * Immutable. The proposed end date time in yyyy-mm-dd hh:mm:ss format.
     *
     * Generated from protobuf field <code>string proposed_end_date_time = 31 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @return string
     */
    public function getProposedEndDateTime()
    {
        return $this->readOneof(31);
    }

    public function hasProposedEndDateTime()
    {
        return $this->hasOneof(31);
    }

    /**
     * Immutable. The proposed end date time in yyyy-mm-dd hh:mm:ss format.
     *
     * Generated from protobuf field <code>string proposed_end_date_time = 31 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @param string $var
     * @return $this
     */
    public function setProposedEndDateTime($var)
    {
        GPBUtil::checkString($var, True);
        $this->writeOneof(31, $var);

        return $this;
    }

    /**
     * Immutable. The proposed end date time as a well-defined type, for
     * example, FOREVER.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.TimeTypeEnum.TimeType proposed_end_time_type = 9 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @return int
     */
    public function getProposedEndTimeType()
    {
        return $this->readOneof(9);
    }

    public function hasProposedEndTimeType()
    {
        return $this->hasOneof(9);
    }

    /**
     * Immutable. The proposed end date time as a well-defined type, for
     * example, FOREVER.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.TimeTypeEnum.TimeType proposed_end_time_type = 9 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @param int $var
     * @return $this
     */
    public function setProposedEndTimeType($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V16\Enums\TimeTypeEnum\TimeType::class);
        $this->writeOneof(9, $var);

        return $this;
    }

    /**
     * Output only. The approved end date time in yyyy-mm-dd hh:mm:ss format.
     *
     * Generated from protobuf field <code>string approved_end_date_time = 32 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return string
     */
    public function getApprovedEndDateTime()
    {
        return $this->readOneof(32);
    }

    public function hasApprovedEndDateTime()
    {
        return $this->hasOneof(32);
    }

    /**
     * Output only. The approved end date time in yyyy-mm-dd hh:mm:ss format.
     *
     * Generated from protobuf field <code>string approved_end_date_time = 32 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param string $var
     * @return $this
     */
    public function setApprovedEndDateTime($var)
    {
        GPBUtil::checkString($var, True);
        $this->writeOneof(32, $var);

        return $this;
    }

    /**
     * Output only. The approved end date time as a well-defined type, for
     * example, FOREVER.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.TimeTypeEnum.TimeType approved_end_time_type = 22 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int
     */
    public function getApprovedEndTimeType()
    {
        return $this->readOneof(22);
    }

    public function hasApprovedEndTimeType()
    {
        return $this->hasOneof(22);
    }

    /**
     * Output only. The approved end date time as a well-defined type, for
     * example, FOREVER.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.TimeTypeEnum.TimeType approved_end_time_type = 22 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int $var
     * @return $this
     */
    public function setApprovedEndTimeType($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V16\Enums\TimeTypeEnum\TimeType::class);
        $this->writeOneof(22, $var);

        return $this;
    }

    /**
     * Immutable. The proposed spending limit in micros.  One million is
     * equivalent to one unit.
     *
     * Generated from protobuf field <code>int64 proposed_spending_limit_micros = 33 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @return int|string
     */
    public function getProposedSpendingLimitMicros()
    {
        return $this->readOneof(33);
    }

    public function hasProposedSpendingLimitMicros()
    {
        return $this->hasOneof(33);
    }

    /**
     * Immutable. The proposed spending limit in micros.  One million is
     * equivalent to one unit.
     *
     * Generated from protobuf field <code>int64 proposed_spending_limit_micros = 33 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @param int|string $var
     * @return $this
     */
    public function setProposedSpendingLimitMicros($var)
    {
        GPBUtil::checkInt64($var);
        $this->writeOneof(33, $var);

        return $this;
    }

    /**
     * Immutable. The proposed spending limit as a well-defined type, for
     * example, INFINITE.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.SpendingLimitTypeEnum.SpendingLimitType proposed_spending_limit_type = 11 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @return int
     */
    public function getProposedSpendingLimitType()
    {
        return $this->readOneof(11);
    }

    public function hasProposedSpendingLimitType()
    {
        return $this->hasOneof(11);
    }

    /**
     * Immutable. The proposed spending limit as a well-defined type, for
     * example, INFINITE.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.SpendingLimitTypeEnum.SpendingLimitType proposed_spending_limit_type = 11 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @param int $var
     * @return $this
     */
    public function setProposedSpendingLimitType($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V16\Enums\SpendingLimitTypeEnum\SpendingLimitType::class);
        $this->writeOneof(11, $var);

        return $this;
    }

    /**
     * Output only. The approved spending limit in micros.  One million is
     * equivalent to one unit.
     *
     * Generated from protobuf field <code>int64 approved_spending_limit_micros = 34 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int|string
     */
    public function getApprovedSpendingLimitMicros()
    {
        return $this->readOneof(34);
    }

    public function hasApprovedSpendingLimitMicros()
    {
        return $this->hasOneof(34);
    }

    /**
     * Output only. The approved spending limit in micros.  One million is
     * equivalent to one unit.
     *
     * Generated from protobuf field <code>int64 approved_spending_limit_micros = 34 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int|string $var
     * @return $this
     */
    public function setApprovedSpendingLimitMicros($var)
    {
        GPBUtil::checkInt64($var);
        $this->writeOneof(34, $var);

        return $this;
    }

    /**
     * Output only. The approved spending limit as a well-defined type, for
     * example, INFINITE.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.SpendingLimitTypeEnum.SpendingLimitType approved_spending_limit_type = 24 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int
     */
    public function getApprovedSpendingLimitType()
    {
        return $this->readOneof(24);
    }

    public function hasApprovedSpendingLimitType()
    {
        return $this->hasOneof(24);
    }

    /**
     * Output only. The approved spending limit as a well-defined type, for
     * example, INFINITE.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.SpendingLimitTypeEnum.SpendingLimitType approved_spending_limit_type = 24 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int $var
     * @return $this
     */
    public function setApprovedSpendingLimitType($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V16\Enums\SpendingLimitTypeEnum\SpendingLimitType::class);
        $this->writeOneof(24, $var);

        return $this;
    }

    /**
     * @return string
     */
    public function getProposedStartTime()
    {
        return $this->whichOneof("proposed_start_time");
    }

    /**
     * @return string
     */
    public function getProposedEndTime()
    {
        return $this->whichOneof("proposed_end_time");
    }

    /**
     * @return string
     */
    public function getApprovedEndTime()
    {
        return $this->whichOneof("approved_end_time");
    }

    /**
     * @return string
     */
    public function getProposedSpendingLimit()
    {
        return $this->whichOneof("proposed_spending_limit");
    }

    /**
     * @return string
     */
    public function getApprovedSpendingLimit()
    {
        return $this->whichOneof("approved_spending_limit");
    }

}

