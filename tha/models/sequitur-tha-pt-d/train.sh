#!/bin/sh

# Train G2P model using Phonemic Thai data from Wiktionary
# External data will be used for testing, therefore the full dataset will be
# used for the training.

# A list of silenced letters has been added
# Non-word syllables are generated to improve regular G2P mapping

TRAIN_FILE='../../data/wiktionary-phonemic-20200402x.tsv'

{
  g2p.py --train $TRAIN_FILE --devel 5% --encoding UTF-8 --write-model tha-pt-d-1;
  g2p.py --model tha-pt-d-1 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-d-2;
  g2p.py --model tha-pt-d-2 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-d-3;
  g2p.py --model tha-pt-d-3 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-d-4;
  g2p.py --model tha-pt-d-4 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-d-5;
  g2p.py --model tha-pt-d-5 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-d-6;
  g2p.py --model tha-pt-d-6 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-d-7;
} > tha-pt-d.log