package com.x8game.fire.gms.service;

import com.x8game.fire.gms.model.GameServer;
import com.bstek.dorado.data.provider.Criteria;
import com.bstek.dorado.data.provider.Page;

import java.util.List;

/**
 * @author Administrator
 */
public interface GameServerService {

    void load(Page<GameServer> page, Criteria criteria);

    void save(List<GameServer> gameServers);



}
