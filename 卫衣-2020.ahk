﻿#Requires AutoHotkey v2.0

; 定义一个函数来模拟 Ctrl + Shift + Alt + A
PressCtrlShiftAltA() {
    Send("{Ctrl down}{Shift down}{Alt down}a{Alt up}{Shift up}{Ctrl up}")
}

; 取消选择图层
quxiaoxuanze() {
    ; 按下alt
    Send("!")
    Sleep(100)
    ; 按下s
    Send("s")
    Sleep(100)
    ; 按下s
    Send("s")
    Sleep(100)
}

; 美客多-男的导出
WeiYi() {
    ; 第一次点击：X=1400, Y=275
    MouseMove(1400, 250) ; 移动鼠标到 X=1400, Y=275
    Sleep(200) ; 等待鼠标稳定
    Click              ; 模拟点击

    ; 模拟向下滚动一次
    Send("{WheelDown}")
    Sleep(200) ; 稍作等待

    ; 按住 Shift 键
    Send("{Shift down}")
    Sleep(200) ; 稍作等待

    ; 第二次点击：X=1400, Y=400
    MouseMove(1400, 1000) ; 移动鼠标到 X=1400, Y=400
    Sleep(200)
    Click               ; 模拟点击

    ; 释放 Shift 键
    Sleep(200)
    Send("{Shift up}")

    ; 模拟向上滚动一次
    Send("{WheelUp}")
    Sleep(200) ; 稍作等待

    ; 模拟 Ctrl + Shift + Alt + A
    Sleep(200)
    PressCtrlShiftAltA()

    Sleep(3500)
    ; 第二次点击：X=1400, Y=400
    MouseMove(1472, 888) ; 移动鼠标到 X=1400, Y=400
    Sleep(200)
    Click               ; 点击导出

    Sleep(200)
    Send("!{Up}") ; Alt + ↑ 返回上一层文件夹
    ; ; 第二次点击：X=1400, Y=400
    ; MouseMove(190, 100) ; 移动鼠标到 X=1400, Y=400
    ; Sleep(200)
    ; Click               ; 模拟点击
}

^Numpad2:: {
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")
    ; MouseMove(1480, 1000)
    ; Click
    quxiaoxuanze()
    
    WeiYi()
    MouseMove(700, 200)
    Sleep(200)
    Click
}
