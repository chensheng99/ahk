#Requires AutoHotkey v2.0

; 定义一个函数来模拟 Ctrl + Shift + Alt + A
PressCtrlShiftAltA() {
    Send("{Ctrl down}{Shift down}{Alt down}a{Alt up}{Shift up}{Ctrl up}")
}

; 取消选择图层
quxiaoxuanze() {
    ; 按下alt+s
    Send("!s")
    Sleep(300)
    ; 按下s
    Send("s")
    Sleep(100)
    Send("v")
}

; 美客多-男的导出
MeiKeDu_M() {
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

    Sleep(2000)
    ; 第二次点击：X=1400, Y=400
    MouseMove(1500, 900) ; 移动鼠标到 X=1400, Y=400
    Sleep(200)
    Click               ; 模拟点击

    ; 第二次点击：X=1400, Y=400
    ; MouseMove(190, 100) ; 移动鼠标到 X=1400, Y=400
    Sleep(200)
    ; Click               ; 模拟点击
    Send("!{Up}") ; Alt + ↑ 返回上一层文件夹
}

^Numpad2:: {
    ; 使用窗口类名
    WinActivate("ahk_class Photoshop")  ; 激活 Photoshop 窗口
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")
    ; MouseMove(1480, 1000)
    ; Click
    quxiaoxuanze()

    MeiKeDu_M()
    MouseMove(700, 200)
    Sleep(200)
    Click
}
