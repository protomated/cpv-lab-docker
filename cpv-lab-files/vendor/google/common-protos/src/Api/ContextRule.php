<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/context.proto

namespace Google\Api;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * A context rule provides information about the context for an individual API
 * element.
 *
 * Generated from protobuf message <code>google.api.ContextRule</code>
 */
class ContextRule extends \Google\Protobuf\Internal\Message
{
    /**
     * Selects the methods to which this rule applies.
     * Refer to [selector][google.api.DocumentationRule.selector] for syntax
     * details.
     *
     * Generated from protobuf field <code>string selector = 1;</code>
     */
    protected $selector = '';
    /**
     * A list of full type names of requested contexts.
     *
     * Generated from protobuf field <code>repeated string requested = 2;</code>
     */
    private $requested;
    /**
     * A list of full type names of provided contexts.
     *
     * Generated from protobuf field <code>repeated string provided = 3;</code>
     */
    private $provided;
    /**
     * A list of full type names or extension IDs of extensions allowed in grpc
     * side channel from client to backend.
     *
     * Generated from protobuf field <code>repeated string allowed_request_extensions = 4;</code>
     */
    private $allowed_request_extensions;
    /**
     * A list of full type names or extension IDs of extensions allowed in grpc
     * side channel from backend to client.
     *
     * Generated from protobuf field <code>repeated string allowed_response_extensions = 5;</code>
     */
    private $allowed_response_extensions;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type string $selector
     *           Selects the methods to which this rule applies.
     *           Refer to [selector][google.api.DocumentationRule.selector] for syntax
     *           details.
     * @type array<string>|\Google\Protobuf\Internal\RepeatedField $requested
     *           A list of full type names of requested contexts.
     * @type array<string>|\Google\Protobuf\Internal\RepeatedField $provided
     *           A list of full type names of provided contexts.
     * @type array<string>|\Google\Protobuf\Internal\RepeatedField $allowed_request_extensions
     *           A list of full type names or extension IDs of extensions allowed in grpc
     *           side channel from client to backend.
     * @type array<string>|\Google\Protobuf\Internal\RepeatedField $allowed_response_extensions
     *           A list of full type names or extension IDs of extensions allowed in grpc
     *           side channel from backend to client.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Api\Context::initOnce();
        parent::__construct($data);
    }

    /**
     * Selects the methods to which this rule applies.
     * Refer to [selector][google.api.DocumentationRule.selector] for syntax
     * details.
     *
     * Generated from protobuf field <code>string selector = 1;</code>
     * @return string
     */
    public function getSelector()
    {
        return $this->selector;
    }

    /**
     * Selects the methods to which this rule applies.
     * Refer to [selector][google.api.DocumentationRule.selector] for syntax
     * details.
     *
     * Generated from protobuf field <code>string selector = 1;</code>
     * @param string $var
     * @return $this
     */
    public function setSelector($var)
    {
        GPBUtil::checkString($var, True);
        $this->selector = $var;

        return $this;
    }

    /**
     * A list of full type names of requested contexts.
     *
     * Generated from protobuf field <code>repeated string requested = 2;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getRequested()
    {
        return $this->requested;
    }

    /**
     * A list of full type names of requested contexts.
     *
     * Generated from protobuf field <code>repeated string requested = 2;</code>
     * @param array<string>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setRequested($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::STRING);
        $this->requested = $arr;

        return $this;
    }

    /**
     * A list of full type names of provided contexts.
     *
     * Generated from protobuf field <code>repeated string provided = 3;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getProvided()
    {
        return $this->provided;
    }

    /**
     * A list of full type names of provided contexts.
     *
     * Generated from protobuf field <code>repeated string provided = 3;</code>
     * @param array<string>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setProvided($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::STRING);
        $this->provided = $arr;

        return $this;
    }

    /**
     * A list of full type names or extension IDs of extensions allowed in grpc
     * side channel from client to backend.
     *
     * Generated from protobuf field <code>repeated string allowed_request_extensions = 4;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getAllowedRequestExtensions()
    {
        return $this->allowed_request_extensions;
    }

    /**
     * A list of full type names or extension IDs of extensions allowed in grpc
     * side channel from client to backend.
     *
     * Generated from protobuf field <code>repeated string allowed_request_extensions = 4;</code>
     * @param array<string>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setAllowedRequestExtensions($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::STRING);
        $this->allowed_request_extensions = $arr;

        return $this;
    }

    /**
     * A list of full type names or extension IDs of extensions allowed in grpc
     * side channel from backend to client.
     *
     * Generated from protobuf field <code>repeated string allowed_response_extensions = 5;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getAllowedResponseExtensions()
    {
        return $this->allowed_response_extensions;
    }

    /**
     * A list of full type names or extension IDs of extensions allowed in grpc
     * side channel from backend to client.
     *
     * Generated from protobuf field <code>repeated string allowed_response_extensions = 5;</code>
     * @param array<string>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setAllowedResponseExtensions($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::STRING);
        $this->allowed_response_extensions = $arr;

        return $this;
    }

}

