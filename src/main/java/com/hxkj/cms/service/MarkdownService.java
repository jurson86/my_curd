package com.hxkj.cms.service;

import com.vladsch.flexmark.ast.Node;
import com.vladsch.flexmark.html.HtmlRenderer;
import com.vladsch.flexmark.parser.Parser;
import com.vladsch.flexmark.util.options.MutableDataSet;

/**
 * @author chuang
 * @date 2018-06-20 18:56:48
 */
public class MarkdownService {

    private final static MutableDataSet options = new MutableDataSet();
    private final static Parser parser = Parser.builder(options).build();
    private final static HtmlRenderer renderer = HtmlRenderer.builder(options).build();

    public final static String parse(String markdown) {
        Node document = parser.parse(markdown);
        String html = renderer.render(document);
        return html;
    }

    public static void main(String[] args) {

        System.out.println(parse("### 你好"));
        System.out.println(parse("## 你是"));
        System.out.println(parse("```python\n" +
                "@requires_authorization\n" +
                "class SomeClass:\n" +
                "    pass\n" +
                "\n" +
                "if __name__ == '__main__':\n" +
                "    # A comment\n" +
                "    print 'hello world'\n" +
                "```"));
    }
}
