package xslt.test;

import xslt.util;
import ballerina.test;

public function runTests () {
    testTransformToXML();
    testTransformToXMLNoRoot();
    testTransformToHTML();
    testTransformToHTMLNoRoot();
    testTransformToText();
    testTransformTwoValidRelated();
    testTransformTwoValidUnrelated();
    testTransformEmptyXML();
    testTransformEmptyXSL();
    testTransformEmptyXMLAndXSL();
    testTransformUntransformable();
    testTransformWithNoSingletonArgs();

    println("14 Tests Successful");
}

function testTransformToXML () {
    xml x = util:readFileAsXML("xslt/res/ToXML.xml");
    xml xsl = util:readFileAsXML("xslt/res/ToXML.xsl");

    string result = <string>x.performXSLT(xsl);
    string expected = util:readFileAsString("xslt/res/ToXML.txt");

    test:assertStringEquals(result, expected, "error when attempting to transform an xml to another form of xml;");

    println(result);
    println("");
}

function testTransformToXMLNoRoot () {
    xml x = util:readFileAsXML("xslt/res/ToXMLNoRoot.xml");
    xml xsl = util:readFileAsXML("xslt/res/ToXMLNoRoot.xsl");

    string result = <string>x.performXSLT(xsl);
    string expected = "<title>The Dilbert Principle</title><author>Scott Adams</author>";

    test:assertStringEquals(result, expected, "error when attempting to transform xml to another xml with no root;");

    println(result);
    println("");
}

function testTransformToHTML () {
    xml x = util:readFileAsXML("xslt/res/ToHTML.xml");
    xml xsl = util:readFileAsXML("xslt/res/ToHTML.xsl");

    string result = <string>x.performXSLT(xsl);
    string expected = util:readFileAsString("xslt/res/ToHTML.txt");

    test:assertStringEquals(result, expected, "error when attempting to transform xml to html;");

    println(result);
    println("");
}

function testTransformToHTMLNoRoot () {
    xml x = util:readFileAsXML("xslt/res/ToHTMLNoRoot.xml");
    xml xsl = util:readFileAsXML("xslt/res/ToHTMLNoRoot.xsl");

    string result = <string>x.performXSLT(xsl);
    string expected = "<b>Scott</b><b><i>Adams</i></b>";

    test:assertStringEquals(result, expected, "error when attempting to transform xml to html with no root;");

    println(result);
    println("");
}

function testTransformToText () {
    xml x = xml `<book><title>The Dilbert Principle</title><author>Scott Adams</author></book>`;
    xml xsl = util:readFileAsXML("xslt/res/ToText.xsl");

    string result = <string>x.performXSLT(xsl);
    string expected = "The Dilbert PrincipleScott Adams";

    test:assertStringEquals(result, expected, "error when attempting to transform xml to text;");

    println(result);
    println("");
}

function testTransformTwoValidRelated () {
    xml x = util:readFileAsXML("xslt/res/TwoValidRelated.xml");
    xml xsl = util:readFileAsXML("xslt/res/TwoValidRelated.xsl");

    string result = <string>x.performXSLT(xsl);
    string expected = util:readFileAsString("xslt/res/TwoValidRelated.txt");

    test:assertStringEquals(result, expected, "error when attempting to transform two valid and related arguments;");

    println(result);
    println("");
}

function testTransformTwoValidUnrelated () {
    xml x = util:readFileAsXML("xslt/res/TwoValidUnrelated.xml");
    xml xsl = util:readFileAsXML("xslt/res/TwoValidUnrelated.xsl");

    xml result = x.performXSLT(xsl);

    test:assertTrue(result == null, "error when attempting to tranform two unrelated arguments;");

    println(result);
    println("");
}

function testTransformEmptyXML () {
    xml x = null;
    xml xsl = util:readFileAsXML("xslt/res/TwoValidUnrelated.xsl");

    try {
        xml result = x.performXSLT(xsl);
    } catch (error e) {
        println(e.msg);
        println("");
    }
}

function testTransformEmptyXSL () {
    xml x = util:readFileAsXML("xslt/res/TwoValidUnrelated.xml");
    xml xsl = null;

    try {
        xml result = x.performXSLT(xsl);
    } catch (error e) {
        println(e.msg);
        println("");
    }
}

function testTransformEmptyXMLAndXSL () {
    xml x = null;
    xml xsl = null;

    try {
        xml result = x.performXSLT(xsl);
    } catch (error e) {
        println(e.msg);
        println("");
    }
}

function testTransformUntransformable () {
    xml x = xml `<xmlelement></xmlelement>`;
    xml xsl = xml `<xslelement></xslelement>`;

    try {
        xml result = x.performXSLT(xsl);
    } catch (error e) {
        println(e.msg);
        println("");
    }
}

function testTransformWithNoSingletonArgs() {
    xml x = xml `<root><element1>This is element 1</element1><element2>This is element 2</element2></root>`;
    x = x.children().elements();
    xml xsl = util:readFileAsXML("xslt/res/TwoValidUnrelated.xml");
    try {
        xml result = x.performXSLT(xsl);
    } catch (error e) {
        println(e.msg);
        println("");
    }
}
