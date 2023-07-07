import std/[osproc, strutils]
for i in (let t = splitLines(execProcess("ipconfig")); t): 
    (if find(i, "IPv4") > -1 and find(t[t.find(i) - 4], "Wi-Fi") > -1: 
        echo i.replace(" . ", "").replace("IPv4 Address", "").replace(":", "").replace("......").replace(" ", ""))

## this code can be 1 line 
## import std/[osproc, strutils]; for i in (let t = splitLines(execProcess("ipconfig")); t): (if find(i, "IPv4") > -1 and find(t[t.find(i) - 4], "Wi-Fi") > -1: echo i.replace(" . ", "").replace("IPv4 Address", "").replace(":", "").replace("......").replace(" ", ""))