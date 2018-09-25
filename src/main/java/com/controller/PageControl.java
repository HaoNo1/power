package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zhangyuxuan on 2018/5/22.
 */
@Controller
public class PageControl {
    public static String exeCmd(String commandStr) {
        System.out.println(commandStr);
        BufferedReader br = null;
        StringBuilder sb = new StringBuilder();
        try {
            Process p = Runtime.getRuntime().exec(commandStr);
            br = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line = null;
            while ((line = br.readLine()) != null) {
                sb.append(line + "\n");
            }
            System.out.println(sb.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally
        {
            if (br != null)
            {
                try {
                    br.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return sb.toString();
        }
    }
    @RequestMapping("retrieval.do")
    public String retrieval(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        session.setAttribute("page",1);
        session.setAttribute("pageSource","../recogImages/test_1.jpg");
        String path=request.getSession().getServletContext().getRealPath("/");
        path += "recogImages";
        File file = new File(path);
        if(!file.exists()){
            System.out.println("路径不存在");
        }
        else{
            File[] files=file.listFiles();
            int count = files.length;
            session.setAttribute("pageCount",count);
            List<String> list=new ArrayList<>();
            for(int i=1;i<=count;i++){
                list.add("../recogImages/test_"+i+".jpg");
            }
            session.setAttribute("pages",list);
            System.out.println(list.size());
        }
        return "retrieval";
    }
    @RequestMapping("retrieval1.do")
    public String retrieval1(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        session.setAttribute("page",1);
        session.setAttribute("pageSource","../sarImg/sar_1.png");
        String path=request.getSession().getServletContext().getRealPath("/");
        path += "sarImg";
        File file = new File(path);
        if(!file.exists()){
            System.out.println("路径不存在");
        }
        else{
            File[] files=file.listFiles();
            int count = files.length;
            session.setAttribute("pageCount",count);
            List<String> list=new ArrayList<>();
            for(int i=1;i<=count;i++){
                list.add("../sarImg/sar_"+i+".png");
            }
            session.setAttribute("pages",list);
            System.out.println(list.size());
        }
        return "crawl_sar";
    }

    @RequestMapping("goFront.do")
    public String gofront(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        int page = (int)session.getAttribute("page");
        if(page > 1) {
            page -= 1;
            String source = "../recogImages/test_" + page + ".jpg";
            session.setAttribute("page", page);
            session.setAttribute("pageSource", source);
            session.setAttribute("type","");
            session.setAttribute("rate","");
        }
        return "retrieval";
    }

    @RequestMapping("goBack.do")
    public String goback(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        int page = (int)session.getAttribute("page");
        int count = (int)session.getAttribute("pageCount");
        if(page < count) {
            page += 1;
            String source = "../recogImages/test_" + page + ".jpg";
            session.setAttribute("page", page);
            session.setAttribute("pageSource", source);
            session.setAttribute("type","");
            session.setAttribute("rate","");
        }
        return "retrieval";
    }
    @RequestMapping("recogwords.do")
    public String recogwords(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        session.setAttribute("page",1);
        session.setAttribute("pageSource","../recogwordsImg/test_1.jpg");
        String path=request.getSession().getServletContext().getRealPath("/");
        path += "recogwordsImg";
        System.out.println(path);
        File file = new File(path);
        if(!file.exists()){
            System.out.println("路径不存在");
        }
        else{
            File[] files=file.listFiles();
            int count = files.length;
            session.setAttribute("pageCount",count);
            List<String> list=new ArrayList<>();
            for(int i=1;i<=count;i++){
                list.add("../recogwordsImg/test_"+i+".jpg");
            }
            session.setAttribute("pages",list);
            System.out.println(list.size());
        }
        return "recogwords";
    }
    @RequestMapping("goFront1.do")
    public String gofront1(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        int page = (int)session.getAttribute("page");
        if(page > 1) {
            page -= 1;
            String source = "../recogwordsImg/test_" + page + ".jpg";
            session.setAttribute("page", page);
            session.setAttribute("pageSource", source);
            session.setAttribute("type","");
            session.setAttribute("rate","");
        }
        return "recogwords";
    }

    @RequestMapping("goBack1.do")
    public String goback1(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        int page = (int)session.getAttribute("page");
        int count = (int)session.getAttribute("pageCount");
        if(page < count) {
            page += 1;
            String source = "../recogwordsImg/test_" + page + ".jpg";
            session.setAttribute("page", page);
            session.setAttribute("pageSource", source);
            session.setAttribute("type","");
            session.setAttribute("rate","");
        }
        return "recogwords";
    }
    @RequestMapping("Jrecog.do")
    public String jrecog(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        session.setAttribute("Jpage",1);
        session.setAttribute("JpageSource","../JrecogImages/test_1.jpg");
        session.setAttribute("JpageRecog","../Jrecog/1_recog.jpg");
        session.setAttribute("Jtag2", "0");

        String path=request.getSession().getServletContext().getRealPath("/");
        path += "JrecogImages";
        File file = new File(path);
        if(!file.exists()){
            System.out.println("路径不存在");
        }
        else{
            File[] files=file.listFiles();
            int count = 0;
            for(int i=0;i<files.length;i++){
                if(files[i].getName().indexOf("test") !=-1){
                    count++;
                }
            }
            session.setAttribute("JpageCount",count);
            System.out.println(count);
            List<String> list=new ArrayList<>();
            for(int i=1;i<=count;i++){
                list.add("../JrecogImages/test_"+i+".jpg");
            }
            session.setAttribute("Jpages",list);
        }

        path=request.getSession().getServletContext().getRealPath("/");
        int page0 = 1;
        String page = "test_"+page0+".jpg";
        //exeCmd("sh /Users/zhangyuxuan/Desktop/recog.sh");
        String result=exeCmd("python "+path+"python/Jrecog.py "+path+" "+page);
        String[] results = result.split("\n");
        if(results.length >=2) {
            session.setAttribute("Jname", results[0]);
            session.setAttribute("Jlatitude", results[1]);
            session.setAttribute("Jlongtitude", results[2]);
            session.setAttribute("Jrate", results[3]);
            session.setAttribute("Jtag", "1");
        }
        else{
            session.setAttribute("Jname", "");
            session.setAttribute("Jlatitude", "");
            session.setAttribute("Jlongtitude", "");
            session.setAttribute("Jrate", "");
            session.setAttribute("Jtag", "0");
        }

        return "Jrecog";
    }

    @RequestMapping("JgoFront.do")
    public String Jgofront(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        int page = (int)session.getAttribute("Jpage");
        if(page > 1) {
            page -= 1;
            String source = "../JrecogImages/test_" + page + ".jpg";
            String recog = "../Jrecog/" + page + "_recog"+".jpg";
            session.setAttribute("JpageRecog", recog);
            session.setAttribute("Jpage", page);
            session.setAttribute("JpageSource", source);

            String path=request.getSession().getServletContext().getRealPath("/");
            int page0 = page;
            String pagex = "test_"+page0+".jpg";
            //exeCmd("sh /Users/zhangyuxuan/Desktop/recog.sh");
            String result=exeCmd("python "+path+"python/Jrecog.py "+path+" "+pagex);
            String[] results = result.split("\n");
            if(page >= 12){
                session.setAttribute("Jtag2", "1");
            }
            else{
                session.setAttribute("Jtag2", "0");
            }
            if(results.length >=2) {
                session.setAttribute("Jname", results[0]);
                session.setAttribute("Jlatitude", results[1]);
                session.setAttribute("Jlongtitude", results[2]);
                session.setAttribute("Jrate", results[3]);
                session.setAttribute("Jtag", "1");
            }
            else{
                session.setAttribute("Jname", "");
                session.setAttribute("Jlatitude", "");
                session.setAttribute("Jlongtitude", "");
                session.setAttribute("Jrate", "");
                session.setAttribute("Jtag", "0");
            }
        }
        return "Jrecog";
    }

    @RequestMapping("JgoBack.do")
    public String Jgoback(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        int page = (int)session.getAttribute("Jpage");
        int count = (int)session.getAttribute("JpageCount");
        if(page < count) {
            page += 1;
            String source = "../JrecogImages/test_" + page + ".jpg";
            String recog = "../Jrecog/" + page + "_recog"+".jpg";
            session.setAttribute("JpageRecog", recog);
            session.setAttribute("Jpage", page);
            session.setAttribute("JpageSource", source);

            String path=request.getSession().getServletContext().getRealPath("/");
            int page0 = page;
            String pagex = "test_"+page0+".jpg";
            //exeCmd("sh /Users/zhangyuxuan/Desktop/recog.sh");
            String result=exeCmd("python "+path+"python/Jrecog.py "+path+" "+pagex);
            String[] results = result.split("\n");
            if(page >= 12){
                session.setAttribute("Jtag2", "1");
            }
            else{
                session.setAttribute("Jtag2", "0");
            }
            if(results.length >=2) {
                session.setAttribute("Jname", results[0]);
                session.setAttribute("Jlatitude", results[1]);
                session.setAttribute("Jlongtitude", results[2]);
                session.setAttribute("Jrate", results[3]);
                session.setAttribute("Jtag", "1");
            }
            else{
                session.setAttribute("Jname", "");
                session.setAttribute("Jlatitude", "");
                session.setAttribute("Jlongtitude", "");
                session.setAttribute("Jrate", "");
                session.setAttribute("Jtag", "0");
            }
        }
        return "Jrecog";
    }

    @RequestMapping("Irecog.do")
    public String irecog(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        session.setAttribute("Ipage",1);
        session.setAttribute("IpageSource","../IrecogImages/test_1.jpg");
        session.setAttribute("IpageRecog","../Irecog/1_recog.jpg");
        session.setAttribute("Itag2", "0");

        String path=request.getSession().getServletContext().getRealPath("/");
        path += "IrecogImages";
        File file = new File(path);
        if(!file.exists()){
            System.out.println("路径不存在");
        }
        else{
            File[] files=file.listFiles();
            int count = 0;
            for(int i=0;i<files.length;i++){
                if(files[i].getName().indexOf("test") !=-1){
                    count++;
                }
            }
            session.setAttribute("IpageCount",count);
            System.out.println(count);
            List<String> list=new ArrayList<>();
            for(int i=1;i<=count;i++){
                list.add("../IrecogImages/test_"+i+".jpg");
            }
            session.setAttribute("Ipages",list);
        }

        path=request.getSession().getServletContext().getRealPath("/");
        int page0 = 1;
        String page = "test_"+page0+".jpg";
        //exeCmd("sh /Users/zhangyuxuan/Desktop/recog.sh");
        String result=exeCmd("python "+path+"python/Irecog.py "+path+" "+page);
        String[] results = result.split("\n");
        if(results.length >=2) {
            session.setAttribute("Iname", results[0]);
            session.setAttribute("Ilatitude", results[1]);
            session.setAttribute("Ilongtitude", results[2]);
            session.setAttribute("Itype", results[3]);
            session.setAttribute("Irate", results[4]);
            session.setAttribute("Itag", "1");
        }
        else{
            session.setAttribute("Iname", "");
            session.setAttribute("Ilatitude", "");
            session.setAttribute("Ilongtitude", "");
            session.setAttribute("Itype", "");
            session.setAttribute("Irate", "");
            session.setAttribute("Itag", "0");
        }

        return "Irecog";
    }

    @RequestMapping("IgoFront.do")
    public String Igofront(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        int page = (int)session.getAttribute("Ipage");
        if(page > 1) {
            page -= 1;
            String source = "../IrecogImages/test_" + page + ".jpg";
            String recog = "../Irecog/" + page + "_recog"+".jpg";
            session.setAttribute("IpageRecog", recog);
            session.setAttribute("Ipage", page);
            session.setAttribute("IpageSource", source);

            String path=request.getSession().getServletContext().getRealPath("/");
            int page0 = page;
            String pagex = "test_"+page0+".jpg";
            //exeCmd("sh /Users/zhangyuxuan/Desktop/recog.sh");
            String result=exeCmd("python "+path+"python/Irecog.py "+path+" "+pagex);
            String[] results = result.split("\n");
            if(page >= 12){
                session.setAttribute("Itag2", "1");
            }
            else{
                session.setAttribute("Itag2", "0");
            }
            if(results.length >=2) {
                session.setAttribute("Iname", results[0]);
                session.setAttribute("Ilatitude", results[1]);
                session.setAttribute("Ilongtitude", results[2]);
                session.setAttribute("Itype", results[3]);
                session.setAttribute("Irate", results[4]);
                session.setAttribute("Itag", "1");
            }
            else{
                session.setAttribute("Iname", "");
                session.setAttribute("Ilatitude", "");
                session.setAttribute("Ilongtitude", "");
                session.setAttribute("Itype", "");
                session.setAttribute("Irate", "");
                session.setAttribute("Itag", "0");
            }
        }
        return "Irecog";
    }

    @RequestMapping("IgoBack.do")
    public String Igoback(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        int page = (int)session.getAttribute("Ipage");
        int count = (int)session.getAttribute("IpageCount");
        if(page < count) {
            page += 1;
            String source = "../IrecogImages/test_" + page + ".jpg";
            String recog = "../Irecog/" + page + "_recog"+".jpg";
            session.setAttribute("IpageRecog", recog);
            session.setAttribute("Ipage", page);
            session.setAttribute("IpageSource", source);

            String path=request.getSession().getServletContext().getRealPath("/");
            int page0 = page;
            String pagex = "test_"+page0+".jpg";
            //exeCmd("sh /Users/zhangyuxuan/Desktop/recog.sh");
            String result=exeCmd("python "+path+"python/Irecog.py "+path+" "+pagex);
            String[] results = result.split("\n");
            if(page >= 12){
                session.setAttribute("Itag2", "1");
            }
            else{
                session.setAttribute("Itag2", "0");
            }
            if(results.length >=2) {
                session.setAttribute("Iname", results[0]);
                session.setAttribute("Ilatitude", results[1]);
                session.setAttribute("Ilongtitude", results[2]);
                session.setAttribute("Itype", results[3]);
                session.setAttribute("Irate", results[4]);
                session.setAttribute("Itag", "1");
            }
            else{
                session.setAttribute("Iname", "");
                session.setAttribute("Ilatitude", "");
                session.setAttribute("Ilongtitude", "");
                session.setAttribute("Itype", "");
                session.setAttribute("Irate", "");
                session.setAttribute("Itag", "0");
            }
        }
        return "Irecog";
    }
}
