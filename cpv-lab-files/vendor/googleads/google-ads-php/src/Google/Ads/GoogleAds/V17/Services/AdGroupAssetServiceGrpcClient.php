<?php
// GENERATED CODE -- DO NOT EDIT!

// Original file comments:
// Copyright 2024 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
namespace Google\Ads\GoogleAds\V17\Services;

/**
 * Proto file describing the AdGroupAsset service.
 *
 * Service to manage ad group assets.
 */
class AdGroupAssetServiceGrpcClient extends \Grpc\BaseStub
{

    /**
     * @param string $hostname hostname
     * @param array $opts channel options
     * @param \Grpc\Channel $channel (optional) re-use channel object
     */
    public function __construct($hostname, $opts, $channel = null)
    {
        parent::__construct($hostname, $opts, $channel);
    }

    /**
     * Creates, updates, or removes ad group assets. Operation statuses are
     * returned.
     *
     * List of thrown errors:
     *   [AssetLinkError]()
     *   [AuthenticationError]()
     *   [AuthorizationError]()
     *   [ContextError]()
     *   [FieldError]()
     *   [HeaderError]()
     *   [InternalError]()
     *   [MutateError]()
     *   [NotAllowlistedError]()
     *   [QuotaError]()
     *   [RequestError]()
     * @param \Google\Ads\GoogleAds\V17\Services\MutateAdGroupAssetsRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall
     */
    public function MutateAdGroupAssets(\Google\Ads\GoogleAds\V17\Services\MutateAdGroupAssetsRequest $argument,
                                                                                                      $metadata = [], $options = [])
    {
        return $this->_simpleRequest('/google.ads.googleads.v17.services.AdGroupAssetService/MutateAdGroupAssets',
            $argument,
            ['\Google\Ads\GoogleAds\V17\Services\MutateAdGroupAssetsResponse', 'decode'],
            $metadata, $options);
    }

}
