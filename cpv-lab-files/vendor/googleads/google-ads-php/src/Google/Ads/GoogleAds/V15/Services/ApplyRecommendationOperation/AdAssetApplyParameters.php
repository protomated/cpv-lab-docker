<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v15/services/recommendation_service.proto

namespace Google\Ads\GoogleAds\V15\Services\ApplyRecommendationOperation;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * Common parameters used when applying ad asset recommendations.
 *
 * Generated from protobuf message <code>google.ads.googleads.v15.services.ApplyRecommendationOperation.AdAssetApplyParameters</code>
 */
class AdAssetApplyParameters extends \Google\Protobuf\Internal\Message
{
    /**
     * The assets to create and attach to a scope. This may be combined with
     * existing_assets in the same call.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v15.resources.Asset new_assets = 1;</code>
     */
    private $new_assets;
    /**
     * The resource names of existing assets to attach to a scope. This may be
     * combined with new_assets in the same call.
     *
     * Generated from protobuf field <code>repeated string existing_assets = 2;</code>
     */
    private $existing_assets;
    /**
     * Required. The scope at which to apply the assets. Assets at the campaign
     * scope level will be applied to the campaign associated with the
     * recommendation. Assets at the customer scope will apply to the entire
     * account. Assets at the campaign scope will override any attached at the
     * customer scope.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.services.ApplyRecommendationOperation.AdAssetApplyParameters.ApplyScope scope = 3 [(.google.api.field_behavior) = REQUIRED];</code>
     */
    protected $scope = 0;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type array<\Google\Ads\GoogleAds\V15\Resources\Asset>|\Google\Protobuf\Internal\RepeatedField $new_assets
     *           The assets to create and attach to a scope. This may be combined with
     *           existing_assets in the same call.
     * @type array<string>|\Google\Protobuf\Internal\RepeatedField $existing_assets
     *           The resource names of existing assets to attach to a scope. This may be
     *           combined with new_assets in the same call.
     * @type int $scope
     *           Required. The scope at which to apply the assets. Assets at the campaign
     *           scope level will be applied to the campaign associated with the
     *           recommendation. Assets at the customer scope will apply to the entire
     *           account. Assets at the campaign scope will override any attached at the
     *           customer scope.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V15\Services\RecommendationService::initOnce();
        parent::__construct($data);
    }

    /**
     * The assets to create and attach to a scope. This may be combined with
     * existing_assets in the same call.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v15.resources.Asset new_assets = 1;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getNewAssets()
    {
        return $this->new_assets;
    }

    /**
     * The assets to create and attach to a scope. This may be combined with
     * existing_assets in the same call.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v15.resources.Asset new_assets = 1;</code>
     * @param array<\Google\Ads\GoogleAds\V15\Resources\Asset>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setNewAssets($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Ads\GoogleAds\V15\Resources\Asset::class);
        $this->new_assets = $arr;

        return $this;
    }

    /**
     * The resource names of existing assets to attach to a scope. This may be
     * combined with new_assets in the same call.
     *
     * Generated from protobuf field <code>repeated string existing_assets = 2;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getExistingAssets()
    {
        return $this->existing_assets;
    }

    /**
     * The resource names of existing assets to attach to a scope. This may be
     * combined with new_assets in the same call.
     *
     * Generated from protobuf field <code>repeated string existing_assets = 2;</code>
     * @param array<string>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setExistingAssets($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::STRING);
        $this->existing_assets = $arr;

        return $this;
    }

    /**
     * Required. The scope at which to apply the assets. Assets at the campaign
     * scope level will be applied to the campaign associated with the
     * recommendation. Assets at the customer scope will apply to the entire
     * account. Assets at the campaign scope will override any attached at the
     * customer scope.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.services.ApplyRecommendationOperation.AdAssetApplyParameters.ApplyScope scope = 3 [(.google.api.field_behavior) = REQUIRED];</code>
     * @return int
     */
    public function getScope()
    {
        return $this->scope;
    }

    /**
     * Required. The scope at which to apply the assets. Assets at the campaign
     * scope level will be applied to the campaign associated with the
     * recommendation. Assets at the customer scope will apply to the entire
     * account. Assets at the campaign scope will override any attached at the
     * customer scope.
     *
     * Generated from protobuf field <code>.google.ads.googleads.v15.services.ApplyRecommendationOperation.AdAssetApplyParameters.ApplyScope scope = 3 [(.google.api.field_behavior) = REQUIRED];</code>
     * @param int $var
     * @return $this
     */
    public function setScope($var)
    {
        GPBUtil::checkEnum($var, \Google\Ads\GoogleAds\V15\Services\ApplyRecommendationOperation\AdAssetApplyParameters\ApplyScope::class);
        $this->scope = $var;

        return $this;
    }

}

// Adding a class alias for backwards compatibility with the previous class name.
class_alias(AdAssetApplyParameters::class, \Google\Ads\GoogleAds\V15\Services\ApplyRecommendationOperation_AdAssetApplyParameters::class);

