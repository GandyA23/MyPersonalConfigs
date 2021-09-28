# Cada vez que se inicie una nueva instancia de consola se ejecutarán los comandos de este archivo. 

# Activa el comando `code` de Visual Studio Code para usarlo en la consola 
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Añade al PATH la carpeta bin de composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# httpd and php from homebrew
# Cambio de versiones de php

# Versión de PHP
ZH_PHP=7.4

# Asignale la versión a las variables globales                               
export PATH="/usr/local/opt/php@$ZH_PHP/bin:$PATH" 
export PATH="/usr/local/opt/php@$ZH_PHP/sbin:$PATH"

export LDFLAGS="-L/usr/local/opt/php@$ZH_PHP/lib"
export CPPFLAGS="-I/usr/local/opt/php@$ZH_PHP/include"

# No olvides descomentar php_module de la versión que vas a usar en el archivo /usr/local/etc/httpd/httpd.conf
# Reinicia el servidor e inicia el servicio de php
#brew link --overwrite --force php@$ZH_PHP
#brew services restart httpd

# Mensaje de bienvenida
echo "\n♙ Hello GandyA23! ♙\n"
