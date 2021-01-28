scp $1.rmd vagrant@192.168.121.27:
scp -r include vagrant@192.168.121.27:
scp -r img vagrant@192.168.121.27:
ssh vagrant@192.168.121.27 "R -e \"rmarkdown::render('$1.rmd',output_file='$1.pdf')\""
scp vagrant@192.168.121.27:$1.pdf .
