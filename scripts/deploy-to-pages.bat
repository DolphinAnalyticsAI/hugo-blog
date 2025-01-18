@echo off
REM Build the Hugo site
echo Building the Hugo site...
hugo

REM Check if the build was successful
IF ERRORLEVEL 1 (
    echo Hugo build failed. Exiting...
    exit /b 1
)

REM Create and switch to the gh-pages branch
git checkout -B gh-pages

REM Remove all files from the gh-pages branch
echo Removing old files from gh-pages branch...
git rm -rf *

REM Copy the contents of the public directory to the root
echo Copying files from public directory...
xcopy /E /I ..\public\* .

REM Add and commit the changes
echo Adding changes to git...
git add .
git commit -m "Deploy Hugo site to GitHub Pages"

REM Push the gh-pages branch to GitHub
echo Pushing to GitHub...
git push -u origin gh-pages --force

REM Switch back to the main branch
git checkout main

echo Deployment to GitHub Pages completed successfully!
pause