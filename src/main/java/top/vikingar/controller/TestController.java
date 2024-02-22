package top.vikingar.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author vikingar
 * @time 2024/2/22 21:25
 * @description
 */
@RestController
public class TestController {

    @GetMapping("test")
    public String test() {
        return "test jenkins";
    }

}
