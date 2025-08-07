```bash
seq 240 255 | xargs -I{} -n 1 arai2c "insideLink{}.mkv"
```
will download episodes 240 : 255