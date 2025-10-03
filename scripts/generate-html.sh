
#todo: loop over all .md files

#todo: check if this works:
#for i in /some/directory/*.md;
#  do pandoc -f markdown -t html -s "$i" > "$i".html; 
#done;

pandoc -f markdown ../source/windows10-block-updates.md  > ../generated/windows10-block-updates.html
