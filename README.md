# Moje povídka na Ilustory 2026

Zadání soutěže: <https://ilustory.cz/2026/>

Také si chci vyzkoušet jak mi LLM model (v mém případě Gemini) může pomoct
a zjednodušit proces tvorby. Každý krok je ve vlastním commitu s `Assisted-by`
nebo `Generated-by` trailerem pokud bylo použito LLM aby bylo vidět co jsem
dělal já a co LLM a jak. Případné promty jsou v commit messages.

Pro kontrolu počtu znaků:

```bash
cat povidka-raw.md | tr '\n' ' ' | sed 's/   /\n\n/g' | wc --chars
```

Pro převod do finálního tvaru:

```bash
echo """---
lang: cs-CZ
csquotes: true
---
""" > povidka.md
cat povidka-raw.md | tr '\n' ' ' | sed 's/   /\n\n/g' >> povidka.md
pandoc --output povidka.pdf povidka.md
```
