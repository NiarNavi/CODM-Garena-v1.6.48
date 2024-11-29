function setValues(address, flags, value) gg.setValues({[1] = {address = address, flags = flags, value = value}}) end
il2cpp=gg.getRangesList("libunity.so")[1].start
anogs=gg.getRangesList("libanogs.so")[1].start

function Home()
Main = gg.choice({
"",
"Game features--Cheat Features",
"Exit script--Exit",
},nil, ("CODMGarena v2.0\nNearHoshinova CODM Garena script v2.0"))
if Main == 1 then bypass() end
if Main == 2 then cheat() end
if Main == 3 then Exit() end
ZC=-1
end

Features={
"Character Perspective--Wallhack",
"Auto-aiming firearms--Aimbot",
"Firearm range--Hitbox",
"Firearms without recoil--No recoil",
"Firearms Focus--No spread",
"Firearms switch in seconds--Fast switch",
"Zero second scope--Fast scope",
"Zero-second reload--Fast reload",
"Unlimited Ammo--Unlimited Ammo",
"Character acceleration--Speedhack",
"Rapid Fire for snipe",
"Skin Unlock--Unlock Skin",
"Skip tutorial--Skip tutorial",
"In-Game Report--Enable In-Game Report Button",
"Fullscreen Execution--Fullscreen Execution",
"Match with Emulator--Match with Emulator",
"Return to homepage--Back"}
function cheat()
Main2 = gg.multiChoice(Features, nil, "CODMGarena v2.0\nNearHoshinova CODM Garena script v2.0")
if Main2 == nil then else
if Main2[1] == true then wallhack() end
if Main2[2] == true then aimbots() end
if Main2[3] == true then hitbox() end
if Main2[4] == true then norecoil() end
if Main2[5] == true then nospread() end
if Main2[6] == true then fastswitch() end
if Main2[7] == true then fastscope() end
if Main2[8] == true then fastreload() end
if Main2[9] == true then unammo() end
if Main2[10] == true then speedhack() end
if Main2[11] == true then rapidfire() end
if Main2[12] == true then unlockskin() end
if Main2[13] == true then skiptutorial() end
if Main2[14] == true then EnableRpBtn() end
if Main2[15] == true then executionhack() end
if Main2[16] == true then matchemulator() end
if Main2[17] == true then HOME() end
end
ZC=-1
end

Wallhacks = {
    "Thermal Perspective--Wallhack Cham",
    "Hot red--Wallhack Cham Red",
    "Return to the previous page--Back"
}
function wallhack()
    F1 = gg.multiChoice(Wallhacks, nil, "CODMGarena v2.0\nNearHoshinova CODM Garena script v2.0")
    if F1 == nil then return end
    if F1[1] == true then wallhack1() end
    if F1[2] == true then wallhack2() end
    if F1[3] == true then cheat() end
    ZC = -1
end

function wallhack1()
    Wallhack = 0x81B778C + 0xCC
    if string.find(Wallhacks[1], "Already turned on") then
        setValues(il2cpp + Wallhack, 4, "~A8 TBZ X0, #0x0, [PC,#0x10]")
        gg.toast("Thermal fluoroscopy is closed successfully")
        Wallhacks[1] = "Thermal fluoroscopy--Wallhack Cham[已关闭/OFF]"
    else
        setValues(il2cpp + Wallhack, 4, "~A8 NOP")
        gg.toast("Thermal fluoroscopy started successfully")
        Wallhacks[1] = "Thermal fluoroscopy--Wallhack Cham[turned on/ON]"
    end
end

function wallhack2()
    Wallhack2 = 0x7B18098
    if string.find(Wallhacks[2], "Already turned on") then
        setValues(il2cpp + Wallhack2, 4, "~A8 LDRB W0, [X0,#0x160]")
        gg.toast("Hot through red closed successfully")
        Wallhacks[2] = "Hot red--Wallhack Cham Red[closed/OFF]"
    else
        setValues(il2cpp + Wallhack2, 4, "~A8 MOV W0, #0x1")
        gg.toast("Hot red is opened successfully")
        Wallhacks[2] = "Hot red--Wallhack Cham Red[turned on/ON]"
    end
