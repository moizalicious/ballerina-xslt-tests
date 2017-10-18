package org.ballerinalang.test.whenTransforming;

import ballerina.lang.system;
import ballerina.lang.xmls;

function main (string[] args) {
    system:println("Case 1 - Converting XML to another form of XML (Single-Root output)");
    runTransformationInPackage("resources/case1");

    system:println("\nCase 2 - Converting XML to HTML (Single-Root output)");
    runTransformationInPackage("resources/case2");

    system:println("\nCase 3 - Converting XML to plain text");
    runTransformationInPackage("resources/case3");

    system:println("\nCase 4 - Converting XML to another form of XML (Multi-Root output)");
    runTransformationInPackage("resources/case4");

    system:println("\nCase 5 - Converting XML to HTML (Multi-Root output)");
    runTransformationInPackage("resources/case5");

    system:println("\nCase 6 - Entering 2 valid & related parameters");
    runTransformationInPackage("resources/case6");
    //
    //system:println("\nCase 7 - Entering invalid XML and valid XSL where both are related");
    //runTransformationInPackage("resources/case7");
    //
    //system:println("\nCase 8 - Entering valid XML and invalid XSL where both are related");
    //runTransformationInPackage("resources/case8");
    //
    //system:println("\nCase 9 - Entering invalid XML & XSL which are related");
    //runTransformationInPackage("resources/case9");
    //
    //system:println("\nCase 10 - Entering valid XML & XSL which are not related");
    //runTransformationInPackage("resources/case10");
    //
    //system:println("\nCase 11 - Entering a valid XML input with empty XSL");
    //xml x1 = xmls:parse("<book>Harry Potter</book>");
    //xml x2 = xmls:parse("");
    //xml out1 = xmls:transformXML(x1, x2);
    //system:println(out1);
    //
    //system:println("\nCase 12 - Entering an empty XML input with a valid XSL");
    //xml x3 = xmls:parse("");
    //xml x4 = xmls:parse("<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\"></xsl:stylesheet>");
    //xml out2 = xmls:transformXML(x3, x4);
    //system:println(out2);
    //
    //system:println("\n Case 13 - Entering an empty XML & XSL value");
    //xml x5 = xmls:parse("");
    //xml x6 = xmls:parse("");
    //xml out3 = xmls:transformXML(x5, x6);
    //system:println(out3);
    //
    //system:println("\n Case 14 - Entering an valid but untransformable XML & XSL values");
    //xml x7 = xmls:parse("This is a plain text XML node");
    //xml x8 = xmls:parse("This is a plain text XML node");
    //xml out4 = xmls:transformXML(x7, x8);
    //system:println(out4);

}
