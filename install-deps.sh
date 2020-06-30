#!/bin/sh

LASSO='lasso-2.6.1'

sudo apt install python3-lasso
sudo apt install build-essential autoconf automake autotools-dev libtool libssl-dev zlib1g-dev gtk-doc-tools libglib2.0-dev libxml2-dev libxmlsec1-dev python3-dev python3-setuptools

wget https://dev.entrouvert.org/lasso/$LASSO.tar.gz
tar -xzvf $LASSO.tar.gz
./$LASSO/autogen.sh
cd $LASSO
make install
ldconfig
#export PYTHONPATH="$PYTHONPATH:/usr/local/lib/python3.8/site-packages"
sleep 3
echo "####### TESTING LASSO #######"
python3 -c "import lasso;print(dir(lasso));print('>>> Success!!!')"