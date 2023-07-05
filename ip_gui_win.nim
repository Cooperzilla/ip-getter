import std/[osproc, strutils], wnim/[wApp, wFrame, wPanel, wStaticText]
var ip = splitLines(execProcess("ipconfig"))[23].replace(" . ", "").replace("IPv4 Address", "").replace(":", "").replace("......").replace(" ", "")

let app = App()
let frame = Frame(size=(300,200))

let panel = Panel(frame)
let label = StaticText(panel, label=ip)
let label2 = StaticText(panel, label="Your Ip")

label.position = (125, 85)
label2.position = (125, 75)

frame.center()
frame.show()
app.mainLoop()