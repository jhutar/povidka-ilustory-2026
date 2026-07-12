# Moje povídka na Ilustory 2026

Zadání soutěže: <https://ilustory.cz/2026/>

Také si chci vyzkoušet jak mi LLM model (v mém případě Gemini) může pomoct
a zjednodušit proces tvorby. Každý krok je ve vlastním commitu s `Assisted-by`
nebo `Generated-by` trailerem pokud bylo použito LLM aby bylo vidět co jsem
dělal já a co LLM a jak. Případné promty jsou v commit messages.

Pro zobrazení finálního souboru:

```
cat povidka.md | tr '\n' ' ' | sed 's/   /\n\n/g' | glow --pager
```
