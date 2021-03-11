@echo off
echo ---------------------------
echo        Release batch
echo ---------------------------
@echo On

set version=1.0.0.38

@echo off

set source=".\γ«μβ¨ ΰ ααλ«ª  ‘‘.epf" ".\doc\€ “‘’€‚’ ’€‚“ ‘‘ ‹…’€ ‚ “’ 11,  3.0, “”, ‡“.3.0, ®§­¨ζ  2.1.pdf"
set destination=".\versions"

"C:\Program Files\7-Zip\7z.exe" a -tzip -ssw -mx9 -r0 %destination%\multisms1c_%version%.zip %source%