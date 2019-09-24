# ./utlils.sh
Random utility shell scripts
- [./utlils.sh](#utlilssh)
  - [spreadsheet-dates.sh](#spreadsheet-datessh)
  - [update-git-origin.sh](#update-git-originsh)


## spreadsheet-dates.sh
Genarates spreadsheet format dates for the whole month. Can be used in Google Docs or Microsoft Excel etc.

**Usage**:
```sh
./spreadsheet-dates.sh <Month (Required)> <Year (Optional, default: 2019)>
```
**Example**:
```sh
./spreadsheet-dates.sh 10
```


## update-git-origin.sh
Update or change git origin  of cloned/local repositories. Useful when you switch domain, organization or folder structure of your git repos in github, gitlab or etc. 

**Usage**:
```sh
./update-git-origin.sh <String to replace in origin> <String to replace with in origin>
```
**Example**:
```sh
./update-git-origin.sh gitlab.com/myorganization gitlab.myorg.com/myorganization
```