﻿#Requires AutoHotkey v2.0

^Numpad0:: {
    ; 使用窗口类名
    WinActivate("ahk_class Photoshop")  ; 激活 Photoshop 窗口
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")
    MouseMove(1480, 1000)
    Click
    Sleep(200)
    ; MouseMove(1400, 240)
    MouseMove(1400, 210)
    Click
    Sleep(200)
    Send("^e")  ; Ctrl + E 替换内容
    Sleep(300)
    Send("!{Up}") ; Alt + ↑ 返回上一层文件夹
    MouseMove(700, 200)
    Sleep(200)
    Click
}
