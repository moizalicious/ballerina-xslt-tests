package org.ballerinalang.test;

import ballerina.lang.files;
import ballerina.lang.blobs;
import ballerina.lang.xmls;
import ballerina.lang.system;


function case4 () {
    string FILE_PATH = "resources/case4/";

    files:File xmlFile = {path: FILE_PATH + "input.xml"};
    files:open(xmlFile, "r");
    var content, n = files:read(xmlFile, 1000000);
    string s = blobs:toString(content, "utf-8");
    xml xmlIn = xmls:parse(s);

    files:File xslFile = {path: FILE_PATH + "input.xsl"};
    files:open(xslFile, "r");
    content, n = files:read(xslFile, 1000000);
    s = blobs:toString(content, "utf-8");
    xml xsl = xmls:parse(s);

    xml xmlOut = xmls:transformXML(xmlIn, xsl);
    system:println(xmlOut);
}
