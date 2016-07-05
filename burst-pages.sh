rm -f shilpika-thesis.pdf main.pdf

wget -O main.pdf https://preview.overleaf.com/public/pbzrjhwrsmcz/pdfs/d9c42c3dc04a5ae83ee8cf35a570a35bcc1dc01d/shilpika-thesis.pdf

mkdir -p sources
rm -rf sources/*

pdftk main.pdf burst output sources/page-%03d.pdf
