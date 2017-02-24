package mblog.web.controller.desk.share;

import mblog.core.persist.entity.Share;
import mblog.core.persist.service.ShareService;
import mblog.web.controller.BaseController;
import mblog.web.controller.desk.Views;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Administrator on 2017/1/22 0022.
 */
@Controller
public class ShareController extends BaseController{
    private Logger logger = LoggerFactory.getLogger(ShareController.class);

   /* @Autowired
    private ShareService shareService;*/

    public String view(ModelMap model){
       /* List<Share> shareList= shareService.getShares();
        model.addAttribute("shareList",shareList);*/
        return "";
    }
}
