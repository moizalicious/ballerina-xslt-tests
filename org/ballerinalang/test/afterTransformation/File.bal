package org.ballerinalang.test.afterTransformation;

import ballerina.lang.files;
import ballerina.lang.blobs;
import ballerina.lang.xmls;

function getXMLFile (string filePath) (xml) {
    files:File xmlFile = {path: filePath};
    files:open(xmlFile, "r");
    var content, n = files:read(xmlFile, 1000000);
    string s = blobs:toString(content, "utf-8");
    xml x = xmls:parse(s);
    return x;
}
