xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace customxp="http://www.qualogy.com/soa/xpath";
declare namespace ns1="http://xmlns.qualogy.com/blog/mnuman/xpath/custom";
(:: import schema at "../CustomXPathFunctions.xsd" ::)

declare variable $inputRequest as element() (:: schema-element(ns1:CustomXPathRequest) ::) external;
declare function local:doEncodeStuff($inputRequest as element() (:: schema-element(ns1:CustomXPathRequest) ::)) as element() (:: schema-element(ns1:CustomXPathResponse) ::) {
    <ns1:CustomXPathResponse>
        <ns1:StringToEncode>{fn:data($inputRequest/ns1:StringToEncode)}</ns1:StringToEncode>
        <ns1:EncodedString>{customxp:base64encode(fn:data($inputRequest/ns1:StringToEncode))}</ns1:EncodedString>
        <ns1:RoundTrip>{customxp:base64decode(customxp:base64encode(fn:data($inputRequest/ns1:StringToEncode)))}</ns1:RoundTrip>
    </ns1:CustomXPathResponse>
};

local:doEncodeStuff($inputRequest)
