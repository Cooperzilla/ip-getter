import std/osproc, std/strutils
echo splitLines(execProcess("ipconfig"))[23].replace(" . ", "").replace("IPv4 Address", "").replace(":", "").replace("......").replace(" ", "")