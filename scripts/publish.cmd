@echo off

cd %~dp0
cd ../

:: TODO: check if  is already installed
echo ## Installing latest Atom Package Manager (APM)...
call npm install -g apm
echo Done

echo ## Publishing to atom.io...
call apm publish patch :: Default to patch update
echo Done

echo ## Committing version bump...
call git commit -am "Version bump"
call git push
echo Done
