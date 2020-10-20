
package com.twitter.status.gson;

import java.util.ArrayList;
import java.util.List;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Entities {

    @SerializedName("hashtags")
    @Expose
    private List<Hashtag> hashtags = new ArrayList<Hashtag>();
    @SerializedName("symbols")
    @Expose
    private List<Object> symbols = new ArrayList<Object>();
    @SerializedName("user_mentions")
    @Expose
    private List<UserMention> userMentions = new ArrayList<UserMention>();
    @SerializedName("urls")
    @Expose
    private List<Object> urls = new ArrayList<Object>();

    public List<Hashtag> getHashtags() {
        return hashtags;
    }

    public void setHashtags(List<Hashtag> hashtags) {
        this.hashtags = hashtags;
    }

    public List<Object> getSymbols() {
        return symbols;
    }

    public void setSymbols(List<Object> symbols) {
        this.symbols = symbols;
    }

    public List<UserMention> getUserMentions() {
        return userMentions;
    }

    public void setUserMentions(List<UserMention> userMentions) {
        this.userMentions = userMentions;
    }

    public List<Object> getUrls() {
        return urls;
    }

    public void setUrls(List<Object> urls) {
        this.urls = urls;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Entities.class.getName()).append('@').append(Integer.toHexString(System.identityHashCode(this))).append('[');
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
