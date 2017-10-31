package org.ballerinalang.test.afterTransformation;

function main (string[] args) {
    xml x1 = getXMLFile("resources/case4/input.xml");
    xml x2 = getXMLFile("resources/case4/input.xsl");
    xml out = x1.performXSLT(x2);
    println("Is the given XML singleton: " + out.isSingleton());
}
