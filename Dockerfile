FROM pandoc/latex:2.19

# install latex libraries & dependencies
RUN tlmgr update --self \
    && tlmgr install \
    pdfpages \
    fvextra \
    upquote \
    microtype \
    parskip \
    fancyvrb \
    etoolbox \
    footnotehyper \
    ulem \
    xcolor \
    hyperref \
    geometry \
    fontspec \
    fontsize \
    sectsty \
    titlesec \
    tcolorbox \
    xstring \
    enumitem \
    lineno \
    environ

COPY theme/pandoc-fonts /usr/share/fonts/pandoc-fonts/
ENTRYPOINT ["/bin/sh", "-c"]
