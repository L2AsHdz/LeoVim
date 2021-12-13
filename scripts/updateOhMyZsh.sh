#!/bin/zsh

echo Cambiando a directorio de oh my zsh
cd ~/.oh-my-zsh
echo Guardando cambios realizados
git stash save "cambios propios"
echo Actualizando repositorio
git pull
echo Aplicando cambios personalizados
git stash pop

echo --------------------------------------------------
echo Cambiando a directorio de powerlevel10k
cd ~/.oh-my-zsh/custom/themes/powerlevel10k/
echo Verificando actualizaciones
git pull

echo --------------------------------------------------
echo Cambiando a directorio de enhancd
cd ~/.oh-my-zsh/custom/plugins/enhancd/
echo Verificando actualizaciones
git pull

echo --------------------------------------------------
echo Cambiando a directorio de zsh-autosuggestions
cd ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/
echo Verificando actualizaciones
git pull

echo --------------------------------------------------
echo Cambiando a directorio de zsh-completions
cd ~/.oh-my-zsh/custom/plugins/zsh-completions/
echo Verificando actualizaciones
git pull

echo --------------------------------------------------
echo Cambiando a directorio de zsh-history-substring-search
cd ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search/
echo Verificando actualizaciones
git pull

echo --------------------------------------------------
echo Cambiando a directorio de zsh-syntax-highlighting
cd ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/
echo Verificando actualizaciones
git pull

echo ---------------------------------------------------
echo Cambiando a directorio de zsh-docker-aliases
cd ~/.oh-my-zsh/custom/plugins/zsh-docker-aliases
echo Guardando cambios
git stash save "cambios propios docker"
echo Verificando actualizaciones
git pull
echo Aplicando cambios
git stash pop

echo --------------------------------------------------
echo Cambiando a directorio de zsh-nvm
cd ~/.oh-my-zsh/custom/plugins/zsh-nvm/
echo Verificando actualizaciones
git pull

echo --------------------------------------------------
echo Cambiando a directorio de k
cd ~/.oh-my-zsh/custom/plugins/k/
echo Verificando actualizaciones
git pull

echo Verificacion de actualizaciones finalizada con exito
