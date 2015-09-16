Tema para o Keycloak do Sislegis
==============

Este tema customiza o login do Keycloak para ter o look-n-feel do Sislegis.

Este dever ser instalado no JBoss e configurado para o Sislegis app através da administração do Keycloak.

Para contruí-lo e instalá-lo execute:

    mvn clean install

Mas deve-se garantir ter as seguintes variáveis de ambiente setadas:

     JAVA_HOME=<JAVA JDK PATH>
     JBOSS_HOME=<JBOSS PATH>
     
     
### Instalação inicial

Na primeira utilização, deve-se adicionar ao arquivo de configuração do Keycloak a existência deste módulo. 
Adicione ao $KEYCLOAK_HOME/standalone/configuration/keycloak-server.json o registro do módulo da seguinte forma:
    
    "theme": {
        "module": {
            "modules": [ "org.keycloak.sislegis.themes" ]
        }
    }

### Desenvolvimento

Para facilitar o desenvolvimento sete cacheTemplate e cacheThemes para false no arquivo de configurações do keycloak:

     "theme": {
         "module": {
             "modules": [ "org.keycloak.sislegis.themes" ]
          },
          "default": "keycloak",
          "staticMaxAge": 1,
          "cacheTemplates": false,
          "cacheThemes": false,
          "folder": {
            "dir": "${jboss.server.config.dir}/themes"
          }
      },

## Referências

* [JBoss documentation - Chapter 10. Themes](http://docs.jboss.org/keycloak/docs/1.2.0.Beta1/userguide/html/themes.html)
* [Keycloak Example Themes GitHub!](https://github.com/keycloak/keycloak/tree/master/examples/themes)
     