# Moje povídka na Ilustory 2026

Zadání soutěže: <https://ilustory.cz/2026/> (na téma obrázku středověkého rytíře na koni s dřevcem, jakýkoliv žánr, 5400 znaků včetně mezer).

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

# Mimozemšťan
""" > povidka.md
cat povidka-raw.md | tr '\n' ' ' | sed 's/   /\n\n/g' >> povidka.md
pandoc --output povidka.pdf povidka.md
```

Co je co:

* Brainstorming s LLM pro naplánování pobídky: [brainstorming.md](brainstorming.md) (při psaní jsem spoustu z toho přeskočil a pozměnil, už tak to bylo příliš dlouhé)
* Povídka jak jsem ji nadiktoval + pár základních oprav pomocí LLM: [povidka-original.md](povidka-original.md) (je potřeba výrazně zkrátit, co věta to řádek pro přehledné sledování změn)
* Zdrojový soubor pro finální verzi, zkrácená a upravovaná jak ručně tak pomocí LLM: [povidka-raw.md](povidka-raw.md) (co věta to řádek pro přehledné sledování změn)
* Finální verze povídky vytvořená automaticky příkazy výše: [povidka.md](povidka.md)
