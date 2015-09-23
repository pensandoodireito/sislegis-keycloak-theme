<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.name!''))}
    <#elseif section = "header">
        ${msg("loginTitleHtml",(realm.name!''))}
    <#elseif section = "form">
        <#if realm.password>

<div class="login-box-body">
        <p class="login-box-msg">Autentique-se para acessar o sistema</p>
        <form action="${url.loginAction}" method="post">
          <div class="form-group has-feedback">
            <input id="username" name="username"  type="text" class="form-control" placeholder="Usuário" value="${(login.username!'')?html}"  autofocus >
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" name="password" id="password" class="form-control" placeholder="Senha">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="row">
            
            <div class="col-xs-4">
            <input class="btn btn-primary btn-block btn-flat" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>              
            </div><!-- /.col -->
          </div>
        </form>

      

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

           
        </#if>
   
    </#if>
</@layout.registrationLayout>
