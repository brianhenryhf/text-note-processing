# text-note-processing

Scripts for processing my text-based note files. So far, this means a couple scripts to extract a table of contents, extrapolating/extracting headers from my slightly varying note-taking 
formats.  Since these slightly vary, either of these may be more appropriate for a given file.  

These are especially useful with long text files that haven't been looked at in a while, as they give an outline to get acclimated to file contents,
and refer back to line numbers of origin.  My intent is to allow these to be runnable either in BBEdit's `Run Unix Command` feature or in shell.

*TODO* add notes on behavior of each of these, and why I don't just use markdown.  Short version is xxx_preblanks version wants a blank line before an item, to 
consider it a new header.  xxx_indents version just considers root and any indented items as new headers, up to configurable max-indent point.  
