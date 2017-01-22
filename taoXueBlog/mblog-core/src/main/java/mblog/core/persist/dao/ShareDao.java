package mblog.core.persist.dao;

import mblog.core.persist.entity.Share;
import mtons.modules.persist.BaseRepository;

import java.util.List;

/**
 * Created by Administrator on 2017/1/22 0022.
 */
public interface ShareDao extends BaseRepository<Share> {
    List<Share> getShares();
}
