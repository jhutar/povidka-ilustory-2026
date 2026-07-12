.PHONY: all pdf

all: povidka.md

povidka.md: povidka-raw.md
	@echo "Generating povidka.md..."
	@echo '---' > povidka.md
	@echo 'lang: cs-CZ' >> povidka.md
	@echo 'csquotes: true' >> povidka.md
	@echo '---' >> povidka.md
	@echo '' >> povidka.md
	@echo '# Mimozemšťan' >> povidka.md
	@cat povidka-raw.md | tr '\n' ' ' | sed 's/   /\n\n/g' >> povidka.md

pdf: povidka.pdf

povidka.pdf: povidka.md
	pandoc --output povidka.pdf povidka.md
