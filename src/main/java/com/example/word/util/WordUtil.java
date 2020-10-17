package com.example.word.util;

import com.deepoove.poi.XWPFTemplate;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;

/**
 * word工具类
 * Poi-tl模板引擎官方文档：http://deepoove.com/poi-tl/
 */
public class WordUtil {

    /**
     * 替换并下载文件
     * @param out 输出文件流
     * @param inputStream 输入文件流
     * @param paramMap 替换参数map集合
     */
    public static void downloadWord(OutputStream out, InputStream inputStream, Map<String, Object> paramMap) {
        // 核心，替换操作
        // 读取模板templatePath并将paramMap的内容填充进模板，即编辑模板(compile)+渲染数据(render)
        XWPFTemplate template = XWPFTemplate.compile(inputStream).render(paramMap);
        try {
            // 将填充之后的模板写入filePath，将template写到OutputStream中
            template.write(out);
            out.flush();
            out.close();
            template.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
