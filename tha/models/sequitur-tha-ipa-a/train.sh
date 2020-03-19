g2p.py --train train.txt --devel 5% --encoding UTF-8 --write-model model-1;
g2p.py --model model-1 --ramp-up --train train.txt  --devel 5% --encoding UTF-8 --write-model model-2;
g2p.py --model model-2 --ramp-up --train train.txt  --devel 5% --encoding UTF-8 --write-model model-3;
g2p.py --model model-3 --ramp-up --train train.txt  --devel 5% --encoding UTF-8 --write-model model-4;
g2p.py --model model-4 --ramp-up --train train.txt  --devel 5% --encoding UTF-8 --write-model model-5;
g2p.py --model model-5 --ramp-up --train train.txt  --devel 5% --encoding UTF-8 --write-model model-6;
g2p.py --model model-6 --ramp-up --train train.txt  --devel 5% --encoding UTF-8 --write-model model-7;
