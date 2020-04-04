#!/bin/sh

# Train G2P model using Phonemic Thai data from Wiktionary
# External data will be used for testing, therefore the full dataset will be
# used for the training.

TRAIN_FILE='../../data/wiktionary-phonemic-20200322-cleaned.tsv'

{
  g2p.py --train $TRAIN_FILE --devel 5% --encoding UTF-8 --write-model tha-pt-b-1;
  g2p.py --model tha-pt-b-1 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-b-2;
  g2p.py --model tha-pt-b-2 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-b-3;
  g2p.py --model tha-pt-b-3 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-b-4;
  g2p.py --model tha-pt-b-4 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-b-5;
  g2p.py --model tha-pt-b-5 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-b-6;
  g2p.py --model tha-pt-b-6 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-b-7;
} > tha-pt-b.log