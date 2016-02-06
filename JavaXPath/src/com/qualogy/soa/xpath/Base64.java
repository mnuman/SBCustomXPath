package com.qualogy.soa.xpath;
import oracle.soa.common.util.Base64Decoder;
import oracle.soa.common.util.Base64Encoder;
import javax.xml.xpath.XPathFunctionException;

public class Base64 {
   
    /**
        * Apply base64 encoding.
        * @param input
        * @return input after encoding into Base64
        * @throws XPathFunctionException on failure
        */  
     public static String encodeBase64(final String input) throws XPathFunctionException{
        String enc = null;
        try {
            enc = Base64Encoder.encode(input);
        } catch(Exception exc) {
            throw new XPathFunctionException("Failed to Base64-encode your input string");
        }
       return enc;
     }    
    
    /**
        * Apply base64 decoding.
        * @param input
        * @return input after decoding from Base64
        * @throws XPathFunctionException on failure
        */  
     public static String decodeBase64(final String input) throws XPathFunctionException{
        String dec = null;
        try {
            dec = Base64Decoder.decode(input);
        } catch(Exception exc) {
            throw new XPathFunctionException("Failed to Base64-decode your input string");
        }
       return dec;
     }     
}
