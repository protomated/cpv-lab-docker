<?php
/*
 * Copyright 2023 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 * GENERATED CODE WARNING
 * Generated by gapic-generator-php from the file
 * https://github.com/googleapis/googleapis/blob/master/google/ads/googleads/v15/services/conversion_upload_service.proto
 * Updates to the above are reflected here through a refresh process.
 */

namespace Google\Ads\GoogleAds\V15\Services\Gapic;

use Google\Ads\GoogleAds\V15\Services\CallConversion;
use Google\Ads\GoogleAds\V15\Services\ClickConversion;
use Google\Ads\GoogleAds\V15\Services\UploadCallConversionsRequest;
use Google\Ads\GoogleAds\V15\Services\UploadCallConversionsResponse;
use Google\Ads\GoogleAds\V15\Services\UploadClickConversionsRequest;
use Google\Ads\GoogleAds\V15\Services\UploadClickConversionsResponse;
use Google\ApiCore\ApiException;
use Google\ApiCore\CredentialsWrapper;
use Google\ApiCore\GapicClientTrait;
use Google\ApiCore\PathTemplate;
use Google\ApiCore\RequestParamsHeaderDescriptor;
use Google\ApiCore\RetrySettings;
use Google\ApiCore\Transport\TransportInterface;
use Google\ApiCore\ValidationException;
use Google\Auth\FetchAuthTokenInterface;

/**
 * Service Description: Service to upload conversions.
 *
 * This class provides the ability to make remote calls to the backing service through method
 * calls that map to API methods. Sample code to get started:
 *
 * ```
 * $conversionUploadServiceClient = new ConversionUploadServiceClient();
 * try {
 *     $customerId = 'customer_id';
 *     $conversions = [];
 *     $partialFailure = false;
 *     $response = $conversionUploadServiceClient->uploadCallConversions($customerId, $conversions, $partialFailure);
 * } finally {
 *     $conversionUploadServiceClient->close();
 * }
 * ```
 *
 * Many parameters require resource names to be formatted in a particular way. To
 * assist with these names, this class includes a format method for each type of
 * name, and additionally a parseName method to extract the individual identifiers
 * contained within formatted names that are returned by the API.
 *
 * This service has a new (beta) implementation. See {@see
 * \Google\Ads\GoogleAds\V15\Services\Client\ConversionUploadServiceClient} to use
 * the new surface.
 */
class ConversionUploadServiceGapicClient
{
    use GapicClientTrait;

    /** The name of the service. */
    const SERVICE_NAME = 'google.ads.googleads.v15.services.ConversionUploadService';

    /** The default address of the service. */
    const SERVICE_ADDRESS = 'googleads.googleapis.com';

    /** The default port of the service. */
    const DEFAULT_SERVICE_PORT = 443;

    /** The name of the code generator, to be included in the agent header. */
    const CODEGEN_NAME = 'gapic';

    /** The default scopes required by the service. */
    public static $serviceScopes = [
        'https://www.googleapis.com/auth/adwords',
    ];

    private static $conversionCustomVariableNameTemplate;

    private static $pathTemplateMap;

    private static function getClientDefaults()
    {
        return [
            'serviceName' => self::SERVICE_NAME,
            'apiEndpoint' => self::SERVICE_ADDRESS . ':' . self::DEFAULT_SERVICE_PORT,
            'clientConfig' => __DIR__ . '/../resources/conversion_upload_service_client_config.json',
            'descriptorsConfigPath' => __DIR__ . '/../resources/conversion_upload_service_descriptor_config.php',
            'gcpApiConfigPath' => __DIR__ . '/../resources/conversion_upload_service_grpc_config.json',
            'credentialsConfig' => [
                'defaultScopes' => self::$serviceScopes,
            ],
            'transportConfig' => [
                'rest' => [
                    'restClientConfigPath' => __DIR__ . '/../resources/conversion_upload_service_rest_client_config.php',
                ],
            ],
        ];
    }

