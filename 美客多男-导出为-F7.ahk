#Requires AutoHotkey v2.0

; 定义一个函数来模拟 Ctrl + Shift + Alt + A
PressCtrlShiftAltA() {
    Send("{Ctrl down}{Shift down}{Alt down}a{Alt up}{Shift up}{Ctrl up}")
}

; 美客多-男的导出
MeiKeDu_M() {
    ; 第一次点击：X=1400, Y=275
    MouseMove(1400, 250) ; 移动鼠标到 X=1400, Y=275
    Sleep(100) ; 等待鼠标稳定
    Click              ; 模拟点击

    ; 按住 Shift 键
    Send("{Shift down}")
    Sleep(100) ; 稍作等待

    ; 第二次点击：X=1400, Y=400
    MouseMove(1400, 551) ; 移动鼠标到 X=1400, Y=400
    Sleep(100)
    Click               ; 模拟点击

    ; 释放 Shift 键
    Sleep(100)
    Send("{Shift up}")

    ; 模拟 Ctrl + Shift + Alt + A
    Sleep(200)
    PressCtrlShiftAltA()

    Sleep(3000)
    ; 第二次点击：X=1400, Y=400
    MouseMove(1570, 960) ; 移动鼠标到 X=1400, Y=400
    Sleep(100)
    Click               ; 模拟点击

    ; 第二次点击：X=1400, Y=400
    MouseMove(190, 100) ; 移动鼠标到 X=1400, Y=400
    Sleep(100)
    Click               ; 模拟点击
}

F7:: {
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")
    MouseMove(1480, 1000)
    Click       
    MeiKeDu_M()
}
