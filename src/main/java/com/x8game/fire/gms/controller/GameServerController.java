package com.x8game.fire.gms.controller;


import com.x8game.fire.gms.model.GameServer;
import com.x8game.fire.gms.service.GameServerService;
import com.bstek.dorado.annotation.DataProvider;
import com.bstek.dorado.annotation.DataResolver;
import com.bstek.dorado.data.provider.Criteria;
import com.bstek.dorado.data.provider.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Administrator
 */
@Controller
@Transactional(readOnly = true)
public class GameServerController {

    @Autowired
    private GameServerService gameServerService;

    @DataProvider
    public void load(Page<GameServer>page, Criteria criteria) {
        gameServerService.load(page,criteria);
    }

    @DataResolver
    @Transactional
    public void save(List<GameServer> gameServers) {
        gameServerService.save(gameServers);
    }

}
