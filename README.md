This is a demonstration of how to use pdftk's stamping feature to
apply page numbers to a LaTeX document a posteriori (after the PDF has been
produced, that is).

It is an early stage work that, at best, is ad hoc and not necessarily usable
by other porjects.

The approach is to generate a bunch of page "blanks" that accommodate the
needed cases:

- Roman numbered pages (bottom center) - usually for front matter
- Arabic pages (bottom center)  - usually for beginning of a chapter
- Arabic pages (upper right) - usually for second through last page of a chapter

Interested users are welcome to contact me. I plan to generalize this at some
point but am almost certain nobody will find this interesting except for 
me and my students at Loyola, who need to write their theses in LaTeX and
comply with (annoying) Graduate School requirements that seemingly date
back to early typewriters.

There are three scripts:

- burst-thesis.sh: This downloads my student (Shilpika's) thesis from Overleaf and explodes the pages into a temporary working folder (sources). You need to run this script if you want some test data.
- create-blank-numbered-pages.sh: You need to run this script once to create all of the different page blanks.
- stamp-pages.sh: Once you have the test data and numbered pages, this script will stamp the appropriate pages onto the document and produce a final file named `final-thesis.pdf`.


