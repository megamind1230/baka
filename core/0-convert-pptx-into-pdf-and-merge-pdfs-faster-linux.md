#1 

```bash
find . -type f -iname "*.pp*" -exec soffice --headless --convert-to pdf {} +
pdfunite *.pdf output.pdf
# then open with zathura/whatever
zathura output.pdf
```