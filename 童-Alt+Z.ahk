#Requires AutoHotkey v2.0

; 定义一个函数来模拟 Ctrl + Shift + Alt + A
PressCtrlShiftAltA() {
    Send("{Ctrl down}{Shift down}{Alt down}a{Alt up}{Shift up}{Ctrl up}")
}

; 童
MeiKeDu_T() {
    ; 第一次点击：X=1400, Y=275
    MouseMove(1400, 260) ; 移动鼠标到 X=1400, Y=275
    Sleep(220) ; 等待鼠标稳定
    Click              ; 模拟点击

    ; 按住 Shift 键
    Send("{Shift down}")
    Sleep(220) ; 稍作等待

    ; 第二次点击：X=1400, Y=400
    MouseMove(1400, 690) ; 移动鼠标到 X=1400, Y=400
    Sleep(220)
    Click               ; 模拟点击

    ; 释放 Shift 键
    Sleep(220)
    Send("{Shift up}")

    ; 按住 ctrl 键
    Send("{Ctrl down}")
    Sleep(220) ; 稍作等待

    ; 第三次点击：X=1400, Y=590
    MouseMove(1400, 590) ; 移动鼠标到 X=1400, Y=275
    Sleep(220) ; 等待鼠标稳定
    Click              ; 模拟点击

    ; 模拟 Ctrl + Shift + Alt + A
    Sleep(200)
    PressCtrlShiftAltA()

    Sleep(3200)
    ; 第二次点击：X=1400, Y=400
    MouseMove(1570, 960) ; 移动鼠标到 X=1400, Y=400
    Sleep(200)
    Click               ; 模拟点击

    ; 第二次点击：X=1400, Y=400
    MouseMove(190, 100) ; 移动鼠标到 X=1400, Y=400
    Sleep(200)
    Click               ; 模拟点击

    MouseMove(710,270)
}

!z:: {
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")
    MouseMove(1480, 1000)
    Click       
    Sleep(300)
    MeiKeDu_T()
    MouseMove(700, 200)
    Sleep(200)
    Click
}
