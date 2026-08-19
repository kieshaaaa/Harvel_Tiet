from tokenizers import Encoding, Token, Tokenizer
from tokenizers.models import BPE,WordPiece
from tokenizers.trainers import BpeTrainer, WordPieceTrainer
from tokenizers import pre_tokenizers
from tokenizers.pre_tokenizers import Digits
from tokenizers.pre_tokenizers import Whitespace
from tokenizers import decoders

import glob
import os
from pathlib import Path
import json
import random
import argparse

VOCAB_LIMIT = 12000
SKIP_IF_EXISTS = False

def bpeize(dirs, outdir, info=None, BL=False):
    skip = False
    if not os.path.exists(outdir):
        os.mkdir(outdir)
        if os.path.exists(f"{outdir}srctknizer.json") and os.path.exists(f"{outdir}tgttknizer.json"):
            skip = True

    if skip and SKIP_IF_EXISTS:
        src_tknizer = Tokenizer.from_file(f"{outdir}srctknizer.json")
        tgt_tknizer = Tokenizer.from_file(f"{outdir}tgttknizer.json")
    else:
        srcs = [f"{d}train.src" for d in dirs]
        tgts = [f"{d}train.tgt" for d in dirs]

        if BL:
            src_tknizer = Tokenizer(BPE())
            tgt_tknizer = Tokenizer(BPE())
            src_tknizer.decoder = decoders.ByteLevel()
            tgt_tknizer.decoder = decoders.ByteLevel()
            src_tknizer.pre_tokenizer = pre_tokenizers.ByteLevel()
            tgt_tknizer.pre_tokenizer = pre_tokenizers.ByteLevel()
            trainer = BpeTrainer(vocab_size=VOCAB_LIMIT, initial_alphabet=pre_tokenizers.ByteLevel.alphabet(), min_frequency=2)
        else:
            src_tknizer = Tokenizer(BPE(unk_token='<unk>'))
            tgt_tknizer = Tokenizer(BPE(unk_token='<unk>'))
            src_tknizer.pre_tokenizer = pre_tokenizers.Sequence([pre_tokenizers.Whitespace(), pre_tokenizers.Digits(individual_digits=True)])
            tgt_tknizer.pre_tokenizer = pre_tokenizers.Sequence([pre_tokenizers.Whitespace(), pre_tokenizers.Digits(individual_digits=True)])
            trainer = BpeTrainer(special_tokens=["<unk>"], vocab_size=VOCAB_LIMIT)

        src_tknizer.train(srcs, trainer)
        tgt_tknizer.train(tgts, trainer)
        print(f"src vocab size: {src_tknizer.get_vocab_size()}")
        print(f"tgt vocab size: {tgt_tknizer.get_vocab_size()}")
        src_tknizer.save(f"{outdir}srctknizer.json")
        tgt_tknizer.save(f"{outdir}tgttknizer.json")

    src_dict = src_tknizer.get_vocab()
    tgt_dict = tgt_tknizer.get_vocab()

    src_freq_dict = get_token_frequencies(src_tknizer, src_dict, dirs, is_src=True)
    tgt_freq_dict = get_token_frequencies(tgt_tknizer, tgt_dict, dirs, is_src=False)

    with open(f"{outdir}dict.src", "w") as src_dict_file:
        json.dump({"vocab": src_dict, "token_frequencies": src_freq_dict}, src_dict_file, indent=2)

    with open(f"{outdir}dict.tgt", "w") as tgt_dict_file:
        json.dump({"vocab": tgt_dict, "token_frequencies": tgt_freq_dict}, tgt_dict_file, indent=2)

    # Rest of your code for processing and writing tokenized data
    # ...

def get_token_frequencies(tknizer, token_vocab, dirs, is_src=True):
    token_frequencies = {token: 0 for token in token_vocab}
    
    for d in dirs:
        file_type = "src" if is_src else "tgt"
        file_path = f"{d}train.{file_type}"
        lines = open(file_path, "r").readlines()
        N = len(lines)
        for i in range(N):
            line = lines[i]
            encoding = tknizer.encode(line)
            tokens = encoding.tokens
            for token in set(tokens):
                if token in token_frequencies:
                    token_frequencies[token] += 1

    return token_frequencies


def main():
    parser = argparse.ArgumentParser(description="Tokenization script with command-line arguments.")
    parser.add_argument("-dirs", nargs='+', help="List of input directories", required=True)
    parser.add_argument("-odir", help="Output directory", required=True)
    parser.add_argument("-info", help="Information string (optional)", default=None)

    args = parser.parse_args()
    
    # Unpack command-line arguments
    dirs = args.dirs
    odir = args.odir
    info = args.info
    
    
    # Call bpeize function
    bpeize(dirs, odir, info, BL=True)

if __name__ == "__main__":
    main()



# Example usage
#dirs = ["/hdd/discovery/dsn/rawZnew/"]
#odir = "/hdd/tokedO-BL/"
#info = "lang:OCaml\nasmNL:True\nbpe:BL"
#bpeize(dirs, odir, info, BL=True)