    private static function getConversionCustomVariableNameTemplate()
    {
        if (self::$conversionCustomVariableNameTemplate == null) {
            self::$conversionCustomVariableNameTemplate = new PathTemplate('customers/{customer_id}/conversionCustomVariables/{conversion_custom_variable_id}');
        }

        return self::$conversionCustomVariableNameTemplate;
    }

    private static function getPathTemplateMap()
    {
        if (self::$pathTemplateMap == null) {
            self::$pathTemplateMap = [
                'conversionCustomVariable' => self::getConversionCustomVariableNameTemplate(),
            ];
        }

        return self::$pathTemplateMap;
    }

    /**
     * Formats a string containing the fully-qualified path to represent a
     * conversion_custom_variable resource.
     *
     * @param string $customerId
     * @param string $conversionCustomVariableId
     *
     * @return string The formatted conversion_custom_variable resource.
     */
    public static function conversionCustomVariableName($customerId, $conversionCustomVariableId)
    {
        return self::getConversionCustomVariableNameTemplate()->render([
            'customer_id' => $customerId,
            'conversion_custom_variable_id' => $conversionCustomVariableId,
        ]);
    }

    /**
     * Parses a formatted name string and returns an associative array of the components in the name.
     * The following name formats are supported:
     * Template: Pattern
     * - conversionCustomVariable: customers/{customer_id}/conversionCustomVariables/{conversion_custom_variable_id}
     *
     * The optional $template argument can be supplied to specify a particular pattern,
     * and must match one of the templates listed above. If no $template argument is
     * provided, or if the $template argument does not match one of the templates
     * listed, then parseName will check each of the supported templates, and return
     * the first match.
     *
     * @param string $formattedName The formatted name string
     * @param string $template Optional name of template to match
     *
     * @return array An associative array from name component IDs to component values.
     *
     * @throws ValidationException If $formattedName could not be matched.
     */
    public static function parseName($formattedName, $template = null)
    {
        $templateMap = self::getPathTemplateMap();
        if ($template) {
            if (!isset($templateMap[$template])) {
                throw new ValidationException("Template name $template does not exist");
            }

            return $templateMap[$template]->match($formattedName);
        }

        foreach ($templateMap as $templateName => $pathTemplate) {
            try {
                return $pathTemplate->match($formattedName);
            } catch (ValidationException $ex) {
                // Swallow the exception to continue trying other path templates
            }
        }

        throw new ValidationException("Input did not match any known format. Input: $formattedName");
    }

    /**
     * Constructor.
     *
     * @param array $options {
     *     Optional. Options for configuring the service API wrapper.
     *
     * @type string $apiEndpoint
     *           The address of the API remote host. May optionally include the port, formatted
     *           as "<uri>:<port>". Default 'googleads.googleapis.com:443'.
     * @type string|array|FetchAuthTokenInterface|CredentialsWrapper $credentials
     *           The credentials to be used by the client to authorize API calls. This option
     *           accepts either a path to a credentials file, or a decoded credentials file as a
     *           PHP array.
     *           *Advanced usage*: In addition, this option can also accept a pre-constructed
     *           {@see \Google\Auth\FetchAuthTokenInterface} object or
     *           {@see \Google\ApiCore\CredentialsWrapper} object. Note that when one of these
     *           objects are provided, any settings in $credentialsConfig will be ignored.
     * @type array $credentialsConfig
     *           Options used to configure credentials, including auth token caching, for the
     *           client. For a full list of supporting configuration options, see
     *           {@see \Google\ApiCore\CredentialsWrapper::build()} .
     * @type bool $disableRetries
     *           Determines whether or not retries defined by the client configuration should be
     *           disabled. Defaults to `false`.
     * @type string|array $clientConfig
     *           Client method configuration, including retry settings. This option can be either
     *           a path to a JSON file, or a PHP array containing the decoded JSON data. By
     *           default this settings points to the default client config file, which is
     *           provided in the resources folder.
     * @type string|TransportInterface $transport
     *           The transport used for executing network requests. May be either the string
     *           `rest` or `grpc`. Defaults to `grpc` if gRPC support is detected on the system.
     *           *Advanced usage*: Additionally, it is possible to pass in an already
     *           instantiated {@see \Google\ApiCore\Transport\TransportInterface} object. Note
     *           that when this object is provided, any settings in $transportConfig, and any
     *           $apiEndpoint setting, will be ignored.
     * @type array $transportConfig
     *           Configuration options that will be used to construct the transport. Options for
     *           each supported transport type should be passed in a key for that transport. For
     *           example:
     *           $transportConfig = [
     *               'grpc' => [...],
     *               'rest' => [...],
     *           ];
     *           See the {@see \Google\ApiCore\Transport\GrpcTransport::build()} and
     *           {@see \Google\ApiCore\Transport\RestTransport::build()} methods for the
     *           supported options.
     * @type callable $clientCertSource
     *           A callable which returns the client cert as a string. This can be used to
     *           provide a certificate and private key to the transport layer for mTLS.
     * }
     *
     * @throws ValidationException
     */
    public function __construct(array $options = [])
    {
        $clientOptions = $this->buildClientOptions($options);
        $this->setClientOptions($clientOptions);
    }

