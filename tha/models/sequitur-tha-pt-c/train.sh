#!/bin/sh

# Train G2P model using Phonemic Thai data from Wiktionary
# External data will be used for testing, therefore the full dataset will be
# used for the training.

# A list of silenced letters has been added
# Non-word syllables are generated to improve regular G2P mapping

TRAIN_FILE='../../data/wiktionary-phonemic-20200402.tsv'

{
  g2p.py --train $TRAIN_FILE --devel 5% --encoding UTF-8 --write-model tha-pt-c-1;
  g2p.py --model tha-pt-c-1 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-c-2;
  g2p.py --model tha-pt-c-2 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-c-3;
  g2p.py --model tha-pt-c-3 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-c-4;
  g2p.py --model tha-pt-c-4 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-c-5;
  g2p.py --model tha-pt-c-5 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-c-6;
  g2p.py --model tha-pt-c-6 --ramp-up --train $TRAIN_FILE  --devel 5% --encoding UTF-8 --write-model tha-pt-c-7;
} > tha-pt-c.log