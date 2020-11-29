#!/bin/bash
echo "Build rules pdf..."
docker run -v $(pwd):/documents asciidoctor/docker-asciidoctor .ci/adoc-to-tex.sh rules
docker run -v $(pwd):/documents mrshu/texlive-dblatex .ci/tex-to-pdf.sh rules
rm tmp_*
