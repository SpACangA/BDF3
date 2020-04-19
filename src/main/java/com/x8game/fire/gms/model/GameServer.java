package com.x8game.fire.gms.model;

import com.bstek.dorado.annotation.PropertyDef;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "gms_game_server")
public class GameServer implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    @PropertyDef(label = "主键")
    private Integer id;

    @Column(name = "name", length = 64)
    @PropertyDef(label = "名称")
    private String name;

    @Column(name = "description", length = 128)
    @PropertyDef(label = "描述")
    private String description;

    @Column(name = "ip", length = 64)
    @PropertyDef(label = "ip")
    private String ip;

    @Column(name = "queryIp")
    @PropertyDef(label = "端口")
    private int port;

    @Column(name = "queryIp", length = 64)
    @PropertyDef(label = "查询ip")
    private String queryIp;

    @Column(name = "queryPort")
    @PropertyDef(label = "查询端口")
    private int queryPort;

    @Column(name = "region")
    @PropertyDef(label = "区")
    private int region;
    /**
     *  -1：停用
     0：推荐
     1：正常
     2：拥挤
     3：爆满
     4：维护
     5：强烈推荐
     */
    @Column(name = "status")
    @PropertyDef(label = "状态")
    private int status;

    @Column(name = "startDate")
    @PropertyDef(label = "开服时间")
    private Date startDate;

    @Column(name = "idx")
    @PropertyDef(label = "序号")
    private int idx;

    @Column(name = "name_idx", length = 64)
    @PropertyDef(label = "名称")
    private String name_idx;

    public String getName_idx() {
        return name_idx;
    }

    public void setName_idx(String name_idx) {
        this.name_idx = name_idx;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public int getPort() {
        return port;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public String getQueryIp() {
        return queryIp;
    }

    public void setQueryIp(String queryIp) {
        this.queryIp = queryIp;
    }

    public int getQueryPort() {
        return queryPort;
    }

    public void setQueryPort(int queryPort) {
        this.queryPort = queryPort;
    }

    public int getRegion() {
        return region;
    }

    public void setRegion(int region) {
        this.region = region;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public int getIdx() {
        return idx;
    }

    public void setIdx(int idx) {
        this.idx = idx;
    }

    @Override
    public String toString() {
        return "GameServer [id=" + id + ", name=" + name + ", description="
                + description + ", ip=" + ip + ", port=" + port + ", queryIp="
                + queryIp + ", queryPort=" + queryPort + ", region=" + region
                + ", status=" + status + ", startDate=" + startDate + ", idx="
                + idx + ", name_idx=" + name_idx +"]";
    }


}
