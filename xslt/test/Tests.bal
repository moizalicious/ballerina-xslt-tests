package xslt.test;

import xslt.util;

function runAllTests () {
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
}

function testTransformToXML () {
    xml x = util:readFileAsXML("xslt/res/ToXML.xml");
    xml xsl = util:readFileAsXML("xslt/res/ToXML.xsl");
    xml result = x.performXSLT(xsl);
    println(result);
}

function testTransformToXMLNoRoot () {
    xml x = util:readFileAsXML("xslt/res/ToXMLNoRoot.xml");
    xml xsl = util:readFileAsXML("xslt/res/ToXMLNoRoot.xsl");
    xml result = x.performXSLT(xsl);
    println(result);
}

function testTransformToHTML () {
    xml x = util:readFileAsXML("xslt/res/ToHTML.xml");
    xml xsl = util:readFileAsXML("xslt/res/ToHTML.xsl");
    xml result = x.performXSLT(xsl);
    println(result);
}

function testTransformToHTMLNoRoot () {
    xml x = util:readFileAsXML("xslt/res/ToHTMLNoRoot.xml");
    xml xsl = util:readFileAsXML("xslt/res/ToHTMLNoRoot.xsl");
    xml result = x.performXSLT(xsl);
    println(result);
}

function testTransformToText () {
    xml x = util:readFileAsXML("xslt/res/ToText.xml");
    xml xsl = util:readFileAsXML("xslt/res/ToText.xsl");
    xml result = x.performXSLT(xsl);
    println(result);
}

function testTransformTwoValidRelated () {
    xml x = util:readFileAsXML("xslt/res/TwoValidRelated.xml");
    xml xsl = util:readFileAsXML("xslt/res/TwoValidRelated.xsl");
    xml result = x.performXSLT(xsl);
    println(result);
}

function testTransformTwoValidUnrelated () {
    xml x = util:readFileAsXML("xslt/res/TwoValidUnrelated.xml");
    xml xsl = util:readFileAsXML("xslt/res/TwoValidUnrelated.xsl");
    xml result = x.performXSLT(xsl);
    println(result);
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
