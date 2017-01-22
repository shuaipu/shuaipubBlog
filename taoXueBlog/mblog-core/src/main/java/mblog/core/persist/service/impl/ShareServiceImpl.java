package mblog.core.persist.service.impl;

import mblog.core.data.Tag;
import mblog.core.persist.dao.ShareDao;
import mblog.core.persist.service.ShareService;

import java.util.List;

/**
 * Created by Administrator on 2017/1/22 0022.
 */
public class ShareServiceImpl implements ShareService {

    private ShareDao shareDao;
    /**
     * 查询所有的
     * @return
     */
    @Override
    public List<Tag> getShares() {
        return null;
    }
}
