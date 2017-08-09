<%@ page language="java" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>登录页面</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" /><link href="/demo.css" rel="stylesheet" type="text/css" />

    
    <script src="/scripts/boot.js" type="text/javascript"></script>
    
    
    <style type="text/css">
    .errorText
    {
        color:red;
    }
    </style>
</head>
<body>
	<div id="form1">
        <table>
            <tr>
                <td>
                    <label for="username$text">帐号：</label>
                </td>
                <td>
                    <input name="username" errorMode="none" onvalidation="onUserNameValidation" vtype="email" class="mini-textbox" required="true" requiredErrorText="帐号不能为空"/>                    
                </td>    
                <td id="username_error" class="errorText"></td>
            </tr>
            <tr>
                <td>                   
                    <label for="pwd$text">密码：</label>
                </td>
                <td>
                    <input name="pwd" errorMode="none" onvalidation="onPwdValidation" class="mini-password" required="true" vtype="minLength:5" minLengthErrorText="密码不能少于5个字符"/>                    
                </td>
                <td id="pwd_error" class="errorText"></td>
            </tr>            
            <tr>
                <td>
                    
                </td>
                <td>
                    <input value="Login" type="button" onclick="submitForm()" />
                </td>
                
            </tr>
        </table>
    </div>
    
    <script type="text/javascript">
        mini.parse();

        function submitForm() {           
            var form = new mini.Form("#form1");
            form.validate();

            if (form.isValid() == false) return;

            //提交数据
            var data = form.getData();
            var json = mini.encode(data);
            alert("提交成功");
        }

        function updateError(e) {
            var id = e.sender.name + "_error";
            var el = document.getElementById(id);
            if (el) {
                el.innerHTML = e.errorText;
            }
        }
        function onUserNameValidation(e) {                  
            updateError(e);
        }
        function onPwdValidation(e) {        
            updateError(e);
        }
    </script>
    
</body>
</html>


