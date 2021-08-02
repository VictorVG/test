@echo off
for %%A in (
    Bel
    Cze
    Ger
    Hun
    Ita
    Lit
    Pol
    Sky
    Spa
    Ukr
   ) do (if exist *%%A.* (del /s/f/q *%%A.*) > nul & if exist *.map (del /s/f/q *.map > nul))
exit