@echo off
REM ==============================
REM Script para subir TODO a GitHub
REM ==============================

REM Configura tu repo remoto aquí:
set REPO_URL=https://github.com/JLeaker2/sexo.git

REM Inicializa Git si no existe
if not exist ".git" (
    git init
    git remote add origin %REPO_URL%
)

REM Inicializa LFS (solo la primera vez)
git lfs install

REM Reindexa todos los archivos para que Git los vea
git rm -r --cached .
git add .

REM Commit de todos los archivos
git commit -m "Añadir todos los archivos"

REM Configura rama principal
git branch -M main

REM Push forzado para que la repo quede exactamente como local
git push -u origin main --force

echo.
echo ========================================
echo Todo subido a GitHub correctamente.
echo ========================================
pause
