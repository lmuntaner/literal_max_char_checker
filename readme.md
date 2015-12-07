# Script to check length of literals

Run this script is to compare the length of literals against a maximum
set manually in a separate file

## Getting started

1. The .csv file should contain the first column as the literal path and
the second column as the maximum number of characters.
2. Add the Yaml files you want to check inside the 'literals' folder
3. In order to run:
  - ```$ ruby main.rb literals max_chars_file.csv```
  - The literals argument is the name of the folder you want to check.
  - The second argument is the filename of the csv file with the matching
  between the literals and their maximum number of characters

Then we can add the literals files (.yml) in the 'literals' folders.
