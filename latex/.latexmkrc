$pdf_mode = 1;

print "Latexmk running on $^O\n";

if ($^O eq 'darwin') {
  # MacOS settings
  $pdf_previewer = 'open -a Skim %S'; # %S = PDF filename
} elsif ($^O eq 'linux') {
  # Linux settings
  $pdf_previewer = "zathura %S";
} else {
  # Fallback
  $pdflatex = 'pdflatex';
}

# Extras
#$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode';
#@generated_exts = (@generated_exts, 'synctex.gz');

