<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/resources/campaign_budget.proto

namespace Google\Ads\GoogleAds\V16\Resources;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * A campaign budget.
 *
 * Generated from protobuf message <code>google.ads.googleads.v16.resources.CampaignBudget</code>
 */
class CampaignBudget extends \Google\Protobuf\Internal\Message
{
    /**
     * Immutable. The resource name of the campaign budget.
     * Campaign budget resource names have the form:
     * `customers/{customer_id}/campaignBudgets/{campaign_budget_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     */
    protected $resource_name = '';
    /**
     * Output only. The ID of the campaign budget.
     * A campaign budget is created using the CampaignBudgetService create
     * operation and is assigned a budget ID. A budget ID can be shared across
     * different campaigns; the system will then allocate the campaign budget
     * among different campaigns to get optimum results.
     *
     * Generated from protobuf field <code>optional int64 id = 19 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $id = null;
    /**
     * The name of the campaign budget.
     * When creating a campaign budget through CampaignBudgetService, every
     * explicitly shared campaign budget must have a non-null, non-empty name.
     * Campaign budgets that are not explicitly shared derive their name from the
     * attached campaign's name.
     * The length of this string must be between 1 and 255, inclusive,
     * in UTF-8 bytes, (trimmed).
     *
     * Generated from protobuf field <code>optional string name = 20;</code>
     */
    protected $name = null;
    /**
     * The amount of the budget, in the local currency for the account.
     * Amount is specified in micros, where one million is equivalent to one
     * currency unit. Monthly spend is capped at 30.4 times this amount.
     *
     * Generated from protobuf field <code>optional int64 amount_micros = 21;</code>
     */
    protected $amount_micros = null;
    /**
     * The lifetime amount of the budget, in the local currency for the account.
     * Amount is specified in micros, where one million is equivalent to one
     * currency unit.
     *
     * Generated from protobuf field <code>optional int64 total_amount_micros = 22;</code>
     */
    protected $total_amount_micros = null;
    /**
     * Output only. The status of this campaign budget. This field is read-only.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.BudgetStatusEnum.BudgetStatus status = 6 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $status = 0;
    /**
     * The delivery method that determines the rate at which the campaign budget
     * is spent.
     * Defaults to STANDARD if unspecified in a create operation.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.BudgetDeliveryMethodEnum.BudgetDeliveryMethod delivery_method = 7;</code>
     */
    protected $delivery_method = 0;
    /**
     * Specifies whether the budget is explicitly shared. Defaults to true if
     * unspecified in a create operation.
     * If true, the budget was created with the purpose of sharing
     * across one or more campaigns.
     * If false, the budget was created with the intention of only being used
     * with a single campaign. The budget's name and status will stay in sync
     * with the campaign's name and status. Attempting to share the budget with a
     * second campaign will result in an error.
     * A non-shared budget can become an explicitly shared. The same operation
     * must also assign the budget a name.
     * A shared campaign budget can never become non-shared.
     *
     * Generated from protobuf field <code>optional bool explicitly_shared = 23;</code>
     */
    protected $explicitly_shared = null;
    /**
     * Output only. The number of campaigns actively using the budget.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 reference_count = 24 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $reference_count = null;
    /**
     * Output only. Indicates whether there is a recommended budget for this
     * campaign budget.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional bool has_recommended_budget = 25 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $has_recommended_budget = null;
    /**
     * Output only. The recommended budget amount. If no recommendation is
     * available, this will be set to the budget amount. Amount is specified in
     * micros, where one million is equivalent to one currency unit.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 recommended_budget_amount_micros = 26 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $recommended_budget_amount_micros = null;
    /**
     * Immutable. Period over which to spend the budget. Defaults to DAILY if not
     * specified.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.BudgetPeriodEnum.BudgetPeriod period = 13 [(.google.api.field_behavior) = IMMUTABLE];</code>
     */
    protected $period = 0;
    /**
     * Output only. The estimated change in weekly clicks if the recommended
     * budget is applied.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 recommended_budget_estimated_change_weekly_clicks = 27 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $recommended_budget_estimated_change_weekly_clicks = null;
    /**
     * Output only. The estimated change in weekly cost in micros if the
     * recommended budget is applied. One million is equivalent to one currency
     * unit.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 recommended_budget_estimated_change_weekly_cost_micros = 28 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $recommended_budget_estimated_change_weekly_cost_micros = null;
    /**
     * Output only. The estimated change in weekly interactions if the recommended
     * budget is applied.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 recommended_budget_estimated_change_weekly_interactions = 29 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $recommended_budget_estimated_change_weekly_interactions = null;
    /**
     * Output only. The estimated change in weekly views if the recommended budget
     * is applied.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 recommended_budget_estimated_change_weekly_views = 30 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     */
    protected $recommended_budget_estimated_change_weekly_views = null;
    /**
     * Immutable. The type of the campaign budget.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.BudgetTypeEnum.BudgetType type = 18 [(.google.api.field_behavior) = IMMUTABLE];</code>
     */
    protected $type = 0;
    /**
     * ID of the portfolio bidding strategy that this shared campaign budget
     * is aligned with. When a bidding strategy and a campaign budget are aligned,
     * they are attached to the same set of campaigns. After a campaign budget is
     * aligned with a bidding strategy, campaigns that are added to the campaign
     * budget must also use the aligned bidding strategy.
     *
     * Generated from protobuf field <code>int64 aligned_bidding_strategy_id = 31;</code>
     */
    protected $aligned_bidding_strategy_id = 0;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type string $resource_name
     *           Immutable. The resource name of the campaign budget.
     *           Campaign budget resource names have the form:
     *           `customers/{customer_id}/campaignBudgets/{campaign_budget_id}`
     * @type int|string $id
     *           Output only. The ID of the campaign budget.
     *           A campaign budget is created using the CampaignBudgetService create
     *           operation and is assigned a budget ID. A budget ID can be shared across
     *           different campaigns; the system will then allocate the campaign budget
     *           among different campaigns to get optimum results.
     * @type string $name
     *           The name of the campaign budget.
     *           When creating a campaign budget through CampaignBudgetService, every
     *           explicitly shared campaign budget must have a non-null, non-empty name.
     *           Campaign budgets that are not explicitly shared derive their name from the
     *           attached campaign's name.
     *           The length of this string must be between 1 and 255, inclusive,
     *           in UTF-8 bytes, (trimmed).
     * @type int|string $amount_micros
     *           The amount of the budget, in the local currency for the account.
     *           Amount is specified in micros, where one million is equivalent to one
     *           currency unit. Monthly spend is capped at 30.4 times this amount.
     * @type int|string $total_amount_micros
     *           The lifetime amount of the budget, in the local currency for the account.
     *           Amount is specified in micros, where one million is equivalent to one
     *           currency unit.
     * @type int $status
     *           Output only. The status of this campaign budget. This field is read-only.
     * @type int $delivery_method
     *           The delivery method that determines the rate at which the campaign budget
     *           is spent.
     *           Defaults to STANDARD if unspecified in a create operation.
     * @type bool $explicitly_shared
     *           Specifies whether the budget is explicitly shared. Defaults to true if
     *           unspecified in a create operation.
     *           If true, the budget was created with the purpose of sharing
     *           across one or more campaigns.
     *           If false, the budget was created with the intention of only being used
     *           with a single campaign. The budget's name and status will stay in sync
     *           with the campaign's name and status. Attempting to share the budget with a
     *           second campaign will result in an error.
     *           A non-shared budget can become an explicitly shared. The same operation
     *           must also assign the budget a name.
     *           A shared campaign budget can never become non-shared.
     * @type int|string $reference_count
     *           Output only. The number of campaigns actively using the budget.
     *           This field is read-only.
     * @type bool $has_recommended_budget
     *           Output only. Indicates whether there is a recommended budget for this
     *           campaign budget.
     *           This field is read-only.
     * @type int|string $recommended_budget_amount_micros
     *           Output only. The recommended budget amount. If no recommendation is
     *           available, this will be set to the budget amount. Amount is specified in
     *           micros, where one million is equivalent to one currency unit.
     *           This field is read-only.
     * @type int $period
     *           Immutable. Period over which to spend the budget. Defaults to DAILY if not
     *           specified.
     * @type int|string $recommended_budget_estimated_change_weekly_clicks
     *           Output only. The estimated change in weekly clicks if the recommended
     *           budget is applied.
     *           This field is read-only.
     * @type int|string $recommended_budget_estimated_change_weekly_cost_micros
     *           Output only. The estimated change in weekly cost in micros if the
     *           recommended budget is applied. One million is equivalent to one currency
     *           unit.
     *           This field is read-only.
     * @type int|string $recommended_budget_estimated_change_weekly_interactions
     *           Output only. The estimated change in weekly interactions if the recommended
     *           budget is applied.
     *           This field is read-only.
     * @type int|string $recommended_budget_estimated_change_weekly_views
     *           Output only. The estimated change in weekly views if the recommended budget
     *           is applied.
     *           This field is read-only.
     * @type int $type
     *           Immutable. The type of the campaign budget.
     * @type int|string $aligned_bidding_strategy_id
     *           ID of the portfolio bidding strategy that this shared campaign budget
     *           is aligned with. When a bidding strategy and a campaign budget are aligned,
     *           they are attached to the same set of campaigns. After a campaign budget is
     *           aligned with a bidding strategy, campaigns that are added to the campaign
     *           budget must also use the aligned bidding strategy.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V16\Resources\CampaignBudget::initOnce();
        parent::__construct($data);
    }

    /**
     * Immutable. The resource name of the campaign budget.
     * Campaign budget resource names have the form:
     * `customers/{customer_id}/campaignBudgets/{campaign_budget_id}`
     *
     * Generated from protobuf field <code>string resource_name = 1 [(.google.api.field_behavior) = IMMUTABLE, (.google.api.resource_reference) = {</code>
     * @return string
     */
    public function getResourceName()
    {
        return $this->resource_name;
    }

    /**
     * Immutable. The resource name of the campaign budget.
     * Campaign budget resource names have the form:
     * `customers/{customer_id}/campaignBudgets/{campaign_budget_id}`
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
     * Output only. The ID of the campaign budget.
     * A campaign budget is created using the CampaignBudgetService create
     * operation and is assigned a budget ID. A budget ID can be shared across
     * different campaigns; the system will then allocate the campaign budget
     * among different campaigns to get optimum results.
     *
     * Generated from protobuf field <code>optional int64 id = 19 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
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
     * Output only. The ID of the campaign budget.
     * A campaign budget is created using the CampaignBudgetService create
     * operation and is assigned a budget ID. A budget ID can be shared across
     * different campaigns; the system will then allocate the campaign budget
     * among different campaigns to get optimum results.
     *
     * Generated from protobuf field <code>optional int64 id = 19 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
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
     * The name of the campaign budget.
     * When creating a campaign budget through CampaignBudgetService, every
     * explicitly shared campaign budget must have a non-null, non-empty name.
     * Campaign budgets that are not explicitly shared derive their name from the
     * attached campaign's name.
     * The length of this string must be between 1 and 255, inclusive,
     * in UTF-8 bytes, (trimmed).
     *
     * Generated from protobuf field <code>optional string name = 20;</code>
     * @return string
     */
    public function getName()
    {
        return isset($this->name) ? $this->name : '';
    }

    public function hasName()
    {
        return isset($this->name);
    }

    public function clearName()
    {
        unset($this->name);
    }

    /**
     * The name of the campaign budget.
     * When creating a campaign budget through CampaignBudgetService, every
     * explicitly shared campaign budget must have a non-null, non-empty name.
     * Campaign budgets that are not explicitly shared derive their name from the
     * attached campaign's name.
     * The length of this string must be between 1 and 255, inclusive,
     * in UTF-8 bytes, (trimmed).
     *
     * Generated from protobuf field <code>optional string name = 20;</code>
     * @param string $var
     * @return $this
     */
    public function setName($var)
    {
        GPBUtil::checkString($var, True);
        $this->name = $var;

        return $this;
    }

    /**
     * The amount of the budget, in the local currency for the account.
     * Amount is specified in micros, where one million is equivalent to one
     * currency unit. Monthly spend is capped at 30.4 times this amount.
     *
     * Generated from protobuf field <code>optional int64 amount_micros = 21;</code>
     * @return int|string
     */
    public function getAmountMicros()
    {
        return isset($this->amount_micros) ? $this->amount_micros : 0;
    }

    public function hasAmountMicros()
    {
        return isset($this->amount_micros);
    }

    public function clearAmountMicros()
    {
        unset($this->amount_micros);
    }

    /**
     * The amount of the budget, in the local currency for the account.
     * Amount is specified in micros, where one million is equivalent to one
     * currency unit. Monthly spend is capped at 30.4 times this amount.
     *
     * Generated from protobuf field <code>optional int64 amount_micros = 21;</code>
     * @param int|string $var
     * @return $this
     */
    public function setAmountMicros($var)
    {
        GPBUtil::checkInt64($var);
        $this->amount_micros = $var;

        return $this;
    }

    /**
     * The lifetime amount of the budget, in the local currency for the account.
     * Amount is specified in micros, where one million is equivalent to one
     * currency unit.
     *
     * Generated from protobuf field <code>optional int64 total_amount_micros = 22;</code>
     * @return int|string
     */
    public function getTotalAmountMicros()
    {
        return isset($this->total_amount_micros) ? $this->total_amount_micros : 0;
    }

    public function hasTotalAmountMicros()
    {
        return isset($this->total_amount_micros);
    }

    public function clearTotalAmountMicros()
    {
        unset($this->total_amount_micros);
    }

    /**
     * The lifetime amount of the budget, in the local currency for the account.
     * Amount is specified in micros, where one million is equivalent to one
     * currency unit.
     *
     * Generated from protobuf field <code>optional int64 total_amount_micros = 22;</code>
     * @param int|string $var
     * @return $this
     */
    public function setTotalAmountMicros($var)
    {
        GPBUtil::checkInt64($var);
        $this->total_amount_micros = $var;

        return $this;
    }

    /**
     * Output only. The status of this campaign budget. This field is read-only.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.BudgetStatusEnum.BudgetStatus status = 6 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int
     */
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * Output only. The status of this campaign budget. This field is read-only.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.BudgetStatusEnum.BudgetStatus status = 6 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int $var
     * @return $this
     */
    public function setStatus($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V16\Enums\BudgetStatusEnum\BudgetStatus::class);
        $this->status = $var;

        return $this;
    }

    /**
     * The delivery method that determines the rate at which the campaign budget
     * is spent.
     * Defaults to STANDARD if unspecified in a create operation.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.BudgetDeliveryMethodEnum.BudgetDeliveryMethod delivery_method = 7;</code>
     * @return int
     */
    public function getDeliveryMethod()
    {
        return $this->delivery_method;
    }

    /**
     * The delivery method that determines the rate at which the campaign budget
     * is spent.
     * Defaults to STANDARD if unspecified in a create operation.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.BudgetDeliveryMethodEnum.BudgetDeliveryMethod delivery_method = 7;</code>
     * @param int $var
     * @return $this
     */
    public function setDeliveryMethod($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V16\Enums\BudgetDeliveryMethodEnum\BudgetDeliveryMethod::class);
        $this->delivery_method = $var;

        return $this;
    }

    /**
     * Specifies whether the budget is explicitly shared. Defaults to true if
     * unspecified in a create operation.
     * If true, the budget was created with the purpose of sharing
     * across one or more campaigns.
     * If false, the budget was created with the intention of only being used
     * with a single campaign. The budget's name and status will stay in sync
     * with the campaign's name and status. Attempting to share the budget with a
     * second campaign will result in an error.
     * A non-shared budget can become an explicitly shared. The same operation
     * must also assign the budget a name.
     * A shared campaign budget can never become non-shared.
     *
     * Generated from protobuf field <code>optional bool explicitly_shared = 23;</code>
     * @return bool
     */
    public function getExplicitlyShared()
    {
        return isset($this->explicitly_shared) ? $this->explicitly_shared : false;
    }

    public function hasExplicitlyShared()
    {
        return isset($this->explicitly_shared);
    }

    public function clearExplicitlyShared()
    {
        unset($this->explicitly_shared);
    }

    /**
     * Specifies whether the budget is explicitly shared. Defaults to true if
     * unspecified in a create operation.
     * If true, the budget was created with the purpose of sharing
     * across one or more campaigns.
     * If false, the budget was created with the intention of only being used
     * with a single campaign. The budget's name and status will stay in sync
     * with the campaign's name and status. Attempting to share the budget with a
     * second campaign will result in an error.
     * A non-shared budget can become an explicitly shared. The same operation
     * must also assign the budget a name.
     * A shared campaign budget can never become non-shared.
     *
     * Generated from protobuf field <code>optional bool explicitly_shared = 23;</code>
     * @param bool $var
     * @return $this
     */
    public function setExplicitlyShared($var)
    {
        GPBUtil::checkBool($var);
        $this->explicitly_shared = $var;

        return $this;
    }

    /**
     * Output only. The number of campaigns actively using the budget.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 reference_count = 24 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int|string
     */
    public function getReferenceCount()
    {
        return isset($this->reference_count) ? $this->reference_count : 0;
    }

    public function hasReferenceCount()
    {
        return isset($this->reference_count);
    }

    public function clearReferenceCount()
    {
        unset($this->reference_count);
    }

    /**
     * Output only. The number of campaigns actively using the budget.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 reference_count = 24 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int|string $var
     * @return $this
     */
    public function setReferenceCount($var)
    {
        GPBUtil::checkInt64($var);
        $this->reference_count = $var;

        return $this;
    }

    /**
     * Output only. Indicates whether there is a recommended budget for this
     * campaign budget.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional bool has_recommended_budget = 25 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return bool
     */
    public function getHasRecommendedBudget()
    {
        return isset($this->has_recommended_budget) ? $this->has_recommended_budget : false;
    }

    public function hasHasRecommendedBudget()
    {
        return isset($this->has_recommended_budget);
    }

    public function clearHasRecommendedBudget()
    {
        unset($this->has_recommended_budget);
    }

    /**
     * Output only. Indicates whether there is a recommended budget for this
     * campaign budget.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional bool has_recommended_budget = 25 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param bool $var
     * @return $this
     */
    public function setHasRecommendedBudget($var)
    {
        GPBUtil::checkBool($var);
        $this->has_recommended_budget = $var;

        return $this;
    }

    /**
     * Output only. The recommended budget amount. If no recommendation is
     * available, this will be set to the budget amount. Amount is specified in
     * micros, where one million is equivalent to one currency unit.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 recommended_budget_amount_micros = 26 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int|string
     */
    public function getRecommendedBudgetAmountMicros()
    {
        return isset($this->recommended_budget_amount_micros) ? $this->recommended_budget_amount_micros : 0;
    }

    public function hasRecommendedBudgetAmountMicros()
    {
        return isset($this->recommended_budget_amount_micros);
    }

    public function clearRecommendedBudgetAmountMicros()
    {
        unset($this->recommended_budget_amount_micros);
    }

    /**
     * Output only. The recommended budget amount. If no recommendation is
     * available, this will be set to the budget amount. Amount is specified in
     * micros, where one million is equivalent to one currency unit.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 recommended_budget_amount_micros = 26 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int|string $var
     * @return $this
     */
    public function setRecommendedBudgetAmountMicros($var)
    {
        GPBUtil::checkInt64($var);
        $this->recommended_budget_amount_micros = $var;

        return $this;
    }

    /**
     * Immutable. Period over which to spend the budget. Defaults to DAILY if not
     * specified.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.BudgetPeriodEnum.BudgetPeriod period = 13 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @return int
     */
    public function getPeriod()
    {
        return $this->period;
    }

    /**
     * Immutable. Period over which to spend the budget. Defaults to DAILY if not
     * specified.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.BudgetPeriodEnum.BudgetPeriod period = 13 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @param int $var
     * @return $this
     */
    public function setPeriod($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V16\Enums\BudgetPeriodEnum\BudgetPeriod::class);
        $this->period = $var;

        return $this;
    }

    /**
     * Output only. The estimated change in weekly clicks if the recommended
     * budget is applied.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 recommended_budget_estimated_change_weekly_clicks = 27 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int|string
     */
    public function getRecommendedBudgetEstimatedChangeWeeklyClicks()
    {
        return isset($this->recommended_budget_estimated_change_weekly_clicks) ? $this->recommended_budget_estimated_change_weekly_clicks : 0;
    }

    public function hasRecommendedBudgetEstimatedChangeWeeklyClicks()
    {
        return isset($this->recommended_budget_estimated_change_weekly_clicks);
    }

    public function clearRecommendedBudgetEstimatedChangeWeeklyClicks()
    {
        unset($this->recommended_budget_estimated_change_weekly_clicks);
    }

    /**
     * Output only. The estimated change in weekly clicks if the recommended
     * budget is applied.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 recommended_budget_estimated_change_weekly_clicks = 27 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int|string $var
     * @return $this
     */
    public function setRecommendedBudgetEstimatedChangeWeeklyClicks($var)
    {
        GPBUtil::checkInt64($var);
        $this->recommended_budget_estimated_change_weekly_clicks = $var;

        return $this;
    }

    /**
     * Output only. The estimated change in weekly cost in micros if the
     * recommended budget is applied. One million is equivalent to one currency
     * unit.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 recommended_budget_estimated_change_weekly_cost_micros = 28 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int|string
     */
    public function getRecommendedBudgetEstimatedChangeWeeklyCostMicros()
    {
        return isset($this->recommended_budget_estimated_change_weekly_cost_micros) ? $this->recommended_budget_estimated_change_weekly_cost_micros : 0;
    }

    public function hasRecommendedBudgetEstimatedChangeWeeklyCostMicros()
    {
        return isset($this->recommended_budget_estimated_change_weekly_cost_micros);
    }

    public function clearRecommendedBudgetEstimatedChangeWeeklyCostMicros()
    {
        unset($this->recommended_budget_estimated_change_weekly_cost_micros);
    }

    /**
     * Output only. The estimated change in weekly cost in micros if the
     * recommended budget is applied. One million is equivalent to one currency
     * unit.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 recommended_budget_estimated_change_weekly_cost_micros = 28 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int|string $var
     * @return $this
     */
    public function setRecommendedBudgetEstimatedChangeWeeklyCostMicros($var)
    {
        GPBUtil::checkInt64($var);
        $this->recommended_budget_estimated_change_weekly_cost_micros = $var;

        return $this;
    }

    /**
     * Output only. The estimated change in weekly interactions if the recommended
     * budget is applied.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 recommended_budget_estimated_change_weekly_interactions = 29 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int|string
     */
    public function getRecommendedBudgetEstimatedChangeWeeklyInteractions()
    {
        return isset($this->recommended_budget_estimated_change_weekly_interactions) ? $this->recommended_budget_estimated_change_weekly_interactions : 0;
    }

    public function hasRecommendedBudgetEstimatedChangeWeeklyInteractions()
    {
        return isset($this->recommended_budget_estimated_change_weekly_interactions);
    }

    public function clearRecommendedBudgetEstimatedChangeWeeklyInteractions()
    {
        unset($this->recommended_budget_estimated_change_weekly_interactions);
    }

    /**
     * Output only. The estimated change in weekly interactions if the recommended
     * budget is applied.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 recommended_budget_estimated_change_weekly_interactions = 29 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int|string $var
     * @return $this
     */
    public function setRecommendedBudgetEstimatedChangeWeeklyInteractions($var)
    {
        GPBUtil::checkInt64($var);
        $this->recommended_budget_estimated_change_weekly_interactions = $var;

        return $this;
    }

    /**
     * Output only. The estimated change in weekly views if the recommended budget
     * is applied.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 recommended_budget_estimated_change_weekly_views = 30 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @return int|string
     */
    public function getRecommendedBudgetEstimatedChangeWeeklyViews()
    {
        return isset($this->recommended_budget_estimated_change_weekly_views) ? $this->recommended_budget_estimated_change_weekly_views : 0;
    }

    public function hasRecommendedBudgetEstimatedChangeWeeklyViews()
    {
        return isset($this->recommended_budget_estimated_change_weekly_views);
    }

    public function clearRecommendedBudgetEstimatedChangeWeeklyViews()
    {
        unset($this->recommended_budget_estimated_change_weekly_views);
    }

    /**
     * Output only. The estimated change in weekly views if the recommended budget
     * is applied.
     * This field is read-only.
     *
     * Generated from protobuf field <code>optional int64 recommended_budget_estimated_change_weekly_views = 30 [(.google.api.field_behavior) = OUTPUT_ONLY];</code>
     * @param int|string $var
     * @return $this
     */
    public function setRecommendedBudgetEstimatedChangeWeeklyViews($var)
    {
        GPBUtil::checkInt64($var);
        $this->recommended_budget_estimated_change_weekly_views = $var;

        return $this;
    }

    /**
     * Immutable. The type of the campaign budget.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.BudgetTypeEnum.BudgetType type = 18 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @return int
     */
    public function getType()
    {
        return $this->type;
    }

    /**
     * Immutable. The type of the campaign budget.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v16.enums.BudgetTypeEnum.BudgetType type = 18 [(.google.api.field_behavior) = IMMUTABLE];</code>
     * @param int $var
     * @return $this
     */
    public function setType($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V16\Enums\BudgetTypeEnum\BudgetType::class);
        $this->type = $var;

        return $this;
    }

    /**
     * ID of the portfolio bidding strategy that this shared campaign budget
     * is aligned with. When a bidding strategy and a campaign budget are aligned,
     * they are attached to the same set of campaigns. After a campaign budget is
     * aligned with a bidding strategy, campaigns that are added to the campaign
     * budget must also use the aligned bidding strategy.
     *
     * Generated from protobuf field <code>int64 aligned_bidding_strategy_id = 31;</code>
     * @return int|string
     */
    public function getAlignedBiddingStrategyId()
    {
        return $this->aligned_bidding_strategy_id;
    }

    /**
     * ID of the portfolio bidding strategy that this shared campaign budget
     * is aligned with. When a bidding strategy and a campaign budget are aligned,
     * they are attached to the same set of campaigns. After a campaign budget is
     * aligned with a bidding strategy, campaigns that are added to the campaign
     * budget must also use the aligned bidding strategy.
     *
     * Generated from protobuf field <code>int64 aligned_bidding_strategy_id = 31;</code>
     * @param int|string $var
     * @return $this
     */
    public function setAlignedBiddingStrategyId($var)
    {
        GPBUtil::checkInt64($var);
        $this->aligned_bidding_strategy_id = $var;

        return $this;
    }

}

