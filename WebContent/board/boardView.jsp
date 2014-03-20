<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>스트럿츠2 게시판</title>
	<link rel="stylesheet" href="/StrutsBoard/board/common/css/css.css" type="text/css">
	<script type="text/javascript">
		function open_win_noresizable (url, name) {
			var oWin = window.open(url, name, "scrollbars=no,status=no,resizable=no,width=300,height=150");
		}
	</script>
</head>
  
  <body>
  
  	<table width="600" border="0" cellspacing="0" cellpadding="2">
  		<tr>
  			<td align="center"><h2>스트럿츠2 게시판</h2></td>
  		</tr>
  		<tr>
  			<td height="20"></td>
  		</tr>
  	</table>
		
<table width="600" border="0" cellspacing="0" cellpadding="0">
      
      <tr bgcolor="#777777">
        <td height="1" colspan="2"></td>
      </tr>
			
      <tr>
        <td bgcolor="#F4F4F4">  번호 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.no" />
        </td>
      </tr>
      <tr bgcolor="#777777">
        <td height="1" colspan="2"></td>	
      </tr>
      
      <tr>
        <td width="100" bgcolor="#F4F4F4">  제목</td>
        <td width="500" bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.subject" />
        </td>
      </tr>
      							
      <tr bgcolor="#777777">
        <td height="1" colspan="2"></td>
      </tr>
      
      <tr>
        <td bgcolor="#F4F4F4">  글쓴이 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.name" />
        </td>
      </tr>
      <tr bgcolor="#777777">
        <td height="1" colspan="2"></td>	
      </tr>
      
      <tr>
        <td bgcolor="#F4F4F4">  내용 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.content" />
        </td>
      </tr>
      <tr bgcolor="#777777">
        <td height="1" colspan="2"></td>
      </tr>
      
      <tr>
        <td bgcolor="#F4F4F4">  조회수 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.readhit" />
        </td>
      </tr>
      <tr bgcolor="#777777">
        <td height="1" colspan="2"></td>	
      </tr>
      
      <tr>
        <td bgcolor="#F4F4F4">  등록날짜 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;<s:property value="resultClass.regdate" />
        </td>
      </tr>
      <tr bgcolor="#777777">
        <td height="1" colspan="2"></td>	
      </tr>
      
      <tr>
        <td bgcolor="#F4F4F4">  첨부파일 </td>
        <td bgcolor="#FFFFFF">
          &nbsp;&nbsp;
          
          <s:url id="download" action="fileDownloadAction">
          	<s:param name="no">
				<s:property value="no" />
			</s:param>
          </s:url>
					
          <s:a href="%{download}"><s:property value="resultClass.file_orgname" /></s:a> 
         </td>
      </tr>
      <tr bgcolor="#777777">
        <td height="1" colspan="2"></td>	
      </tr>
      
      <tr>
        <td height="10" colspan="2"></td>
      </tr>
      
      
      <tr>
        <td align="right" colspan="2">
        
	        <s:url id="modifyURL" action="modifyForm" >
				<s:param name="no">
					<s:property value="no" />
				</s:param>
	        </s:url>
					
	        <s:url id="deleteURL" action="deleteAction" >
				<s:param name="no">
					<s:property value="no" />
				</s:param>
	        </s:url>
				
	<input name="list" type="button" value="수정" class="inputb" onClick="javascript:open_win_noresizable('checkForm.action?no=<s:property value="resultClass.no" />&currentPage=<s:property value="currentPage" />','modify')">
					
	<input name="list" type="button" value="삭제" class="inputb" onClick="javascript:open_win_noresizable('checkForm.action?no=<s:property value="resultClass.no" />&currentPage=<s:property value="currentPage" />','delete')">

	<input name="list" type="button" value="목록" class="inputb" onClick="javascript:location.href='listAction.action?currentPage=<s:property value="currentPage" />'">

        </td>
      </tr>

  </table>
 </body>
</html>

