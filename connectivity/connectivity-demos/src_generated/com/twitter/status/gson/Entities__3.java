
package com.twitter.status.gson;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Entities__3 {

    @SerializedName("url")
    @Expose
    private Url__3 url;
    @SerializedName("description")
    @Expose
    private Description__1 description;

    public Url__3 getUrl() {
        return url;
    }

    public void setUrl(Url__3 url) {
        this.url = url;
    }

    public Description__1 getDescription() {
        return description;
    }

    public void setDescription(Description__1 description) {
        this.description = description;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Entities__3 .class.getName()).append('@').append(Integer.toHexString(System.identityHashCode(this))).append('[');
        sb.append("url");
        sb.append('=');
        sb.append(((this.url == null)?"<null>":this.url));
        sb.append(',');
        sb.append("description");
        sb.append('=');
        sb.append(((this.description == null)?"<null>":this.description));
        sb.append(',');
        if (sb.charAt((sb.length()- 1)) == ',') {
            sb.setCharAt((sb.length()- 1), ']');
        } else {
            sb.append(']');
        }
        return sb.toString();
    }

}
