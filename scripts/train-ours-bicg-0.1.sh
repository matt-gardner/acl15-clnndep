#!/bin/bash

#cd /export/a04/jguo/work/parser/clnndep

#lang=${lang}
lang=$1
corpus=udt/en/

f_train=$corpus/en-universal-train-brown.conll
f_dev=$corpus/en-universal-dev-brown.conll

model_dir=$corpus/model.ours.bicg-0.1.en-$lang
if [ ! -d $model_dir ]; then
    mkdir $model_dir
fi

f_model=$model_dir/model
f_conf=conf/nndep.cfg

./bin/clnndep -train $f_train \
              -dev $f_dev     \
              -model $f_model \
              -cfg $f_conf    \
              -emb ~/data/word_vectors/vectors/biCG_50_l-0.1.tsv

