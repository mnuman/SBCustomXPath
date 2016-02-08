<xsl:stylesheet version="1.0"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 oraxsl DVMFunctions BasicCredentialsUserFunction UUIDUserFunction IsUserInRoleFunction IsUserInGroupFunction XrefFunctions"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:ns0="http://xmlns.qualogy.com/blog/mnuman/xpath/custom"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:customxp="http://www.oracle.com/XSL/Transform/java/com.qualogy.soa.xpath.Base64"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../CustomXPathFunctions.xsd"/>
        <oracle-xsl-mapper:rootElement name="CustomXPathRequest"
                                       namespace="http://xmlns.qualogy.com/blog/mnuman/xpath/custom"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../CustomXPathFunctions.xsd"/>
        <oracle-xsl-mapper:rootElement name="CustomXPathResponse"
                                       namespace="http://xmlns.qualogy.com/blog/mnuman/xpath/custom"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [MON FEB 08 15:29:42 CET 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <ns0:CustomXPathResponse>
      <ns0:StringToEncode>
        <xsl:value-of select="/ns0:CustomXPathRequest/ns0:StringToEncode"/>
      </ns0:StringToEncode>
      <ns0:EncodedString>
        <xsl:value-of select="customxp:encodeBase64(/ns0:CustomXPathRequest/ns0:StringToEncode)"/>
      </ns0:EncodedString>
      <ns0:RoundTrip>
        <xsl:value-of select="customxp:decodeBase64(customxp:encodeBase64(/ns0:CustomXPathRequest/ns0:StringToEncode))"/>
      </ns0:RoundTrip>
    </ns0:CustomXPathResponse>
  </xsl:template>
</xsl:stylesheet>