package com.redis;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import redis.clients.jedis.*;

import java.util.ArrayList;
import java.util.List;

@Component("client")
//@Configuration("client")
public class RedisClient {

    //两种操作方式：

    //非切片池
    private Jedis jedis;
    private JedisPool jedisPool;

    //切片池
    private ShardedJedis shardedJedis;
    private ShardedJedisPool shardedJedisPool;

//    public RedisClient(){
//        initPool();
//        initShardedPool();
//        jedis = jedisPool.getResource();
//    }

    //使用单个节点的情况
    @Bean(name = "jedis")
    public Jedis initPool() {
        JedisPoolConfig config = new JedisPoolConfig();
        config.setMaxIdle(5);
        config.setTestOnBorrow(false);
        jedisPool = new JedisPool(config, "120.79.25.111", 6379);
        jedis = jedisPool.getResource();
        return jedis;
    }

    //使用切片池的情况
    @Bean(name = "shardedJedis")
    public ShardedJedis initShardedPool() {
        JedisPoolConfig config = new JedisPoolConfig();
        config.setMaxIdle(5);
        config.setTestOnBorrow(false);

        //添加redis的节点，redis集群的情况
        List<JedisShardInfo> shards = new ArrayList<>();
        shards.add(new JedisShardInfo("120.79.25.111", 6379));
        shardedJedisPool = new ShardedJedisPool(config, shards);
        shardedJedis = shardedJedisPool.getResource();
        return shardedJedis;
    }


    public Jedis getJedis() {
        return this.jedis;
    }

    public ShardedJedis getShardedJedis() {
        return this.shardedJedis;
    }

}
