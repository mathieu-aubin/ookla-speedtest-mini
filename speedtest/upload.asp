<%@LANGUAGE="VBSCRIPT"%>
<% option explicit %>
<%
Dim size, reply
size = Len(Request.ServerVariables("ALL_RAW")) + Len(Request.ServerVariables("QUERY_STRING")) + Len(Request.Form)
reply = "size=" & size
Response.Buffer = false
Response.AddHeader "Content-Length", Len(reply)
Response.Write(reply)
Response.End
%>
