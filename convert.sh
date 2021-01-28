ssh vagrant@192.168.121.27 "mkdir $1"
scp $1/$2.rmd vagrant@192.168.121.27:$1
scp -r include vagrant@192.168.121.27:
scp -r img vagrant@192.168.121.27:
ssh vagrant@192.168.121.27 "cd $1 && R -e \"rmarkdown::render('$2.rmd',output_file='$2.pdf')\""
scp vagrant@192.168.121.27:$1/$2.pdf $1
