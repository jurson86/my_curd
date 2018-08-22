package com.hxkj.common.util;

import com.jfinal.render.FreeMarkerRender;
import com.jfinal.render.RenderException;
import freemarker.template.Template;

import java.io.IOException;
import java.io.Writer;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

/**
 * 通过freemarker渲染xml
 */
public class FreemarkerXmlRender extends FreeMarkerRender {
    private static final String CONTENT_TYPE = "text/xml; charset=" + getEncoding();

    public FreemarkerXmlRender(String view) {
        super(view);
    }

    @Override
    public void render() {
        response.setContentType(CONTENT_TYPE);

        Enumeration<String> attrs = request.getAttributeNames();
        Map root = new HashMap();
        while (attrs.hasMoreElements()) {
            String attrName = attrs.nextElement();
            root.put(attrName, request.getAttribute(attrName));
        }

        Writer writer = null;
        try {
            writer = response.getWriter();
            Template template = getConfiguration().getTemplate(view);
            template.process(root, writer);
        } catch (Exception e) {
            throw new RenderException(e);
        } finally {
            try {
                if (writer != null) {
                    writer.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}