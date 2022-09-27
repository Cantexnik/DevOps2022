#!bash

# ===========================Task===========================
# Найти и посчитать количество словосочетаний “continuous integration” 1-3 разными способами 
# Заменить все “continuous integration” на абревиатуру  
# ==========================================================

#continuous integration
site=https://www.atlassian.com/continuous-delivery/continuous-integration
echo "===================v1==================="
count_of_occurrences_full=$(curl -s $site | grep -io "continuous integration" | wc -l)
count_of_occurrences_short=$(curl -s $site | grep -io "CI" | wc -l)

echo "Count v1 full: $count_of_occurrences_full"
echo "Count v1 short: $count_of_occurrences_short"


echo "===================v2==================="
echo "Count v2 full: "
curl -s $site | grep -iow "continuous integration" | wc -l


echo "===================v3==================="
echo "Count v3 full: "

wget -O changeCI.html $site
sed -Ei 's/(continuous integration)/changeCI/ig' changeCI.html

echo "Count of abbreviations replaced : "
grep -oi "changeCI" changeCI.html | wc -l
