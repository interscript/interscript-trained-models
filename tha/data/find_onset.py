import re

with open('wiktionary-phonemic-20200319-cleaned-3.tsv', 'r') as source:
  lines = source.readlines()

cluster_onsets = set([])
all_onsets = set([])

for line in lines:
  match = re.search('(.)\u0e3a', line)
  if match:
    cluster_onsets.add(match.group(1))

for line in lines:
  match = re.search('\t([^เแไใโ])', line)
  if match:
    all_onsets.add(match.group(1))


print(f'Cluster Onset: {"".join(sorted(cluster_onsets))}')
print(f'All Onset: {"".join(sorted(all_onsets))}')
