package org.ballerinalang.test;

import ballerina.lang.system;

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
    // TODO find a way to handle empty parameters.
    //system:println("\nCase 11 - Entering an empty XSL parameter");
    //runTransformationInPackage("resources/case11");

}