end



Aimbots = {
    "Conventional self-aim--Aimbot strong",
    "Self-adjustable aimbot1--Adjustable aimbot1",
    "Self-adjustable aimbot2--Adjustable aimbot2",
    "Return to the previous page--Back"
}
function aimbots()
    F2 = gg.multiChoice(Aimbots, nil, "CODMGarena v2.0\nNearHoshinova CODM Garena script v2.0")
    if F2 == nil then return end
    if F2[1] == true then aimbot1() end
    if F2[2] == true then aimbot2() end
    if F2[3] == true then aimbot3() end
    if F2[4] == true then cheat() end
    ZC = -1
end

function aimbot1()
    Aimbot1 = 0x8FE3BB8
    Aimbot2 = 0x8FE4058
    if string.find(Aimbots[1], "Already turned on") then
        setValues(il2cpp + Aimbot1, 32, "hE923BC6DF65701A9")
        setValues(il2cpp + Aimbot1+ 0x8, 4, "hF44F02A9")
        setValues(il2cpp + Aimbot2, 32, "hEB2BB96DE923016D")
        setValues(il2cpp + Aimbot2+ 0x8, 4, "hF91300F9")
        gg.toast("Regular self-aim closed successfully")
        Aimbots[1] = "Normal auto-aim--Aimbot strong[closed/OFF]"else
        setValues(il2cpp + Aimbot1, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Aimbot1 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Aimbot1 + 0x8, 16, 0.00001)
        setValues(il2cpp + Aimbot2, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Aimbot2 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Aimbot2 + 0x8, 16, 50)
        gg.toast("Regular self-aim turned on successfully")
        Aimbots[1] = "Normal auto-aim--Aimbot strong[enabled/ON]"
    end
end

function aimbot2()
   Aimbot1 = 0x8FE3BB8
    if string.find(Aimbots[2], "Already turned on") then
        setValues(il2cpp + Aimbot1, 32, "hE923BC6DF65701A9")
        setValues(il2cpp + Aimbot1+ 0x8, 4, "hF44F02A9")
        gg.toast("Auto-adjusting and aiming 1 closed successfully")
        Aimbots[2] = "Self-adjusting aimbot1--Adjustable aimbot1[closed/OFF]"
    else
        setValues(il2cpp + Aimbot1, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Aimbot1 + 0x4, 4, "~A8 RET")
        aimbot =gg.prompt({"Adjustable aimbot for smg lmg assault\nRecommand range0.00009~3"},nil,{"number"})
        setValues(il2cpp + Aimbot1 + 0x8, 16, aimbot[1])
        Aimbots[2] = "Self-adjusting aimbot1--Adjustable aimbot1[turned on/ON]"
    end
end

function aimbot3()
   Aimbot2 = 0x8FE4058
    if string.find(Aimbots[3], "Already turned on") then
        setValues(il2cpp + Aimbot2, 32, "hEB2BB96DE923016D")
        setValues(il2cpp + Aimbot2+ 0x8, 4, "hF91300F9")
        gg.toast("Auto-adjustment and auto-aim 2 closed successfully")
        Aimbots[3] = "Self-adjusting aimbot2--Adjustable aimbot2[closed/OFF]"
    else
        setValues(il2cpp + Aimbot2, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Aimbot2 + 0x4, 4, "~A8 RET")
        aimlock =gg.prompt({"Adjustable aimlock for sniper shotgun\nAdjustable aimlock for sniper shotgun\nRecommand range5~50"},nil,{"number"})
        setValues(il2cpp + Aimbot2 + 0x8, 16, aimlock[1])
        gg.toast("Self-adjusting and self-aiming 2 is successfully launched")
        Aimbots[3] = "Self-adjusting aimbot2--Adjustable aimbot2[turned on/ON]"
    end
end

