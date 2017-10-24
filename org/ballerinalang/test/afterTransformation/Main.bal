package org.ballerinalang.test.afterTransformation;

import ballerina.lang.xmls;
import ballerina.lang.system;

function main (string[] args) {
    xml x1 = getXMLFile("resources/case4/input.xml");
    xml x2 = getXMLFile("resources/case4/input.xsl");
    xml out = xmls:transformXML(x1, x2);
    system:println("Is the given XML singleton: " + xmls:isSingleton(out));
}
