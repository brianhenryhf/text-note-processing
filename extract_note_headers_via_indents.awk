# this doesn't allow for tabs as indents
# example usage: awk -v max_level=2 -f <this_script>.awk

BEGIN { 
  if(! indent_spaces) indent_spaces = 2; 
  for(i = 0; i < indent_spaces; i++) indent = indent " " 
}
$0 ~ "^(" indent "){0," max_level-1 "}[#-]+" { 
  print $0 " (ln " NR ")" 
}