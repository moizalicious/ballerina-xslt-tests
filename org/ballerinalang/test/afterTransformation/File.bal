package org.ballerinalang.test.afterTransformation;

import ballerina.file;
import ballerina.io;

function getXMLFile (string filePath) (xml) {
    file:File xmlFile = {path:filePath};
    io:ByteChannel byteChannel = xmlFile.openChannel("r");
    blob bytes;
    int numberOfBytes;
    bytes, numberOfBytes = byteChannel.readBytes(100000);
    string s = bytes.toString("UTF-8");
    var x, _ = <xml>s;
    return x;
}
