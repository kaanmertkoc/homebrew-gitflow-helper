# Git Flow Helper
This tool helps creating release or hotfixes with git-flow. It can bump version, publish the branch then create the PR if gh is avaliable on the local by simply passing version number.

# Installation
  * ``` brew tap kaanmertkoc/homebrew-gitflow-helper ```
  * ``` brew install gitflow-helper ```

# Requirements
  * Homebrew (install with ``` /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" ```
  * Git (install with: ```brew install git```)
  * Git Flow (install with: ```brew install git-flow-avh```)
  * npm (install with: ```brew install node```)
    
# Optionals (If these are installed at the machine it will use them if not it will skip these steps) 
  * Lolcat, for better outputs because why not. (install with: ```brew install lolcat```)
  * GH, for creating pr's directly to main. (install with: ```brew install gh```)

# Usage

# To Start

```
  hotfix --version
```
This will create a hotfix branch on main branch based on the given version, then update the version with ``` npm version patch ``` then create pr if gh is present.


```
  release --version
```

This will create a release branch on main branch based on the given version, then update the version with ``` npm version patch ``` then create pr if gh is present.

# To Finish

```
 hotfix_finish --version
```
This will uncomment the tag version then will finish the hotfix. It will push tags for main and the dev branches.

```
release_finish --version
```
This will uncomment the tag version then will finish the release. It will push tags for main and the dev branches.

Shell repo can be found here: [https://github.com/kaanmertkoc/gitflow-helper-shell]
