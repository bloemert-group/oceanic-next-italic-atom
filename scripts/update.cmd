@echo off

cd %~dp0
cd ../

echo ## Updating theme to latest version
call git submodule update --remote --merge

echo ## Generate theme again using APM
call apm init --theme . --convert "./theme/Oceanic Next Italic.tmTheme"

echo ## Commiting updated theme
call git commit -am "Updated theme"
call git push
echo Done
