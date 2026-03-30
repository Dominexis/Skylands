
# effect
data modify storage pc:temp actionbar.display.energy set value ["",{font:"pc:default",text:"0"},{color:"gold",text:" Energy ",bold:1b},{color:"gold",text:"["},{color:"gold",score:{name:"@s",objective:"pc.ep"}},{color:"gold",text:"/"},{color:"gold",score:{name:"@s",objective:"pc.epmax"}},{color:"gold",text:"]"}]