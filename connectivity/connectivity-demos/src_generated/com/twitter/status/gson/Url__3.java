
package com.twitter.status.gson;

import java.util.ArrayList;
import java.util.List;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Url__3 {

    @SerializedName("urls")
    @Expose
    private List<Url__4> urls = new ArrayList<Url__4>();

    public List<Url__4> getUrls() {
        return urls;
    }

    public void setUrls(List<Url__4> urls) {
        this.urls = urls;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Url__3 .class.getName()).append('@').append(Integer.toHexString(System.identityHashCode(this))).append('[');
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