    /**
     * Processes the given call conversions.
     *
     * List of thrown errors:
     * [AuthenticationError]()
     * [AuthorizationError]()
     * [HeaderError]()
     * [InternalError]()
     * [PartialFailureError]()
     * [QuotaError]()
     * [RequestError]()
     *
     * Sample code:
     * ```
     * $conversionUploadServiceClient = new ConversionUploadServiceClient();
     * try {
     *     $customerId = 'customer_id';
     *     $conversions = [];
     *     $partialFailure = false;
     *     $response = $conversionUploadServiceClient->uploadCallConversions($customerId, $conversions, $partialFailure);
     * } finally {
     *     $conversionUploadServiceClient->close();
     * }
     * ```
     *
     * @param string $customerId Required. The ID of the customer performing the upload.
     * @param CallConversion[] $conversions Required. The conversions that are being uploaded.
     * @param bool $partialFailure Required. If true, successful operations will be carried out and invalid
     *                                         operations will return errors. If false, all operations will be carried
     *                                         out in one transaction if and only if they are all valid.
     *                                         This should always be set to true.
     *                                         See
     *                                         https://developers.google.com/google-ads/api/docs/best-practices/partial-failures
     *                                         for more information about partial failure.
     * @param array $optionalArgs {
     *     Optional.
     *
     * @type bool $validateOnly
     *           If true, the request is validated but not executed. Only errors are
     *           returned, not results.
     * @type RetrySettings|array $retrySettings
     *           Retry settings to use for this call. Can be a {@see RetrySettings} object, or an
     *           associative array of retry settings parameters. See the documentation on
     *           {@see RetrySettings} for example usage.
     * }
     *
     * @return \Google\Ads\GoogleAds\V15\Services\UploadCallConversionsResponse
     *
     * @throws ApiException if the remote call fails
     */
    public function uploadCallConversions($customerId, $conversions, $partialFailure, array $optionalArgs = [])
    {
        $request = new UploadCallConversionsRequest();
        $requestParamHeaders = [];
        $request->setCustomerId($customerId);
        $request->setConversions($conversions);
        $request->setPartialFailure($partialFailure);
        $requestParamHeaders['customer_id'] = $customerId;
        if (isset($optionalArgs['validateOnly'])) {
            $request->setValidateOnly($optionalArgs['validateOnly']);
        }

        $requestParams = new RequestParamsHeaderDescriptor($requestParamHeaders);
        $optionalArgs['headers'] = isset($optionalArgs['headers']) ? array_merge($requestParams->getHeader(), $optionalArgs['headers']) : $requestParams->getHeader();
        return $this->startCall('UploadCallConversions', UploadCallConversionsResponse::class, $optionalArgs, $request)->wait();
    }

