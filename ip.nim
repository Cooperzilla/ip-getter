import std/osproc, std/strutils, std/re
var t = splitLines(execProcess("ipconfig"))

for i in t:
    if find(i, re"IPv4") > -1:
        if find(t[t.find(i) - 4], re"Wi-Fi") > -1:
            echo i.replace(" . ", "").replace("IPv4 Address", "").replace(":", "").replace("......").replace(" ", "")
