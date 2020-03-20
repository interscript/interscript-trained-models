# Using Sequitur-G2P to train models and run transcription tasks

1. Install [Sequitur-G2P](https://github.com/sequitur-g2p/sequitur-g2p) library and its dependencies

Sequitur runs on Python. Please make sure Python 3.6 is installed. Install SWIG if you run on Windows (`choco install --no-progress swig`) or Ubuntu (`sudo apt-get install swig python3-setuptools`).
Use `pip3` to install other dependencies and the Sequitur-G2P library.

```
pip3 install setuptools numpy
pip3 install git+https://github.com/sequitur-g2p/sequitur-g2p@master
```

2. Training the model

Run `./train.sh` in each of the `models/` directory. 

3. Testing the model

Use this command to test a specific model.

```
g2p.py --model models/sequitur-tha-pt-a/tha-pt-a-5 --encoding UTF-8 --test data/testing.tsv
```

Use this command to apply the model to generate output strings.
```
g2p.py --model models/sequitur-tha-pt-a/tha-pt-a-5 --encoding UTF-8 --apply source.txt
```