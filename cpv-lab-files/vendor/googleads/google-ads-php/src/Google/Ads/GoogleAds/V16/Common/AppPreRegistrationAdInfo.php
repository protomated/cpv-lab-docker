<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v16/common/ad_type_infos.proto

namespace Google\Ads\GoogleAds\V16\Common;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * App pre-registration ads link to your app or game listing on Google Play, and
 * can run on Google Play, on YouTube (in-stream only), and within other apps
 * and mobile websites on the Display Network. It will help capture people's
 * interest in your app or game and generate an early install base for your app
 * or game before a launch.
 *
 * Generated from protobuf message <code>google.ads.googleads.v16.common.AppPreRegistrationAdInfo</code>
 */
class AppPreRegistrationAdInfo extends \Google\Protobuf\Internal\Message
{
    /**
     * List of text assets for headlines. When the ad serves the headlines will
     * be selected from this list.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.AdTextAsset headlines = 1;</code>
     */
    private $headlines;
    /**
     * List of text assets for descriptions. When the ad serves the descriptions
     * will be selected from this list.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.AdTextAsset descriptions = 2;</code>
     */
    private $descriptions;
    /**
     * List of image asset IDs whose images may be displayed with the ad.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.AdImageAsset images = 3;</code>
     */
    private $images;
    /**
     * List of YouTube video asset IDs whose videos may be displayed with the ad.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.AdVideoAsset youtube_videos = 4;</code>
     */
    private $youtube_videos;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     * @type array<\Google\Ads\GoogleAds\V16\Common\AdTextAsset>|\Google\Protobuf\Internal\RepeatedField $headlines
     *           List of text assets for headlines. When the ad serves the headlines will
     *           be selected from this list.
     * @type array<\Google\Ads\GoogleAds\V16\Common\AdTextAsset>|\Google\Protobuf\Internal\RepeatedField $descriptions
     *           List of text assets for descriptions. When the ad serves the descriptions
     *           will be selected from this list.
     * @type array<\Google\Ads\GoogleAds\V16\Common\AdImageAsset>|\Google\Protobuf\Internal\RepeatedField $images
     *           List of image asset IDs whose images may be displayed with the ad.
     * @type array<\Google\Ads\GoogleAds\V16\Common\AdVideoAsset>|\Google\Protobuf\Internal\RepeatedField $youtube_videos
     *           List of YouTube video asset IDs whose videos may be displayed with the ad.
     * }
     */
    public function __construct($data = NULL)
    {
        \GPBMetadata\Google\Ads\GoogleAds\V16\Common\AdTypeInfos::initOnce();
        parent::__construct($data);
    }

    /**
     * List of text assets for headlines. When the ad serves the headlines will
     * be selected from this list.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.AdTextAsset headlines = 1;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getHeadlines()
    {
        return $this->headlines;
    }

    /**
     * List of text assets for headlines. When the ad serves the headlines will
     * be selected from this list.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.AdTextAsset headlines = 1;</code>
     * @param array<\Google\Ads\GoogleAds\V16\Common\AdTextAsset>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setHeadlines($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Ads\GoogleAds\V16\Common\AdTextAsset::class);
        $this->headlines = $arr;

        return $this;
    }

    /**
     * List of text assets for descriptions. When the ad serves the descriptions
     * will be selected from this list.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.AdTextAsset descriptions = 2;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getDescriptions()
    {
        return $this->descriptions;
    }

    /**
     * List of text assets for descriptions. When the ad serves the descriptions
     * will be selected from this list.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.AdTextAsset descriptions = 2;</code>
     * @param array<\Google\Ads\GoogleAds\V16\Common\AdTextAsset>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setDescriptions($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Ads\GoogleAds\V16\Common\AdTextAsset::class);
        $this->descriptions = $arr;

        return $this;
    }

    /**
     * List of image asset IDs whose images may be displayed with the ad.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.AdImageAsset images = 3;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getImages()
    {
        return $this->images;
    }

    /**
     * List of image asset IDs whose images may be displayed with the ad.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.AdImageAsset images = 3;</code>
     * @param array<\Google\Ads\GoogleAds\V16\Common\AdImageAsset>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setImages($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Ads\GoogleAds\V16\Common\AdImageAsset::class);
        $this->images = $arr;

        return $this;
    }

    /**
     * List of YouTube video asset IDs whose videos may be displayed with the ad.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.AdVideoAsset youtube_videos = 4;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getYoutubeVideos()
    {
        return $this->youtube_videos;
    }

    /**
     * List of YouTube video asset IDs whose videos may be displayed with the ad.
     *
     * Generated from protobuf field <code>repeated .google.ads.googleads.v16.common.AdVideoAsset youtube_videos = 4;</code>
     * @param array<\Google\Ads\GoogleAds\V16\Common\AdVideoAsset>|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setYoutubeVideos($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Ads\GoogleAds\V16\Common\AdVideoAsset::class);
        $this->youtube_videos = $arr;

        return $this;
    }

}

