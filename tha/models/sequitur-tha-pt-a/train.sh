#!/bin/sh

# Train G2P model using Phonemic Thai data from Wiktionary
# External data will be used for testing, therefore the full dataset will be
# used for the training.

TRAIN_FILE='../../data/wiktionary-phonemic-20200319-cleaned-3.tsv'

{
  g2p.py --train $TRAIN_FILE --devel 5% --encoding UTF-8 --write-model tha-pt-a-1;
  g2p.py --model tha-pt-a-1 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-a-2;
  g2p.py --model tha-pt-a-2 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-a-3;
  g2p.py --model tha-pt-a-3 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-a-4;
  g2p.py --model tha-pt-a-4 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-a-5;
  g2p.py --model tha-pt-a-5 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-a-6;
  g2p.py --model tha-pt-a-6 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-a-7;
} > tha-pt-a.log