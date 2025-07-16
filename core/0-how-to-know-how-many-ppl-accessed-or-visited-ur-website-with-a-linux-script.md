
```bash
# number of ppl
cat access.log | cut -d' ' -f 1 | sort | uniq | wc -l

# get the location of the last guy visiting
curl http://ip-api.com/json/$(tail -n 1 access.log | cut -d' ' -f 1) | jq -r '.country' 
# -r = raw query , jq = jquery
```