function hitbox()
    Hitbox1 = 0x9102C30
    Hitbox2 = 0x9135178
    if string.find(Features[3], "已开启") then
        setValues(il2cpp + Hitbox1, 32, "hEE0F18FCED33016D")
        setValues(il2cpp + Hitbox2, 32, "hFFC302D1ED33026D")
        gg.toast("Firearm range closed successfully")
        Features[3] = "Firearms range--Hitbox[closed/OFF]"
    else
        setValues(il2cpp + Hitbox1, 4, "~A8 MOV	 X0, #0x9")
        setValues(il2cpp + Hitbox1 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Hitbox2, 4, "~A8 MOV	 X0, #0x9")
        setValues(il2cpp + Hitbox2 + 0x4, 4, "~A8 RET")
        gg.toast("Firearm range opened successfully")
        Features[3] = "Firearm range--Hitbox[enabled/ON]"
    end
end

function norecoil()
    Recoil1 = 0x913BFB0
    if string.find(Features[4], "已开启") then
        setValues(il2cpp + Recoil1, 32, "hE80F1DFCF44F01A9")
        setValues(il2cpp + Recoil1 + 0x8, 4, "hFD7B02A9")
        gg.toast("Closed successfully after gun is gone")
        Features[4] = "Firearms have no recoil--No recoil[ON]"
    else
        setValues(il2cpp + Recoil1, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Recoil1 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Recoil1 + 0x8, 16, 0.00001)
        gg.toast("The gun is opened successfully without any hindrance.")
        Features[4] = "Firearms have no recoil--No recoil[ON]"
    end
end

function nospread()
    Spread1 = 0x913A970 + 0x11C
    Spread2 = 0x913A970 + 0x124
    Spread3 = 0x913A970 + 0x128
    Spread4 = 0x913A970 + 0x13C
    Spread5 = 0x913A970 + 0x144
    Spread6 = 0x913A970 + 0x164
    Spread7 = 0x914C90C + 0xBC
    Spread8 = 0x914C90C + 0xE4
    Spread9 = 0x914C90C + 0xEC
    Spread10 = 0x914C90C + 0xF0
    Crosshair = 0x901C5EC
    if string.find(Features[5], "Already turned on") then
        setValues(il2cpp + Spread1, 4, "h6EFDFF97")
        setValues(il2cpp + Spread2, 4, "h091CA04E")
        setValues(il2cpp + Spread3, 4, "h6BFDFF97")
        setValues(il2cpp + Spread4, 4, "h05FFFF97")
        setValues(il2cpp + Spread5, 4, "h081CA04E")
        setValues(il2cpp + Spread6, 4, "h00013FD6")
        setValues(il2cpp + Spread7, 4, "h9FB5FF97")
        setValues(il2cpp + Spread8, 4, "h00013FD6")
        setValues(il2cpp + Spread9, 4, "h0A1CA04E")
        setValues(il2cpp + Spread10, 4, "h31B7FF97")
        setValues(il2cpp + Crosshair, 32, "h00A449BDC0035FD6")
        gg.toast("Gun gathering point closed successfully")
        Features[5] = "Gun focus--No spread[closed/OFF]"
    else
        setValues(il2cpp + Spread1, 4, "~A8 NOP")
        setValues(il2cpp + Spread2, 4, "~A8 NOP")
        setValues(il2cpp + Spread3, 4, "~A8 NOP")
        setValues(il2cpp + Spread4, 4, "~A8 NOP")
        setValues(il2cpp + Spread5, 4, "~A8 NOP")
        setValues(il2cpp + Spread6, 4, "~A8 NOP")
        setValues(il2cpp + Spread7, 4, "~A8 NOP")
        setValues(il2cpp + Spread8, 4, "~A8 NOP")
        setValues(il2cpp + Spread9, 4, "~A8 NOP")
        setValues(il2cpp + Spread10, 4, "~A8 NOP")
        setValues(il2cpp + Crosshair, 32, "h20008052C0035FD6")
        gg.toast("Gun gathering point opened successfully")
        Features[5] = "Gun focus--No spread[ON]"
    end
