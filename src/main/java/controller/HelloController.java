package controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author YuHan Wang
 * @date 2021/11/08 01:04
 */
@RestController
public class HelloController {
  @GetMapping("/")
  public String hello() {
    return "hello world";
  }
}
