#!/bin/bash

tgt_lang=$1
src=udt/en/
tgt=udt/$tgt_lang/

f_test=$tgt/$tgt_lang-universal-test-brown-punc-p1.conll
f_output=$f_test.predict

model=$src/model.ours.bicg-0.1.en-$tgt_lang/model
f_conf=conf/nndep.cfg

./bin/clnndep -cltest  $f_test \
              -model $model \
              -output $f_output \
              -cfg $f_conf \
              -clemb ~/data/word_vectors/vectors/biCG_50_l-0.1.tsv

