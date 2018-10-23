/**
 * Copyright (c) 2011-2013, kidzhou 周磊 (zhouleib1412@gmail.com)
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.hxkj.common.util.csv;

import com.hxkj.common.util.StringUtils;
import com.jfinal.render.Render;
import com.jfinal.render.RenderException;
import org.apache.log4j.Logger;

import java.io.PrintWriter;
import java.util.List;

@SuppressWarnings("serial")
public class CsvRender extends Render {
    protected final Logger LOG = Logger.getLogger(getClass());

    private List<String> columns;
    private List<?> data;
    private String encodeType = "gbk";
    private String fileName = "default.csv";
    private List<String> headers;
    private String dateFormat = "yyyy-MM-dd HH:mm:ss";

    public CsvRender(List<String> headers, List<?> data) {
        this.headers = headers;
        this.data = data;
    }

    public static CsvRender me(List<String> headers, List<?> data) {
        return new CsvRender(headers, data);
    }

    @Override
    public void render() {
        response.reset();
        PrintWriter out = null;
        fileName = StringUtils.encodeFileName(request, fileName);
        try {
            response.setContentType("application/vnd.ms-excel;charset=" + encodeType);
            response.setHeader("Content-Disposition", "attachment;" + fileName);
            out = response.getWriter();
            CsvUtil.setDateFormat(dateFormat);
            out.write(CsvUtil.createCSV(headers, data, columns));
        } catch (Exception e) {
            LOG.error(e.getMessage(), e);
            throw new RenderException(e);
        } finally {
            if (null != out) {
                out.flush();
                out.close();
            }
        }
    }

    public CsvRender columns(List<String> columns) {
        this.columns = columns;
        return this;
    }

    public CsvRender data(List<? extends Object> data) {
        this.data = data;
        return this;
    }

    public CsvRender encodeType(String encodeType) {
        this.encodeType = encodeType;
        return this;
    }

    public CsvRender fileName(String fileName) {
        this.fileName = fileName;
        return this;
    }

    public CsvRender headers(List<String> headers) {
        this.headers = headers;
        return this;
    }

    public CsvRender dateFormat(String dateFormat) {
        this.dateFormat = dateFormat;
        return this;
    }

}
