#IP=172.22.200.65
#USUARIO=debian
IP=192.168.121.27
USUARIO=vagrant

ssh $USUARIO@$IP "mkdir $1"
scp $1/$2.rmd $USUARIO@$IP:$1
scp -r $1/img $USUARIO@$IP:$1/img
scp -r include $USUARIO@$IP:
scp -r img $USUARIO@$IP:
ssh $USUARIO@$IP "cd $1 && R -e \"rmarkdown::render('$2.rmd',output_file='$2.pdf')\""
scp $USUARIO@$IP:$1/$2.pdf $1
