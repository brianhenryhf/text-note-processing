# script that will call - or # started lines as header lines, if preceding line is blank (or is first line in file)
# example usage: awk -f <this_script>.awk

# note that \s in regex of $0-specific pattern doesn't match in all cases it should, when receiving input from bbedit via "run unix command" - specific space chars for indent fares better, and doesn't hurt use in shell.
(NR == 1 || prev ~ /^\s*$/) && $0 ~ /^[ \t]*[#-]+/ { print $0 " (ln " NR ")" } {prev=$0}
