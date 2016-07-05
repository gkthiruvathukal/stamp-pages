mkdir -p blanks
rm -rf blanks/*
latexmk -pdf arabic-uright
pdftk arabic-uright.pdf burst output blanks/arabic-uright-%03d.pdf
latexmk -C arabic-uright
latexmk -pdf arabic-center
pdftk arabic-center.pdf burst output blanks/arabic-center-%03d.pdf
latexmk -C arabic-center
latexmk -pdf roman-center
pdftk roman-center.pdf burst output blanks/roman-center-%03d.pdf
latexmk -C roman-center