end

function fastswitch()
    Fastswitch1 = 0x8FC2D04
    Fastswitch2 = 0x8E402C8
    if string.find(Features[6], "已开启") then
        setValues(il2cpp + Fastswitch1, 32, "hE80F1DFCF44F01A9")
        setValues(il2cpp + Fastswitch1 + 0x8, 4, "hFD7B02A9")
        setValues(il2cpp + Fastswitch2, 32, "hE80F1DFCF44F01A9")
        setValues(il2cpp + Fastswitch2 + 0x8, 4, "hFD7B02A9")
        gg.toast("Firearms switched off successfully")
        Features[6] = "Firearms switch in seconds--Fast switch[closed/OFF]"
    else
        setValues(il2cpp + Fastswitch1, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Fastswitch1 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Fastswitch1 + 0x8, 16, 0.00001)
        setValues(il2cpp + Fastswitch2, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Fastswitch2 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Fastswitch2 + 0x8, 16, 0.00001)
        gg.toast("Firearms instant switching enabled successfully")
        Features[6] = "Firearms switch in seconds--Fast switch[turned on/ON]"
    end
end

function fastscope()
    Rapidfire1 = 0x8FC055C
    Rapidfire2 = 0x8FC0450
    if string.find(Features[7], "已开启") then
        setValues(il2cpp + Rapidfire1, 32, "hE80F1DFCF44F01A9")
        setValues(il2cpp + Rapidfire1 + 0x8, 4, "hFD7B02A9")
        setValues(il2cpp + Rapidfire2, 32, "hE80F1DFCF44F01A9")
        setValues(il2cpp + Rapidfire2 + 0x8, 4, "hFD7B02A9")
        gg.toast("Zero second mirror opening and closing successful")
        Features[7] = "Zero second scope--Fast scope[closed/OFF]"
    else
        setValues(il2cpp + Rapidfire1, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Rapidfire1 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Rapidfire1 + 0x8, 16, 0.00001)
        setValues(il2cpp + Rapidfire2, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Rapidfire2 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Rapidfire2 + 0x8, 16, 0.00001)
        gg.toast("Zero-second mirror opening successfully")
        Features[7] = "Zero second scope--Fast scope[on]"
    end
end

function fastreload()
    Fastreload1 = 0x90FB440
    Fastreload2 = 0x90FB54C
    Fastreload3 = 0x90FB658
    Fastreload4 = 0x90FB74C
    Fastreload5 = 0x90FB840
    Fastreload6 = 0x90FB934
    Fastreload7 = 0x90FBA28
    if string.find(Features[8], "Already turned on") then
        setValues(il2cpp + Fastreload1, 32, "hE80F1DFCF44F01A9")
        setValues(il2cpp + Fastreload1 + 0x8, 4, "hFD7B02A9")
        setValues(il2cpp + Fastreload2, 32, "hE80F1DFCF44F01A9")
        setValues(il2cpp + Fastreload2 + 0x8, 4, "hFD7B02A9")
        setValues(il2cpp + Fastreload3, 32, "hE80F1DFCF44F01A9")
        setValues(il2cpp + Fastreload3 + 0x8, 4, "hFD7B02A9")
        setValues(il2cpp + Fastreload4, 32, "hE80F1DFCF44F01A9")
        setValues(il2cpp + Fastreload4 + 0x8, 4, "hFD7B02A9")
        setValues(il2cpp + Fastreload5, 32, "hE80F1DFCF44F01A9")
        setValues(il2cpp + Fastreload5 + 0x8, 4, "hFD7B02A9")
        setValues(il2cpp + Fastreload6, 32, "hE80F1DFCF44F01A9")
        setValues(il2cpp + Fastreload6 + 0x8, 4, "hFD7B02A9")
        setValues(il2cpp + Fastreload7, 32, "hE80F1DFCF44F01A9")
        setValues(il2cpp + Fastreload7 + 0x8, 4, "hFD7B02A9")
        gg.toast("Zero-second reload is closed successfully")
        Features[8] = "Zero-second reload--Fast reload[closed/OFF]"
    else
        setValues(il2cpp + Fastreload1, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Fastreload1 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Fastreload1 + 0x8, 16, 0.00001)
        setValues(il2cpp + Fastreload2, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Fastreload2 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Fastreload2 + 0x8, 16, 0.00001)
        setValues(il2cpp + Fastreload3, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Fastreload3 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Fastreload3 + 0x8, 16, 0.00001)
        setValues(il2cpp + Fastreload4, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Fastreload4 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Fastreload4 + 0x8, 16, 0.00001)
        setValues(il2cpp + Fastreload5, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Fastreload5 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Fastreload5 + 0x8, 16, 0.00001)
        setValues(il2cpp + Fastreload6, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Fastreload6 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Fastreload6 + 0x8, 16, 0.00001)
        setValues(il2cpp + Fastreload7, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Fastreload7 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Fastreload7 + 0x8, 16, 0.00001)
        gg.toast("Zero-second reload is successfully enabled")
        Features[8] = "Zero-second reload--Fast reload[enabled/ON]"
    end
