package kr.ac.kopo.jsforum.model;


import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class Reply {
    private int replyNum;
    private int replyWriter;
    private int replyFreeNum;
    private String replyContent;
    private String id;
    private Date regDate;

}
