package mblog.core.persist.entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by Administrator on 2017/1/22 0022.
 */
public class Share {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    /** 名称 **/
    private String name;
    /** 类型 **/
    private String classtype;
    /** 跳转路径 **/
    private String hrefurl;
    /** 图片路径 **/
    private String imgurl;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getClasstype() {
        return classtype;
    }

    public void setClasstype(String classtype) {
        this.classtype = classtype;
    }

    public String getHrefurl() {
        return hrefurl;
    }

    public void setHrefurl(String hrefurl) {
        this.hrefurl = hrefurl;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }
}
