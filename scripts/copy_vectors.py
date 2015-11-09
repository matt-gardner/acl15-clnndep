#!/usr/bin/env python


def main(in_file, out_file, size):
    out = open(out_file, 'w')
    for line in open(in_file):
        fields = line.strip().split()
        if size:
            vector = '\t'.join(fields[:size+1])
            out.write(vector)
            out.write('\n')
        else:
            out.write(line)
    out.close


if __name__ == '__main__':
    main('/home/mg1/data/word_vectors/vectors/X_SVD_640.tsv',
         '/home/mg1/clone/acl15-clnndep/resources/ours_x/en-es50.tsv',
         50)

# vim: et sw=4 sts=4
