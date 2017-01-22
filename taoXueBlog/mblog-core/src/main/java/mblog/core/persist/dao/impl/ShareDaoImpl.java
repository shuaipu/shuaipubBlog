package mblog.core.persist.dao.impl;

import mblog.core.persist.dao.ShareDao;
import mblog.core.persist.entity.Share;
import mtons.modules.persist.impl.BaseRepositoryImpl;
import org.hibernate.Criteria;

import java.util.List;

/**
 * Created by Administrator on 2017/1/22 0022.
 */
public class ShareDaoImpl extends BaseRepositoryImpl<Share> implements ShareDao{

    @Override
    public List<Share> getShares() {
        Criteria c = createCriteria();
        List<Share> shareList= c.list();
        return shareList;
    }
}
