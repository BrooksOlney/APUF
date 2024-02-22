import numpy as np

links = 8
topName = "top"
botName = "bot"

sName = "SLICE_X{0}Y{1}"

topStart = (8,32)
botStart = (8,30)


print(f"set_property BEL A6LUT [get_cells A/PCSPUF/*/abar_LUT]")
print(f"set_property BEL B6LUT [get_cells A/PCSPUF/*/bbar_LUT]")
print(f"set_property BEL C6LUT [get_cells A/PCSPUF/*/cbar_LUT]")
print(f"set_property BEL D6LUT [get_cells A/PCSPUF/*/dbar_LUT]")

print(f"set_property BEL C6LUT [get_cells A/PCSPUF/*/c6LUT]")
print(f"set_property BEL D6LUT [get_cells A/PCSPUF/*/d6LUT]")
# print(f"set_property BEL A6LUT [get_cells A/PCSPUF/*7/c6LUT]")
# print(f"set_property BEL B6LUT [get_cells A/PCSPUF/*7/d6LUT]")
# print(f"set_property BEL F7AMUX [get_cells A/PCSPUF/*7/muxOut]")
print(f"set_property BEL F7BMUX [get_cells A/PCSPUF/*/muxOut]")

x = 0

print(f"set_property BEL F7AMUX [get_cells A/topEnableMUX]")
print(f"set_property BEL D6LUT [get_cells A/topEnableLUT]")
print(f"set_property LOC {sName.format(x+1,topStart[1])} [get_cells A/topEnableLUT]")
print(f"set_property LOC {sName.format(x+1,topStart[1])} [get_cells A/topEnableMUX]")


print(f"set_property BEL F7AMUX [get_cells A/botEnableMUX]")
print(f"set_property BEL D6LUT [get_cells A/botEnableLUT]")
print(f"set_property LOC {sName.format(x+1,botStart[1])} [get_cells A/botEnableLUT]")
print(f"set_property LOC {sName.format(x+1,botStart[1])} [get_cells A/botEnableMUX]")

print(f"set_property BEL C6LUT [get_cells A/primaryEnableLUT]")
print(f"set_property BEL F7BMUX [get_cells A/primaryEnableMUX]")
print(f"set_property LOC {sName.format(x+2,topStart[1]-1)} [get_cells A/primaryEnableLUT]")
print(f"set_property LOC {sName.format(x+2,topStart[1]-1)} [get_cells A/primaryEnableMUX]")

for i in range(links):
    _,ytop = topStart
    _,ybot = botStart
    if i < 4:
        x += 2
        xmux = x + 1
    elif i == 4:
        x = x
        xmux = x + 1
    else:
        x -= 2
        xmux = x + 1
        
    ytop -= (i // 4)*4
    ybot -= (i // 4)*4
    
    print(f"set_property LOC {sName.format(x,ytop)} [get_cells A/PCSPUF/top{i}/*bar_LUT]")
    print(f"set_property LOC {sName.format(xmux,ytop)} [get_cells A/PCSPUF/top{i}/c6LUT]")
    print(f"set_property LOC {sName.format(xmux,ytop)} [get_cells A/PCSPUF/top{i}/d6LUT]")
    print(f"set_property LOC {sName.format(xmux,ytop)} [get_cells A/PCSPUF/top{i}/muxOut]")
    
    
    print(f"set_property LOC {sName.format(x,ybot)} [get_cells A/PCSPUF/bot{i}/*bar_LUT]")
    print(f"set_property LOC {sName.format(xmux,ybot)} [get_cells A/PCSPUF/bot{i}/c6LUT]")
    print(f"set_property LOC {sName.format(xmux,ybot)} [get_cells A/PCSPUF/bot{i}/d6LUT]")
    print(f"set_property LOC {sName.format(xmux,ybot)} [get_cells A/PCSPUF/bot{i}/muxOut]")
    

