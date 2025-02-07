@echo off
echo ---------------------------
echo        Release batch
echo ---------------------------
@echo On

set version=1.0.0.54

@echo off

set source=".\*.epf" ".\doc\*.pdf"
set destination="."

oscript "c:\Projects\actions\src\actions.os" changelog convert --in ".\CHANGELOG.md" --out "%version%.html" --template "SimpleWithoutVersion.html" --productname "$CI_PROJECT_TITLE" --version "%version%" --minifyhtml --parser_configuration_src "c:\Projects\it\it"

"C:\Program Files\7-Zip\7z.exe" a -tzip -ssw -mx9 %destination%\multisms1c_%version%.zip %source%