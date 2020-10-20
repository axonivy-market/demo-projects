
package com.twitter.status.gson;

import java.util.ArrayList;
import java.util.List;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Entities__2 {

    @SerializedName("hashtags")
    @Expose
    private List<Hashtag__1> hashtags = new ArrayList<Hashtag__1>();
    @SerializedName("symbols")
    @Expose
    private List<Object> symbols = new ArrayList<Object>();
    @SerializedName("user_mentions")
    @Expose
    private List<UserMention__1> userMentions = new ArrayList<UserMention__1>();
    @SerializedName("urls")
    @Expose
    private List<Url__2> urls = new ArrayList<Url__2>();

    public List<Hashtag__1> getHashtags() {
        return hashtags;
    }

    public void setHashtags(List<Hashtag__1> hashtags) {
        this.hashtags = hashtags;
    }

    public List<Object> getSymbols() {
        return symbols;
    }

    public void setSymbols(List<Object> symbols) {
        this.symbols = symbols;
    }

    public List<UserMention__1> getUserMentions() {
        return userMentions;
    }

    public void setUserMentions(List<UserMention__1> userMentions) {
        this.userMentions = userMentions;
    }

    public List<Url__2> getUrls() {
        return urls;
    }

    public void setUrls(List<Url__2> urls) {
        this.urls = urls;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Entities__2 .class.getName()).append('@').append(Integer.toHexString(System.identityHashCode(this))).append('[');
        sb.append("hashtags");
        sb.append('=');
        sb.append(((this.hashtags == null)?"<null>":this.hashtags));
        sb.append(',');
        sb.append("symbols");
        sb.append('=');
        sb.append(((this.symbols == null)?"<null>":this.symbols));
        sb.append(',');
        sb.append("userMentions");
        sb.append('=');
        sb.append(((this.userMentions == null)?"<null>":this.userMentions));
        sb.append(',');
        sb.append("urls");
        sb.append('=');
        sb.append(((this.urls == null)?"<null>":this.urls));
        sb.append(',');
        if (sb.charAt((sb.length()- 1)) == ',') {
            sb.setCharAt((sb.length()- 1), ']');
        } else {
            sb.append(']');
        }
        return sb.toString();
    }

}
