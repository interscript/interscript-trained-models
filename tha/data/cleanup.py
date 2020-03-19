import re

with open('misspellings.txt', 'r') as f_exclude:
  exclude = f_exclude.readlines()

exclude = [x.strip() for x in exclude]

with open('wiktionary-phonemic-20200319-cleaned-1.tsv', 'r') as f_source:
  with open('wiktionary-phonemic-20200319-cleaned-2.tsv', 'w') as f_target:
    lines = f_source.readlines()
    for line in lines:
      match = re.match('(.*)\t', line)
      if match:
        if match.group(1) not in exclude:
          f_target.write(line)
        else:
          print(f'Excluded {match.group(1)}')
      else:
        print(f'This line is problematic: {line}')
