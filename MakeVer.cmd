@echo off
echo ---------------------------
echo        Release batch
echo ---------------------------
@echo On

set version=1.0.0.52

@echo off

set source=".\Œã«ìâ¨ à ááë«ª  ‘Œ‘.epf" ".\doc\Š€Š “‘’€Ž‚ˆ’œ Ž’€‚Š“ ‘Œ‘ Š‹ˆ…’€Œ ‚ “’ 11,  3.0, “”, ‡“.3.0, ®§­¨æ  2.1.pdf"
set destination=".\versions"

"C:\Program Files\7-Zip\7z.exe" a -tzip -ssw -mx9 -r0 %destination%\multisms1c_%version%.zip %source%
