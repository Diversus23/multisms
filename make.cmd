@echo off
echo ---------------------------
echo        Release batch
echo ---------------------------
@echo On

set version=1.0.0.54

@echo off

set source=".\*.epf" ".\doc\*.pdf"
set destination="."

"C:\Program Files\7-Zip\7z.exe" a -tzip -ssw -mx9 %destination%\multisms1c_%version%.zip %source%