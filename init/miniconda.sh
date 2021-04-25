THEDIR=$(dirname $(pwd)/$0)

curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o /tmp/miniconda.sh

CONDA_DIR=$HOME/software/conda
/bin/bash /tmp/miniconda.sh -b -p $CONDA_DIR &&\
rm /tmp/miniconda.sh &&\
$CONDA_DIR/bin/conda clean -tipsy &&\
$CONDA_DIR/bin/conda init bash &&\
$CONDA_DIR/bin/conda init zsh &&\
$CONDA_DIR/bin/conda update --all -y &&\
$CONDA_DIR/bin/conda install conda-build

cp $THEDIR/condarc $CONDA_DIR/condarc
mkdir -p $HOME/.pip && \
	cp $THEDIR/pip.conf $HOME/.pip/
