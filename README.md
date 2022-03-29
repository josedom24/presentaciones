# Presentaciones

Presentaciones generadas con rmarkdown, beamer

## Instalación 

    apt install r-cran-rmarkdown texlive-latex-extra texlive-lang-spanish texlive-fonts-extra

O instalación completa:

    apt install r-cran-rmarkdown texlive-full

## Modificación del estilo

En el fichero `/usr/share/texlive/texmf-dist/tex/latex/beamertheme-focus/beamercolorthemefocus.sty`:

Añadimos un color:

    \definecolor{texto}{RGB}{64, 64, 64}

Y modificamos el estilo en la línea:

    \setbeamercolor{normal text}{fg=texto, bg=background}

## Recursos

https://github.com/alexeygumirov/pandoc-beamer-how-to
https://bookdown.org/yihui/rmarkdown/beamer-presentation.html


Huge > huge > LARGE > Large > large > normalsize > small > footnotesize > scriptsize > tinyy

## Color en los enlaces

```
\color{blue} []() \color{darkgray}
```