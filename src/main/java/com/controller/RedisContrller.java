package com.controller;

import com.google.gson.Gson;
import com.redis.RedisClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import redis.clients.jedis.Jedis;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
public class RedisContrller {

    @Resource(name = "jedis")
    Jedis jedis;

//    @Autowired
//    RedisClient client;
//
//    @Resource(name = "client")
//    RedisClient client;

    @RequestMapping("/show/pdf.do")
    public String showPdfList(HttpServletRequest request, int page) {

        HttpSession session = request.getSession();
//        Jedis jedis = client.getJedis();
        String prefix_url = "http://www.tepco.co.jp";
        String prefix = "japan_power_";
        String pdf_url_list = prefix_url + "pdf_url_list";


        long start = (page - 1) * 10;
        long end = page * 10 - 1;
//        Jedis jedis = client.getJedis();
        List<String> result = jedis.lrange(pdf_url_list, start, end);
        session.setAttribute("pdfList", result);
        System.out.println(result);
        return new Gson().toJson(result).toString();
    }
}
