if ($os eq 'darwin') {
  # MacOS settings
  $pdf_previewer = 'open -a Skim';
  $pdf_mode = 4;
} elsif ($os eq 'linux') {
  # Linux settings
  $pdf_previewer = "zathura %S";
} else {
  # Fallback
  $pdflatex = 'pdflatex';
}

# Extras
#$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode';
#@generated_exts = (@generated_exts, 'synctex.gz');

