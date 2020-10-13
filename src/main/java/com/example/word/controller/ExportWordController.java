package com.example.word.controller;


import com.example.word.util.WordUtil;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;


/**
 * 导出Word
 *
 * @author Administrator
 */
@RequestMapping("/auth/exportWord/")
@RestController
public class ExportWordController {

    /**
     * 导出word首页
     */
    @RequestMapping(value = "/index")
    public ModelAndView toIndex(HttpServletRequest request) {
        return new ModelAndView("export/index");
    }

    /**
     * 用户信息处理
     * @param time
     * @param address
     * @param name
     * @param file
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping("/exportUserWord")
    public void exportUserWord(@RequestParam(value = "inputTime") String time,
                               @RequestParam(value = "inputAddress") String address,
                               @RequestParam(value = "inputName") String name,
                               @RequestParam(value = "inputFile") MultipartFile file,
                               HttpServletRequest request,
                               HttpServletResponse response) throws IOException {
        response.setContentType("application/octet-stream");
        response.setHeader("Content-Disposition", "attachment;filename=" + new SimpleDateFormat("yyyyMMddHHmm").format(new Date()) + ".docx");

        Map<String, Object> params = new HashMap<>();
        params.put("time", time);
        params.put("address", address);
        params.put("name", name);
//        params.put("picture", new PictureRenderData(120, 120, "C:\\Users\\Slimshady\\Pictures\\2b.jpg"));

        WordUtil.downloadWord(response.getOutputStream(), file.getInputStream(), params);
    }
}
