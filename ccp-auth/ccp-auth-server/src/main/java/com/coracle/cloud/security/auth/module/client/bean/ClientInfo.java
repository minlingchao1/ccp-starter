

package com.coracle.cloud.security.auth.module.client.bean;


import com.github.ag.core.util.jwt.IJWTInfo;

import java.util.Date;
import java.util.Map;

/**
 * Created by ace on 2017/9/10.
 */
public class ClientInfo implements IJWTInfo {
    String clientId;
    String name;

    public ClientInfo(String clientId, String name, String id) {
        this.clientId = clientId;
        this.name = name;
        this.id = id;
    }

    public void setId(String id) {
        this.id = id;
    }

    String id;
    public String getClientId() {
        return clientId;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String getUniqueName() {
        return clientId;
    }

    @Override
    public String getId() {
        return id;
    }

    @Override
    public String getName() {
        return name;
    }

    @Override
    public Date getExpireTime() {
        return null;
    }

    @Override
    public Map<String, String> getOtherInfo() {
        return null;
    }
}
