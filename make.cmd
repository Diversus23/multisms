@echo off
echo ---------------------------
echo        Release batch
echo ---------------------------
@echo On

set version=1.0.0.54
set actions="c:\Projects\actions\src\actions.os"

@echo off

set source=".\*.epf" ".\doc\*.pdf"
set destination="."

oscript "%actions%" changelog convert --in ".\CHANGELOG.md" --out "%version%.html" --template "SimpleWithoutVersion.html" --productname "Мульти-рассылка СМС" --version "%version%" --minifyhtml --parser_configuration_src "c:\Projects\it\it"
oscript "%actions%" changelog convert --in ".\CHANGELOG.md" --out "changelog.html" --template "Softonit.html" --productname "Мульти-рассылка СМС" --all --lazyload --parser_configuration_src "c:\Projects\it\it"

"C:\Program Files\7-Zip\7z.exe" a -tzip -ssw -mx9 %destination%\multisms1c_%version%.zip %source%