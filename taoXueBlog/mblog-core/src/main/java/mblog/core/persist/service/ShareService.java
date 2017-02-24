package mblog.core.persist.service;

import mblog.core.data.Tag;
import mblog.core.persist.dao.ShareDao;
import mblog.core.persist.entity.Share;

import java.util.List;

/**
 * Created by Administrator on 2017/1/22 0022.
 */
public interface ShareService {

    /**
     * 查询所有的
     * @return
     */
    List<Share> getShares();
}
