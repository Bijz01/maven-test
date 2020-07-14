package com.jz.ops;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JingZhaoController {

    @RequestMapping("jz")
    public String toResponse(String name){
        return name+"hello 京钊";
    }
}
