package org.ballerinalang.test.whenTransforming;

function main (string[] args) {

    println("Case 1 - Converting XML to another form of XML (with root-element)");
    runTransformationInPackage("resources/case1");

    println("\nCase 2 - Converting XML to HTML (with root-element)");
    runTransformationInPackage("resources/case2");

    println("\nCase 3 - Converting XML to plain text");
    runTransformationInPackage("resources/case3");

    println("\nCase 4 - Converting XML to another form of XML (without root-element)");
    runTransformationInPackage("resources/case4");

    println("\nCase 5 - Converting XML to HTML (without root-element)");
    runTransformationInPackage("resources/case5");

    println("\nCase 6 - Entering 2 valid & related parameters");
    runTransformationInPackage("resources/case6");

    println("\nCase 7 - Entering valid XML & XSL which are not related");
    runTransformationInPackage("resources/case7");

    //println("\nCase 8 - Entering valid XML and invalid XSL where both are related");
    //runTransformationInPackage("resources/case8");
    //
    //println("\nCase 9 - Entering invalid XML & XSL which are related");
    //runTransformationInPackage("resources/case9");
    //
    //println("\nCase 10 - Entering invalid XML and valid XSL where both are related");
    //runTransformationInPackage("resources/case10");
    //
    //println("\nCase 11 - Entering a valid XML input with empty XSL");
    //xml x1 = xml `<book>Harry Potter</book>`;
    //xml x2 = xml ` `;
    //xml out1 = x1.performXSLT(x2);
    //println(out1);
    //
    //println("\nCase 12 - Entering an empty XML input with a valid XSL");
    //xml x3 = xml ` `;
    //xml x4 = xml `<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"></xsl:stylesheet>`;
    //xml out2 = x3.performXSLT(x4);
    //println(out2);
    //
    //println("\n Case 13 - Entering an empty XML & XSL value");
    //xml x5 = xml ` `;
    //xml x6 = xml ` `;
    //xml out3 = x5.performXSLT(x6);
    //println(out3);
    //
    //println("\n Case 14 - Entering an valid but untransformable XML & XSL values");
    //xml x7 = xml `This is a plain text XML node`;
    //xml x8 = xml `This is a plain text XML node`;
    //xml out4 = x7.performXSLT(x8);
    //println(out4);

}
