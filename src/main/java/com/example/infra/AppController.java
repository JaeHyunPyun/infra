package com.example.infra;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AppController {

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    @GetMapping("/redis")
    public String home() {
        // Redis에 값 저장
        redisTemplate.opsForValue().set("abc", "def");

        // Redis에서 값 가져오기
        String value = (String)redisTemplate.opsForValue().get("abc");

        return "Value from Redis: " + value;
    }

    @GetMapping("/")
    public String hello() {
        return "changing docker hub repo public to private";
    }

    @GetMapping("/api/login")
    public String login() {
        return "login connected!";
    }

    @GetMapping("/search")
    public String search() {
        return "search connected!";
    }

}

