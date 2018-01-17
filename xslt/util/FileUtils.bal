package xslt.util;

import ballerina.file;
import ballerina.io;

public function readFileAsString (string filePath) (string) {
    file:File file = {path:filePath};
    io:ByteChannel byteChannel = file.openChannel("r");
    blob bytes;
    bytes, _ = byteChannel.readAllBytes();
    string result = bytes.toString("UTF-8").trim();
    return result;
}

public function readFileAsXML (string filePath) (xml) {
    string fileStr = readFileAsString(filePath);
    var result, typeConversionError = <xml>fileStr;
    if (typeConversionError != null) {
        throw typeConversionError;
    }
    return result;
}
