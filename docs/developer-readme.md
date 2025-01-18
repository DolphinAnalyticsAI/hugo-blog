# GitHub Pages Deploy

## Quick Reference Steps

1. Commands to Deploy   :
   ```bash
   hugo
   git checkout -b gh-pages
   git rm -rf *
   xcopy /E /I public\* .
   git add .
   git commit -m "Deploy Hugo site to GitHub Pages"
   git push -u origin gh-pages
   git checkout main
   ```


1. Build your Hugo site:
   ```bash
   hugo
   ```

2. Create a new branch for deployment:
   ```bash
   git checkout -b gh-pages
   ```

3. Remove all files from the `gh-pages` branch:
   ```bash
   git rm -rf *
   ```

4. Copy the contents of the `public` directory to the root:
   ```batch
   xcopy /E /I public\* .
   ```

5. Add and commit the changes:
   ```bash
   git add .
   git commit -m "Deploy Hugo site to GitHub Pages"
   ```

6. Push the `gh-pages` branch to GitHub:
   ```bash
   git push -u origin gh-pages
   ```

7. Configure GitHub Pages in the repository settings:
   - Set the source to the `gh-pages` branch.

8. Access your site at:
   ```
   https://<your-username>.github.io/<repository-name>/
   ```

## Step-by-Step Explanation

### Step 1: Build Your Hugo Site
- Run the following command in your project directory to generate the static files:
  ```bash
  hugo
  ```
- This command creates a `public` directory containing all the files needed for your site.

### Step 2: Create a New Branch for Deployment
- Switch to a new branch called `gh-pages` where you will deploy your site:
  ```bash
  git checkout -b gh-pages
  ```

### Step 3: Remove All Files from the `gh-pages` Branch
- Clear any existing files in the `gh-pages` branch to prepare for the new deployment:
  ```bash
  git rm -rf *
  ```
- This command removes all files in the current directory.

### Step 4: Copy the Contents of the `public` Directory
- Copy the contents of the `public` directory (where Hugo generated the static files) to the root of your repository:
  ```batch
  xcopy /E /I public\* .
  ```
- This command ensures that all the necessary files are in the `gh-pages` branch.

### Step 5: Add and Commit the Changes
- Stage the copied files and commit the changes:
  ```bash
  git add .
  git commit -m "Deploy Hugo site to GitHub Pages"
  ```

### Step 6: Push the `gh-pages` Branch to GitHub
- Push the `gh-pages` branch to your GitHub repository:
  ```bash
  git push -u origin gh-pages
  ```
- This command uploads your changes to GitHub.

### Step 7: Configure GitHub Pages in the Repository Settings
- Go to your repository on GitHub.
- Click on the "Settings" tab.
- Scroll down to the "GitHub Pages" section and set the source to the `gh-pages` branch.

### Step 8: Access Your Site
- After a few minutes, your site should be live at:
  ```
  https://<your-username>.github.io/<repository-name>/
  ```
- Replace `<your-username>` with your GitHub username and `<repository-name>` with the name of your repository.

## Bash Script for GitHub Pages Deployment

```bash
#!/bin/bash

# Build the Hugo site
hugo

# Create and switch to the gh-pages branch
git checkout -b gh-pages

# Remove all files from the gh-pages branch
git rm -rf *

# Copy the contents of the public directory to the root
xcopy /E /I public\* .

# Add and commit the changes
git add .
git commit -m "Deploy Hugo site to GitHub Pages"

# Push the gh-pages branch to GitHub
git push -u origin gh-pages

# Switch back to the main branch
git checkout main

echo "Deployment to GitHub Pages completed successfully!"
```

### Instructions to Use the Script

1. **Create a New File**:
   Create a new file named `deploy.bat` in your project root directory.

2. **Copy the Script**:
   Copy the above script into the `deploy.bat` file.

3. **Run the Script**:
   Execute the script to deploy your site:
   ```batch
   deploy.bat
   ```

### Notes
- Ensure you have the necessary permissions to execute the script.
- This script assumes that you have already set up your GitHub repository and that the `public` directory is generated in the root of your project.
- If you need to customize the commit message or any other part of the script, feel free to modify it accordingly.





   ../scripts/deploy-to-pages.bat

   

Let me know if you need any further assistance or modifications!