import re

with open('wiktionary-phonemic-20200319-cleaned-2.tsv', 'r') as source:
  lines = source.readlines()

thai_dict = {}

for line in lines:
  thai, p_thai = line.split('\t')
  thai_dict[thai] = {}
  thai_dict[thai]['pt'] = p_thai.strip().replace(' ','-')

with open('wiktionary-ipa-20200211-cleaned.tsv', 'r') as source:
  lines = source.readlines()

for line in lines:
  thai, ipa = line.split('\t')
  if thai in thai_dict.keys():
    thai_dict[thai]['ipa'] = ipa.strip().replace(' ','').replace(".$", "")

f = open ('pt2ipa.txt', 'w')
f2 = open ('pt2ipa_test.txt', 'w')

for key in thai_dict:
  entry = thai_dict[key]
  if 'ipa' in entry.keys():
    #f.write(entry['pt'] + '\t' + entry['ipa']+'\n')
    f2.write(f'  - source: "{entry["pt"]}"\n    expected: "{entry["ipa"]}"\n')

f.close()