end

function unammo()
    unammo1 = 0x8FC2084
    if string.find(Features[9], "已开启") then
        setValues(il2cpp + unammo1, 32, "hF50F1DF8F44F01A9")
        gg.toast("Infinite bullets closed successfully")
        Features[9] = "Unlimited Ammo--Unlimited Ammo[closed/OFF]"
    else
        setValues(il2cpp + unammo1, 32, "h00008052C0035FD6")
        gg.toast("Infinite bullets enabled successfully")
        Features[9] = "Unlimited Ammo--Unlimited Ammo[ON]"
    end
end

Speedhacks = {
    "Character acceleration--Speedhack",
    "Slide speed",
    "Return to the previous page--Back"
}
function speedhack()
    F3 = gg.multiChoice(Speedhacks, nil, "CODMGarena v2.0\nNearHoshinova CODM Garena script v2.0")
    if F3 == nil then return end
    if F3[1] == true then speedhack1() end
    if F3[2] == true then speedhack2() end
    if F3[3] == true then cheat() end
    ZC = -1
end

function speedhack1()
    Speedhack1 = 0x808A910
    if string.find(Speedhacks[1], "Already turned on") then
        setValues(il2cpp + Speedhack1, 32, "hF50F1DF8F44F01A9")
        gg.toast("Character acceleration closed successfully")
        Speedhacks[1] = "Character acceleration--Speedhack[closed/OFF]"
    else
        setValues(il2cpp + Speedhack1, 32, "h0010201EC0035FD6")
        gg.toast("Character acceleration enabled successfully")
        Speedhacks[1] = "Character acceleration--Speedhack[enabled/ON]"
    end
end

function speedhack2()
    Speedhack2 = 0x8DD2B6C
    if string.find(Speedhacks[2], "已开启") then
        setValues(il2cpp + Speedhack2, 32, "h0870433909128052")
        setValues(il2cpp + Speedhack2 + 0x8, 4, "h1F010071")
        gg.toast("Slide shovel acceleration closed successfully")
        Speedhacks[2] = "Slide speed[closed/OFF]"
    else
        setValues(il2cpp + Speedhack2, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Speedhack2 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Speedhack2 + 0x8, 16, 1000)
        gg.toast("Slide shovel acceleration turned on successfully")
        Speedhacks[2] = "Slide acceleration--Slide speed[on]"
    end
end

