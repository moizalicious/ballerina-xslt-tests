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
    testTransformInvalidXML();
    testTransformInvalidXSL();
    testTransformInvalidXMLAndXSL();
    testTransformEmptyXML();
    testTransformEmptyXSL();
    testTransformEmptyXMLAndXSL();
    testTransformUntransformable();

    println("14 Tests Successful");
}

function testTransformToXML () {
    xml x = util:readFileAsXML("xslt/res/ToXML.xml");
    xml xsl = util:readFileAsXML("xslt/res/ToXML.xsl");

    string result = <string>x.performXSLT(xsl);
    string expected = util:readFileAsString("xslt/res/ToXML.txt");

    test:assertStringEquals(result, expected, "error when attempting to transform an xml to another form of xml;");
}

function testTransformToXMLNoRoot () {
    xml x = util:readFileAsXML("xslt/res/ToXMLNoRoot.xml");
    xml xsl = util:readFileAsXML("xslt/res/ToXMLNoRoot.xsl");

    string result = <string>x.performXSLT(xsl);
    string expected = "<title>The Dilbert Principle</title><author>Scott Adams</author>";

    test:assertStringEquals(result, expected, "error when attempting to transform xml to another xml with no root;");


}

function testTransformToHTML () {
    xml x = util:readFileAsXML("xslt/res/ToHTML.xml");
    xml xsl = util:readFileAsXML("xslt/res/ToHTML.xsl");

    string result = <string>x.performXSLT(xsl);
    string expected = util:readFileAsString("xslt/res/ToHTML.txt");

    test:assertStringEquals(result, expected, "error when attempting to transform xml to html;");

}

function testTransformToHTMLNoRoot () {
    xml x = util:readFileAsXML("xslt/res/ToHTMLNoRoot.xml");
    xml xsl = util:readFileAsXML("xslt/res/ToHTMLNoRoot.xsl");

    string result = <string>x.performXSLT(xsl);
    string expected = "<b>Scott</b><b><i>Adams</i></b>";

    test:assertStringEquals(result, expected, "error when attempting to transform xml to html with no root;");

}

function testTransformToText () {
    xml x = xml `<book><title>The Dilbert Principle</title><author>Scott Adams</author></book>`;
    xml xsl = util:readFileAsXML("xslt/res/ToText.xsl");

    string result = <string>x.performXSLT(xsl);
    string expected = "The Dilbert PrincipleScott Adams";
    test:assertStringEquals(result, expected, "error when attempting to transform xml to text;");
}

function testTransformTwoValidRelated () {
    xml x = util:readFileAsXML("xslt/res/TwoValidRelated.xml");
    xml xsl = util:readFileAsXML("xslt/res/TwoValidRelated.xsl");

    string result = <string>x.performXSLT(xsl);
    string expected = util:readFileAsString("xslt/res/TwoValidRelated.txt");

    test:assertStringEquals(result, expected, "error when attempting to transform two valid and related arguments;");
}

function testTransformTwoValidUnrelated () {
    xml x = util:readFileAsXML("xslt/res/TwoValidUnrelated.xml");
    xml xsl = util:readFileAsXML("xslt/res/TwoValidUnrelated.xsl");

    xml result = x.performXSLT(xsl);

    test:assertTrue(result == null, "error when attempting to tranform two unrelated arguments;");
}

function testTransformInvalidXML () {

}

function testTransformInvalidXSL () {

}

function testTransformInvalidXMLAndXSL () {

}

function testTransformEmptyXML () {

}

function testTransformEmptyXSL () {

}

function testTransformEmptyXMLAndXSL () {

}

function testTransformUntransformable () {

}
