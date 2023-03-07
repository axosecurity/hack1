@echo off

set datetime=%date% %time%
set datetime=%datetime:/=-%

rem change this ---------------------///////////

rem set notes_path=C:\Users\City Online Ltd\Pictures\note_test2

set notes_path=C:\Users\City Online Ltd\Music\Github_note\hack1



set github_username=axosecurity

set github_token=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

set repo_name=hack1


rem this will update the data 

cd %notes_path%

git init
git remote add origin https://github.com/%github_username%/%repo_name%.git
git add .
git commit -m "Adding notes - %datetime%"


git push --set-upstream origin master










