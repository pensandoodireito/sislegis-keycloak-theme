<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html  lang="pt-br" xmlns="http://www.w3.org/1999/xhtml" >

<head>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />        
    <title>Ministério da Justiça - SISLEGIS</title>
      <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="${url.resourcesPath}/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${url.resourcesPath}/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="${url.resourcesPath}/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${url.resourcesPath}/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="${url.resourcesPath}/css/blue.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="${url.resourcesPath}/js/html5shiv.min.js"></script>
        <script src="${url.resourcesPath}/js/respond.min.js"></script>
    <![endif]-->
    <#if properties.meta?has_content>
        <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>
   
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico" />
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
</head>
  <body class="hold-transition login-page">
    <div class="login-box">
      <div class="login-logo">
        <a href="/"><b>Sislegis</b></a>
      </div><!-- /.login-logo -->
       <#if displayMessage && message?has_content>
                <div id="kc-feedback" class="feedback-${message.type} ${properties.kcFeedBackClass!} alert alert-danger" role="alert">
                    
						<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                        <span class="kc-feedback-text ">${message.summary}</span>
                    
                </div>
            <#else>
                <div id="kc-feedback-placeholder" class="${properties.kcFeedBackPlaceholderClass!}">
                    <div id="kc-feedback-placeholder-wrapper"></div>
                </div>
            </#if>
<#nested "form">
    <!-- jQuery 2.1.4 -->
    <script src="${url.resourcesPath}/js/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="${url.resourcesPath}/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="${url.resourcesPath}/js/icheck.min.js"></script>
    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>
  </body>



</html>
</#macro>
