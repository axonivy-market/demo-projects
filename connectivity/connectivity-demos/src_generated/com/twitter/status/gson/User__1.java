
package com.twitter.status.gson;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class User__1 {

    @SerializedName("id")
    @Expose
    private Long id;
    @SerializedName("id_str")
    @Expose
    private String idStr;
    @SerializedName("name")
    @Expose
    private String name;
    @SerializedName("screen_name")
    @Expose
    private String screenName;
    @SerializedName("location")
    @Expose
    private String location;
    @SerializedName("description")
    @Expose
    private String description;
    @SerializedName("url")
    @Expose
    private String url;
    @SerializedName("entities")
    @Expose
    private Entities__3 entities;
    @SerializedName("protected")
    @Expose
    private Boolean _protected;
    @SerializedName("followers_count")
    @Expose
    private Long followersCount;
    @SerializedName("friends_count")
    @Expose
    private Long friendsCount;
    @SerializedName("listed_count")
    @Expose
    private Long listedCount;
    @SerializedName("created_at")
    @Expose
    private String createdAt;
    @SerializedName("favourites_count")
    @Expose
    private Long favouritesCount;
    @SerializedName("utc_offset")
    @Expose
    private Object utcOffset;
    @SerializedName("time_zone")
    @Expose
    private Object timeZone;
    @SerializedName("geo_enabled")
    @Expose
    private Boolean geoEnabled;
    @SerializedName("verified")
    @Expose
    private Boolean verified;
    @SerializedName("statuses_count")
    @Expose
    private Long statusesCount;
    @SerializedName("lang")
    @Expose
    private Object lang;
    @SerializedName("contributors_enabled")
    @Expose
    private Boolean contributorsEnabled;
    @SerializedName("is_translator")
    @Expose
    private Boolean isTranslator;
    @SerializedName("is_translation_enabled")
    @Expose
    private Boolean isTranslationEnabled;
    @SerializedName("profile_background_color")
    @Expose
    private String profileBackgroundColor;
    @SerializedName("profile_background_image_url")
    @Expose
    private String profileBackgroundImageUrl;
    @SerializedName("profile_background_image_url_https")
    @Expose
    private String profileBackgroundImageUrlHttps;
    @SerializedName("profile_background_tile")
    @Expose
    private Boolean profileBackgroundTile;
    @SerializedName("profile_image_url")
    @Expose
    private String profileImageUrl;
    @SerializedName("profile_image_url_https")
    @Expose
    private String profileImageUrlHttps;
    @SerializedName("profile_banner_url")
    @Expose
    private String profileBannerUrl;
    @SerializedName("profile_link_color")
    @Expose
    private String profileLinkColor;
    @SerializedName("profile_sidebar_border_color")
    @Expose
    private String profileSidebarBorderColor;
    @SerializedName("profile_sidebar_fill_color")
    @Expose
    private String profileSidebarFillColor;
    @SerializedName("profile_text_color")
    @Expose
    private String profileTextColor;
    @SerializedName("profile_use_background_image")
    @Expose
    private Boolean profileUseBackgroundImage;
    @SerializedName("has_extended_profile")
    @Expose
    private Boolean hasExtendedProfile;
    @SerializedName("default_profile")
    @Expose
    private Boolean defaultProfile;
    @SerializedName("default_profile_image")
    @Expose
    private Boolean defaultProfileImage;
    @SerializedName("can_media_tag")
    @Expose
    private Boolean canMediaTag;
    @SerializedName("followed_by")
    @Expose
    private Boolean followedBy;
    @SerializedName("following")
    @Expose
    private Boolean following;
    @SerializedName("follow_request_sent")
    @Expose
    private Boolean followRequestSent;
    @SerializedName("notifications")
    @Expose
    private Boolean notifications;
    @SerializedName("translator_type")
    @Expose
    private String translatorType;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getIdStr() {
        return idStr;
    }

    public void setIdStr(String idStr) {
        this.idStr = idStr;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getScreenName() {
        return screenName;
    }

    public void setScreenName(String screenName) {
        this.screenName = screenName;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Entities__3 getEntities() {
        return entities;
    }

    public void setEntities(Entities__3 entities) {
        this.entities = entities;
    }

    public Boolean getProtected() {
        return _protected;
    }

    public void setProtected(Boolean _protected) {
        this._protected = _protected;
    }

    public Long getFollowersCount() {
        return followersCount;
    }

    public void setFollowersCount(Long followersCount) {
        this.followersCount = followersCount;
    }

    public Long getFriendsCount() {
        return friendsCount;
    }

    public void setFriendsCount(Long friendsCount) {
        this.friendsCount = friendsCount;
    }

    public Long getListedCount() {
        return listedCount;
    }

    public void setListedCount(Long listedCount) {
        this.listedCount = listedCount;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public Long getFavouritesCount() {
        return favouritesCount;
    }

    public void setFavouritesCount(Long favouritesCount) {
        this.favouritesCount = favouritesCount;
    }

    public Object getUtcOffset() {
        return utcOffset;
    }

    public void setUtcOffset(Object utcOffset) {
        this.utcOffset = utcOffset;
    }

    public Object getTimeZone() {
        return timeZone;
    }

    public void setTimeZone(Object timeZone) {
        this.timeZone = timeZone;
    }

    public Boolean getGeoEnabled() {
        return geoEnabled;
    }

    public void setGeoEnabled(Boolean geoEnabled) {
        this.geoEnabled = geoEnabled;
    }

    public Boolean getVerified() {
        return verified;
    }

    public void setVerified(Boolean verified) {
        this.verified = verified;
    }

    public Long getStatusesCount() {
        return statusesCount;
    }

    public void setStatusesCount(Long statusesCount) {
        this.statusesCount = statusesCount;
    }

    public Object getLang() {
        return lang;
    }

    public void setLang(Object lang) {
        this.lang = lang;
    }

    public Boolean getContributorsEnabled() {
        return contributorsEnabled;
    }

    public void setContributorsEnabled(Boolean contributorsEnabled) {
        this.contributorsEnabled = contributorsEnabled;
    }

    public Boolean getIsTranslator() {
        return isTranslator;
    }

    public void setIsTranslator(Boolean isTranslator) {
        this.isTranslator = isTranslator;
    }

    public Boolean getIsTranslationEnabled() {
        return isTranslationEnabled;
    }

    public void setIsTranslationEnabled(Boolean isTranslationEnabled) {
        this.isTranslationEnabled = isTranslationEnabled;
    }

    public String getProfileBackgroundColor() {
        return profileBackgroundColor;
    }

    public void setProfileBackgroundColor(String profileBackgroundColor) {
        this.profileBackgroundColor = profileBackgroundColor;
    }

    public String getProfileBackgroundImageUrl() {
        return profileBackgroundImageUrl;
    }

    public void setProfileBackgroundImageUrl(String profileBackgroundImageUrl) {
        this.profileBackgroundImageUrl = profileBackgroundImageUrl;
    }

    public String getProfileBackgroundImageUrlHttps() {
        return profileBackgroundImageUrlHttps;
    }

    public void setProfileBackgroundImageUrlHttps(String profileBackgroundImageUrlHttps) {
        this.profileBackgroundImageUrlHttps = profileBackgroundImageUrlHttps;
    }

    public Boolean getProfileBackgroundTile() {
        return profileBackgroundTile;
    }

    public void setProfileBackgroundTile(Boolean profileBackgroundTile) {
        this.profileBackgroundTile = profileBackgroundTile;
    }

    public String getProfileImageUrl() {
        return profileImageUrl;
    }

    public void setProfileImageUrl(String profileImageUrl) {
        this.profileImageUrl = profileImageUrl;
    }

    public String getProfileImageUrlHttps() {
        return profileImageUrlHttps;
    }

    public void setProfileImageUrlHttps(String profileImageUrlHttps) {
        this.profileImageUrlHttps = profileImageUrlHttps;
    }

    public String getProfileBannerUrl() {
        return profileBannerUrl;
    }

    public void setProfileBannerUrl(String profileBannerUrl) {
        this.profileBannerUrl = profileBannerUrl;
    }

    public String getProfileLinkColor() {
        return profileLinkColor;
    }

    public void setProfileLinkColor(String profileLinkColor) {
        this.profileLinkColor = profileLinkColor;
    }

    public String getProfileSidebarBorderColor() {
        return profileSidebarBorderColor;
    }

    public void setProfileSidebarBorderColor(String profileSidebarBorderColor) {
        this.profileSidebarBorderColor = profileSidebarBorderColor;
    }

    public String getProfileSidebarFillColor() {
        return profileSidebarFillColor;
    }

    public void setProfileSidebarFillColor(String profileSidebarFillColor) {
        this.profileSidebarFillColor = profileSidebarFillColor;
    }

    public String getProfileTextColor() {
        return profileTextColor;
    }

    public void setProfileTextColor(String profileTextColor) {
        this.profileTextColor = profileTextColor;
    }

    public Boolean getProfileUseBackgroundImage() {
        return profileUseBackgroundImage;
    }

    public void setProfileUseBackgroundImage(Boolean profileUseBackgroundImage) {
        this.profileUseBackgroundImage = profileUseBackgroundImage;
    }

    public Boolean getHasExtendedProfile() {
        return hasExtendedProfile;
    }

    public void setHasExtendedProfile(Boolean hasExtendedProfile) {
        this.hasExtendedProfile = hasExtendedProfile;
    }

    public Boolean getDefaultProfile() {
        return defaultProfile;
    }

    public void setDefaultProfile(Boolean defaultProfile) {
        this.defaultProfile = defaultProfile;
    }

    public Boolean getDefaultProfileImage() {
        return defaultProfileImage;
    }

    public void setDefaultProfileImage(Boolean defaultProfileImage) {
        this.defaultProfileImage = defaultProfileImage;
    }

    public Boolean getCanMediaTag() {
        return canMediaTag;
    }

    public void setCanMediaTag(Boolean canMediaTag) {
        this.canMediaTag = canMediaTag;
    }

    public Boolean getFollowedBy() {
        return followedBy;
    }

    public void setFollowedBy(Boolean followedBy) {
        this.followedBy = followedBy;
    }

    public Boolean getFollowing() {
        return following;
    }

    public void setFollowing(Boolean following) {
        this.following = following;
    }

    public Boolean getFollowRequestSent() {
        return followRequestSent;
    }

    public void setFollowRequestSent(Boolean followRequestSent) {
        this.followRequestSent = followRequestSent;
    }

    public Boolean getNotifications() {
        return notifications;
    }

    public void setNotifications(Boolean notifications) {
        this.notifications = notifications;
    }

    public String getTranslatorType() {
        return translatorType;
    }

    public void setTranslatorType(String translatorType) {
        this.translatorType = translatorType;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(User__1 .class.getName()).append('@').append(Integer.toHexString(System.identityHashCode(this))).append('[');
        sb.append("id");
        sb.append('=');
        sb.append(((this.id == null)?"<null>":this.id));
        sb.append(',');
        sb.append("idStr");
        sb.append('=');
        sb.append(((this.idStr == null)?"<null>":this.idStr));
        sb.append(',');
        sb.append("name");
        sb.append('=');
        sb.append(((this.name == null)?"<null>":this.name));
        sb.append(',');
        sb.append("screenName");
        sb.append('=');
        sb.append(((this.screenName == null)?"<null>":this.screenName));
        sb.append(',');
        sb.append("location");
        sb.append('=');
        sb.append(((this.location == null)?"<null>":this.location));
        sb.append(',');
        sb.append("description");
        sb.append('=');
        sb.append(((this.description == null)?"<null>":this.description));
        sb.append(',');
        sb.append("url");
        sb.append('=');
        sb.append(((this.url == null)?"<null>":this.url));
        sb.append(',');
        sb.append("entities");
        sb.append('=');
        sb.append(((this.entities == null)?"<null>":this.entities));
        sb.append(',');
        sb.append("_protected");
        sb.append('=');
        sb.append(((this._protected == null)?"<null>":this._protected));
        sb.append(',');
        sb.append("followersCount");
        sb.append('=');
        sb.append(((this.followersCount == null)?"<null>":this.followersCount));
        sb.append(',');
        sb.append("friendsCount");
        sb.append('=');
        sb.append(((this.friendsCount == null)?"<null>":this.friendsCount));
        sb.append(',');
        sb.append("listedCount");
        sb.append('=');
        sb.append(((this.listedCount == null)?"<null>":this.listedCount));
        sb.append(',');
        sb.append("createdAt");
        sb.append('=');
        sb.append(((this.createdAt == null)?"<null>":this.createdAt));
        sb.append(',');
        sb.append("favouritesCount");
        sb.append('=');
        sb.append(((this.favouritesCount == null)?"<null>":this.favouritesCount));
        sb.append(',');
        sb.append("utcOffset");
        sb.append('=');
        sb.append(((this.utcOffset == null)?"<null>":this.utcOffset));
        sb.append(',');
        sb.append("timeZone");
        sb.append('=');
        sb.append(((this.timeZone == null)?"<null>":this.timeZone));
        sb.append(',');
        sb.append("geoEnabled");
        sb.append('=');
        sb.append(((this.geoEnabled == null)?"<null>":this.geoEnabled));
        sb.append(',');
        sb.append("verified");
        sb.append('=');
        sb.append(((this.verified == null)?"<null>":this.verified));
        sb.append(',');
        sb.append("statusesCount");
        sb.append('=');
        sb.append(((this.statusesCount == null)?"<null>":this.statusesCount));
        sb.append(',');
        sb.append("lang");
        sb.append('=');
        sb.append(((this.lang == null)?"<null>":this.lang));
        sb.append(',');
        sb.append("contributorsEnabled");
        sb.append('=');
        sb.append(((this.contributorsEnabled == null)?"<null>":this.contributorsEnabled));
        sb.append(',');
        sb.append("isTranslator");
        sb.append('=');
        sb.append(((this.isTranslator == null)?"<null>":this.isTranslator));
        sb.append(',');
        sb.append("isTranslationEnabled");
        sb.append('=');
        sb.append(((this.isTranslationEnabled == null)?"<null>":this.isTranslationEnabled));
        sb.append(',');
        sb.append("profileBackgroundColor");
        sb.append('=');
        sb.append(((this.profileBackgroundColor == null)?"<null>":this.profileBackgroundColor));
        sb.append(',');
        sb.append("profileBackgroundImageUrl");
        sb.append('=');
        sb.append(((this.profileBackgroundImageUrl == null)?"<null>":this.profileBackgroundImageUrl));
        sb.append(',');
        sb.append("profileBackgroundImageUrlHttps");
        sb.append('=');
        sb.append(((this.profileBackgroundImageUrlHttps == null)?"<null>":this.profileBackgroundImageUrlHttps));
        sb.append(',');
        sb.append("profileBackgroundTile");
        sb.append('=');
        sb.append(((this.profileBackgroundTile == null)?"<null>":this.profileBackgroundTile));
        sb.append(',');
        sb.append("profileImageUrl");
        sb.append('=');
        sb.append(((this.profileImageUrl == null)?"<null>":this.profileImageUrl));
        sb.append(',');
        sb.append("profileImageUrlHttps");
        sb.append('=');
        sb.append(((this.profileImageUrlHttps == null)?"<null>":this.profileImageUrlHttps));
        sb.append(',');
        sb.append("profileBannerUrl");
        sb.append('=');
        sb.append(((this.profileBannerUrl == null)?"<null>":this.profileBannerUrl));
        sb.append(',');
        sb.append("profileLinkColor");
        sb.append('=');
        sb.append(((this.profileLinkColor == null)?"<null>":this.profileLinkColor));
        sb.append(',');
        sb.append("profileSidebarBorderColor");
        sb.append('=');
        sb.append(((this.profileSidebarBorderColor == null)?"<null>":this.profileSidebarBorderColor));
        sb.append(',');
        sb.append("profileSidebarFillColor");
        sb.append('=');
        sb.append(((this.profileSidebarFillColor == null)?"<null>":this.profileSidebarFillColor));
        sb.append(',');
        sb.append("profileTextColor");
        sb.append('=');
        sb.append(((this.profileTextColor == null)?"<null>":this.profileTextColor));
        sb.append(',');
        sb.append("profileUseBackgroundImage");
        sb.append('=');
        sb.append(((this.profileUseBackgroundImage == null)?"<null>":this.profileUseBackgroundImage));
        sb.append(',');
        sb.append("hasExtendedProfile");
        sb.append('=');
        sb.append(((this.hasExtendedProfile == null)?"<null>":this.hasExtendedProfile));
        sb.append(',');
        sb.append("defaultProfile");
        sb.append('=');
        sb.append(((this.defaultProfile == null)?"<null>":this.defaultProfile));
        sb.append(',');
        sb.append("defaultProfileImage");
        sb.append('=');
        sb.append(((this.defaultProfileImage == null)?"<null>":this.defaultProfileImage));
        sb.append(',');
        sb.append("canMediaTag");
        sb.append('=');
        sb.append(((this.canMediaTag == null)?"<null>":this.canMediaTag));
        sb.append(',');
        sb.append("followedBy");
        sb.append('=');
        sb.append(((this.followedBy == null)?"<null>":this.followedBy));
        sb.append(',');
        sb.append("following");
        sb.append('=');
        sb.append(((this.following == null)?"<null>":this.following));
        sb.append(',');
        sb.append("followRequestSent");
        sb.append('=');
        sb.append(((this.followRequestSent == null)?"<null>":this.followRequestSent));
        sb.append(',');
        sb.append("notifications");
        sb.append('=');
        sb.append(((this.notifications == null)?"<null>":this.notifications));
        sb.append(',');
        sb.append("translatorType");
        sb.append('=');
        sb.append(((this.translatorType == null)?"<null>":this.translatorType));
        sb.append(',');
        if (sb.charAt((sb.length()- 1)) == ',') {
            sb.setCharAt((sb.length()- 1), ']');
        } else {
            sb.append(']');
        }
        return sb.toString();
    }

}
