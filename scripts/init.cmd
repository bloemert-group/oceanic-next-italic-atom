@echo off

cd %~dp0
cd ../

echo ## Cloning all submodules
call git submodule update --init --recursive

echo Done
