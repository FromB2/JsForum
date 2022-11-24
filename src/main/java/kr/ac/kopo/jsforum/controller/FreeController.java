package kr.ac.kopo.jsforum.controller;


import kr.ac.kopo.jsforum.model.Reply;
import kr.ac.kopo.jsforum.model.Free;
import kr.ac.kopo.jsforum.model.User;
import kr.ac.kopo.jsforum.pager.Pager;
import kr.ac.kopo.jsforum.service.FreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/free")
public class FreeController {
    final String path = "free/";

    @Autowired
    FreeService service;

    @RequestMapping("/list")
    public String list(Model model, Pager pager) {
        List<Free> list = service.list(pager);

        model.addAttribute("list", list);
        return path + "list";
    }

    @GetMapping("/add")
    public String add() {

        return path + "add";
    }

    @PostMapping("/add")
    public String add(Free item, @SessionAttribute User user) {
        item.setUserId(user.getId());
        service.add(item);

        return "redirect:list";
    }
    @PostMapping("/detail/{num}")
    public String replyAdd(@PathVariable int num, @SessionAttribute User user, Reply reply) {
        reply.setReplyWriter(user.getNum());
        reply.setReplyFreeNum(num);


        service.replyAdd(reply);

        return "redirect:/free/detail/" + num;
    }

    @RequestMapping("/detail/{num}")
    public String detail(@PathVariable int num, Model model) {
        Free item = service.item(num);
        model.addAttribute("item", item);

        List<Reply> replyList = service.replyList(num);
        model.addAttribute("replyList", replyList);

        return path + "detail";

    }
    @GetMapping("/detail/update/{num}")
    public String update(@PathVariable int num, Model model) {
        Free item = service.item(num);
        model.addAttribute("item", item);

        return path + "/update";
    }

    @PostMapping("/detail/update/{num}")
    public String update(@PathVariable int num, Free item) {
        item.setNum(num);
        service.update(item);

        return "redirect:../{num}";
    }


    @RequestMapping("/detail/delete/{num}")
    public String delete(@PathVariable int num) {
        service.delete(num);
        return "redirect:/free/list";
    }
}