function rapidfire()
    Rapidfire1 = 0x8FF9E8C
    Rapidfire2 = 0x90F9F14
    Rapidfire3 = 0x90099B0
    if string.find(Features[11], "Already turned on") then
        setValues(il2cpp + Rapidfire1, 32, "hF30F1EF8FD7B01A9")
        setValues(il2cpp + Rapidfire1 + 0x8, 4, "hFD430091")
        setValues(il2cpp + Rapidfire2, 32, "hE923BC6DF50B00F9")
        setValues(il2cpp + Rapidfire2 + 0x8, 4, "hF44F02A9")
        setValues(il2cpp + Rapidfire3, 32, "hE80F1DFCF44F01A9")
        setValues(il2cpp + Rapidfire3 + 0x8, 4, "hFD7B02A9")
        gg.toast("Sniper burst closed successfully")
        Features[11] = "Sniper burst--Rapid Fire for snipe[closed/OFF]"
    else
        setValues(il2cpp + Rapidfire1, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Rapidfire1 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Rapidfire1 + 0x8, 16, 0.0001)
        setValues(il2cpp + Rapidfire2, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Rapidfire2 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Rapidfire2 + 0x8, 16, 0.01)
        setValues(il2cpp + Rapidfire3, 4, "~A8 LDR	 S0, [PC,#0x8]")
        setValues(il2cpp + Rapidfire3 + 0x4, 4, "~A8 RET")
        setValues(il2cpp + Rapidfire3 + 0x8, 16, 0.0001)
        gg.toast("Sniper burst activated successfully")
        Features[11] = "Sniper burst--Rapid Fire for snipe[ON]"
    end
end

function unlockskin()
    Unlockskin1 = 0x7BD92D8
    Unlockskin2 = 0x7BE125C
    if string.find(Features[12], "已开启") then
        setValues(il2cpp + Unlockskin1, 32, "hF30F1EF8FD7B01A9")
        setValues(il2cpp + Unlockskin2, 32, "hF30F1EF8FD7B01A9")
        gg.toast("Skin unlock closed successfully")
        Features[12] = "Skin unlock--Unlock Skin[closed/OFF]"
    else
        setValues(il2cpp + Unlockskin1, 32, "h20008052C0035FD6")
        setValues(il2cpp + Unlockskin2, 32, "h20008052C0035FD6")
        gg.toast("Skin unlocking enabled successfully")
        Features[12] = "Skin unlock--Unlock Skin[turned on/ON]"
    end
end

function skiptutorial()
    Skip1 = 0x85141B4
    Skip2 = 0x8558300
    if string.find(Features[13], "Already turned on") then
        setValues(il2cpp + Skip1, 32, "hF30F1EF8FD7B01A9")
        setValues(il2cpp + Skip2, 32, "hF30F1EF8FD7B01A9")
        gg.toast("Skip novice close successfully")
        Features[13] = "Skip novice--Skip tutorial[closed/OFF]"
    else
        setValues(il2cpp + Skip1, 32, "h00008052C0035FD6")
        setValues(il2cpp + Skip2, 32, "h00008052C0035FD6")
        gg.toast("Skip newbie and start successfully")
        Features[13] = "Skip novice--Skip tutorial[on]"
    end
end

function EnableRpBtn()
    EnableRp = 0x78EEE3C
    if string.find(Features[14], "Already turned on") then
        setValues(il2cpp + EnableRp, 32, "hF30F1EF8FD7B01A9")
        gg.toast("Internal report closed successfully")
        Features[14] = "In-Game Report--Enable In-Game Report Button[Close/OFF]"
    else
        setValues(il2cpp + EnableRp, 32, "h20008052C0035FD6")
        gg.toast("Internal report opened successfully")
        Features[14] = "In-Game Report--Enable In-Game Report Button[ON]"
    end
end

function executionhack()

end

function matchemulator()
    Emulator = 0x43CABB0
    if string.find(Features[16], "已开启") then
        setValues(il2cpp + Emulator, 32, "hF44FBEA9FD7B01A9")
        gg.toast("Matching simulator closed successfully")
        Features[16] = "Match emulator--Match with Emulator[closed/OFF]"
    else
        setValues(il2cpp + Emulator, 32, "h20008052C0035FD6")
        gg.toast("Matching simulator started successfully")
        Features[16] = "Match emulator--Match with Emulator[ON]"
    end
end

function Exit()
os.exit()
end

while true do
  if gg.isVisible(true) then
    ZC = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if ZC == 1 then
    Home()
  end
end