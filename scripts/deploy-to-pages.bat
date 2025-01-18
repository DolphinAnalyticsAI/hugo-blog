@echo off
echo Starting Hugo site deployment...

REM First, ensure we're on main branch
git checkout main

REM Build the Hugo site from src directory
cd src
hugo
IF ERRORLEVEL 1 (
    echo Hugo build failed! Exiting...
    exit /b 1
)
cd ..

REM Switch to gh-pages branch
echo Switching to gh-pages branch...
git checkout gh-pages
IF ERRORLEVEL 1 (
    echo Failed to switch to gh-pages branch! Exiting...
    exit /b 1
)

REM Clear gh-pages branch content
echo Clearing gh-pages branch...
git rm -rf *

REM Copy public content directly to root
echo Copying new content to gh-pages...
git checkout main -- public
xcopy /E /I public\* .
rmdir /S /Q public

REM Add and commit changes
echo Committing changes...
git add .
git commit -m "Deploy Hugo site to GitHub Pages"

REM Push to GitHub
echo Pushing to GitHub...
git push origin gh-pages --force

REM Switch back to main branch
echo Switching back to main branch...
git checkout main

echo Deployment completed successfully!
pause