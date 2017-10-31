package org.ballerinalang.test.whenTransforming;

import ballerina.file;
import ballerina.io;

function runTransformationInPackage (string filePath) {

    io:ByteChannel byteChannel;
    blob bytes;
    int numberOfBytes;
    string s;

    file:File xmlFile = {path: filePath + "/input.xml"};
    byteChannel = xmlFile.openChannel("r");
    bytes, numberOfBytes = byteChannel.readBytes(100000);
    s = bytes.toString("UTF-8");
    var xmlIn, _ = <xml> s;

    file:File xslFile = {path: filePath + "/input.xsl"};
    byteChannel = xslFile.openChannel("r");
    bytes, numberOfBytes = byteChannel.readBytes(100000);
    s = bytes.toString("UTF-8");
    var xslIn, _ = <xml> s;

    xml xmlOut = xmlIn.performXSLT(xslIn);
    println(xmlOut);
}