    /**
     * Processes the given click conversions.
     *
     * List of thrown errors:
     * [AuthenticationError]()
     * [AuthorizationError]()
     * [ConversionUploadError]()
     * [HeaderError]()
     * [InternalError]()
     * [PartialFailureError]()
     * [QuotaError]()
     * [RequestError]()
     *
     * Sample code:
     * ```
     * $conversionUploadServiceClient = new ConversionUploadServiceClient();
     * try {
     *     $customerId = 'customer_id';
     *     $conversions = [];
     *     $partialFailure = false;
     *     $response = $conversionUploadServiceClient->uploadClickConversions($customerId, $conversions, $partialFailure);
     * } finally {
     *     $conversionUploadServiceClient->close();
     * }
     * ```
     *
     * @param string $customerId Required. The ID of the customer performing the upload.
     * @param ClickConversion[] $conversions Required. The conversions that are being uploaded.
     * @param bool $partialFailure Required. If true, successful operations will be carried out and invalid
     *                                          operations will return errors. If false, all operations will be carried
     *                                          out in one transaction if and only if they are all valid.
     *                                          This should always be set to true.
     *                                          See
     *                                          https://developers.google.com/google-ads/api/docs/best-practices/partial-failures
     *                                          for more information about partial failure.
     * @param array $optionalArgs {
     *     Optional.
     *
     * @type bool $validateOnly
     *           If true, the request is validated but not executed. Only errors are
     *           returned, not results.
     * @type bool $debugEnabled
     *           If true, the API will perform all upload checks and return errors if
     *           any are found. If false, it will perform only basic input validation,
     *           skip subsequent upload checks, and return success even if no click
     *           was found for the provided `user_identifiers`.
     *
     *           This setting only affects Enhanced conversions for leads uploads that use
     *           `user_identifiers` instead of `GCLID`, `GBRAID`, or `WBRAID`. When
     *           uploading enhanced conversions for leads, you should upload all conversion
     *           events to the API, including those that may not come from Google Ads
     *           campaigns. The upload of an event that is not from a Google Ads campaign
     *           will result in a `CLICK_NOT_FOUND` error if this field is set to `true`.
     *           Since these errors are expected for such events, set this field to `false`
     *           so you can confirm your uploads are properly formatted but ignore
     *           `CLICK_NOT_FOUND` errors from all of the conversions that are not from a
     *           Google Ads campaign. This will allow you to focus only on errors that you
     *           can address.
     *
     *           Default is false.
     * @type int $jobId
     *           Optional. Optional input to set job ID. Must be a non-negative number that
     *           is less than 2^31 if provided. If this field is not provided, the API will
     *           generate a job ID in the range [2^31, (2^63)-1]. The API will return the
     *           value for this request in the `job_id` field of the
     *           `UploadClickConversionsResponse`.
     * @type RetrySettings|array $retrySettings
     *           Retry settings to use for this call. Can be a {@see RetrySettings} object, or an
     *           associative array of retry settings parameters. See the documentation on
     *           {@see RetrySettings} for example usage.
     * }
     *
     * @return \Google\Ads\GoogleAds\V15\Services\UploadClickConversionsResponse
     *
     * @throws ApiException if the remote call fails
     */
    public function uploadClickConversions($customerId, $conversions, $partialFailure, array $optionalArgs = [])
    {
        $request = new UploadClickConversionsRequest();
        $requestParamHeaders = [];
        $request->setCustomerId($customerId);
        $request->setConversions($conversions);
        $request->setPartialFailure($partialFailure);
        $requestParamHeaders['customer_id'] = $customerId;
        if (isset($optionalArgs['validateOnly'])) {
            $request->setValidateOnly($optionalArgs['validateOnly']);
        }

        if (isset($optionalArgs['debugEnabled'])) {
            $request->setDebugEnabled($optionalArgs['debugEnabled']);
        }

        if (isset($optionalArgs['jobId'])) {
            $request->setJobId($optionalArgs['jobId']);
        }

        $requestParams = new RequestParamsHeaderDescriptor($requestParamHeaders);
        $optionalArgs['headers'] = isset($optionalArgs['headers']) ? array_merge($requestParams->getHeader(), $optionalArgs['headers']) : $requestParams->getHeader();
        return $this->startCall('UploadClickConversions', UploadClickConversionsResponse::class, $optionalArgs, $request)->wait();
    }
}
