package com.controller;
import java.io.*;
import java.io.BufferedWriter;

import com.google.gson.Gson;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by zhangyuxuan on 18/4/8.
 */
@Controller
public class url implements Runnable{

    public String getErrStr() {
        return errStr;
    }
    public void setErrStr(String errStr) {
        this.errStr = errStr;
    }
    //设置读取的字符编码
    private String character = "utf-8";
    private InputStream inputStream;
    private String errStr = null;
    @Override
    public void run() {
        BufferedReader br = null;
        try {
            br = new BufferedReader(new InputStreamReader(inputStream, character));//以utf-8的编码格式去读取文件
            String line = null;
            StringBuilder sb = new StringBuilder();
            while((line = br.readLine()) != null){
                sb.append(line);
            }
            errStr = sb.toString();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            if(br != null){
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if(inputStream != null){
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

    }
    public void start(){
        Thread thread = new Thread(this);
        thread.setDaemon(true);
        thread.start();
    }

    public void ProcessUitl(InputStream inputStream) {
        this.inputStream = inputStream;
    }

    @SuppressWarnings("deprecation")
    @RequestMapping("test9.do")
    public String test9(HttpServletRequest request) throws InterruptedException {
        String path = request.getServletContext().getRealPath("");
        System.out.println(path);
        System.out.println("enter the crawler!!!");
        String exe = "python";
        String command = "url.py";
//        String num1 = "1";
//        String num2 = "2";
        String[] cmdArr = new String[] {exe, command};
        Process process;
        try {
            process = Runtime.getRuntime().exec(cmdArr);
            InputStream is = process.getInputStream();
            InputStreamReader inputStreamReader = new InputStreamReader(is);
            BufferedReader bin=new BufferedReader(inputStreamReader);
            String s = "";
            while((s=bin.readLine())!=null)
            {
                //D:/file/idea/keyanUI/src/main/webapp/json/test.json
                System.out.println("s = "+ s);
                HttpSession session = request.getSession(false);
                session.setAttribute("s",s);
                String src = "Indian.json";
                //这里需要定义一个变量，如"E:\\json\\conf.json";//把json文件写到这个目录下
                File file = new File(src);
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                try {
                    file.delete();
                    file.createNewFile();
                } catch (IOException e) {
                    e.printStackTrace();
                }

                try {
                    FileWriter fw = new FileWriter(file, true);
                    fw.write(s);
                    fw.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return "test1";
    }

}

