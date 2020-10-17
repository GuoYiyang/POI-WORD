package com.example.word.controller;


import com.deepoove.poi.data.PictureRenderData;
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
     *
     * @param text1
     * @param text2
     * @param image
     * @param file
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping("/exportUserWord")
    public void exportUserWord(@RequestParam(value = "inputText1") String text1,
                               @RequestParam(value = "inputText2") String text2,
                               @RequestParam(value = "inputImage") MultipartFile image,
                               @RequestParam(value = "inputFile") MultipartFile file,
                               HttpServletRequest request,
                               HttpServletResponse response) throws IOException {
        response.setContentType("application/octet-stream");
        response.setHeader("Content-Disposition", "attachment;filename=" + new SimpleDateFormat("yyyyMMddHHmm").format(new Date()) + ".docx");

        Map<String, Object> params = new HashMap<>();
        params.put("text1", text1);
        params.put("text2", text2);
        params.put("image", new PictureRenderData(100, 100, ".jpg", image.getInputStream()));

        WordUtil.downloadWord(response.getOutputStream(), file.getInputStream(), params);
    }
}
