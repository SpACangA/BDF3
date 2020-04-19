package com.x8game.fire.gms.service.impl;

import com.bstek.bdf3.dorado.jpa.policy.SaveContext;
import com.bstek.bdf3.dorado.jpa.policy.impl.SmartSavePolicyAdapter;
import com.bstek.bdf3.security.orm.RoleGrantedAuthority;
import com.bstek.bdf3.security.orm.User;
import com.x8game.fire.gms.model.GameServer;
import com.x8game.fire.gms.service.GameServerService;
import com.bstek.dorado.data.provider.Criteria;
import com.bstek.dorado.data.provider.Page;
import com.bstek.bdf3.dorado.jpa.JpaUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Administrator
 */
@Service
@Transactional(readOnly = true)
public class GameServerServiceImpl implements GameServerService {

    @Override
    public void load(Page<GameServer> page, Criteria criteria) {
        JpaUtil.linq(GameServer.class).where(criteria).paging(page);
    }

    @Override
    public void save(List<GameServer> gameServers) {
        JpaUtil.save(gameServers, new SmartSavePolicyAdapter() {

            @Override
            public boolean beforeInsert(SaveContext context) {
                GameServer gameServer = context.getEntity();
//                user.setPassword(passwordEncoder.encode(user.getPassword()));
                return true;
            }

            @Override
            public boolean beforeDelete(SaveContext context) {
                GameServer gameServer = context.getEntity();
//                JpaUtil.lind(RoleGrantedAuthority.class)
//                        .equal("actorId", user.getUsername())
//                        .delete();
                return true;
            }



        });
    }
}
