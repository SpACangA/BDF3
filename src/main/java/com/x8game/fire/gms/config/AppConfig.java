package com.x8game.fire.gms.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * User: Rojackse
 * Date: 2020/4/18
 * Time: 10:56
 */
@Component
@ConfigurationProperties(prefix = "spring.datasource")
public class AppConfig {
    private String url;
    private String username;
    private String password;
    private String driveName;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDriveName() {
        return driveName;
    }

    public void setDriveName(String driveName) {
        this.driveName = driveName;
    }
}
