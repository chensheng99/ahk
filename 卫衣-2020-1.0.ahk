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
WeiYi() {
    ; 第一次点击：X=1400, Y=275
    MouseMove(1400, 270) ; 移动鼠标到 X=1400, Y=275
    Sleep(200) ; 等待鼠标稳定
    Click              ; 模拟点击

    ; 按住 Shift 键
    Send("{Shift down}")
    Sleep(200) ; 稍作等待

    ; 第二次点击：X=1400, Y=400
    MouseMove(1400, 900) ; 移动鼠标到 X=1400, Y=400
    Sleep(200)
    Click               ; 模拟点击

    ; 释放 Shift 键
    Sleep(200)
    Send("{Shift up}")

    ; 按住 ctrl 键
    Send("{Ctrl down}")
    Sleep(220) ; 稍作等待

    MouseMove(1400, 430) ; 移动鼠标到 X=1400, Y=400
    Sleep(200)
    Click               ; 模拟点击

    ; 模拟 Ctrl + Shift + Alt + A
    Sleep(200)
    PressCtrlShiftAltA()

    Sleep(1500)
    MouseMove(1500, 910) ; 移动鼠标到 X=1400, Y=400
    Sleep(200)
    Click               ; 点击导出

    ; 按下tab键
    Sleep(500)
    Send("{Tab}")
    ; 按下回车键
    Sleep(500)
    Send("{Enter}")
    ; Sleep(200)
    ; Send("!{Up}") ; Alt + ↑ 返回上一层文件夹
    ; 第二次点击：X=1400, Y=400
    ; MouseMove(190, 100) ; 移动鼠标到 X=1400, Y=400
    ; Sleep(200)
    ; Click               ; 模拟点击
}

^Numpad2:: {
    ; 使用窗口类名
    ; WinActivate("ahk_class Photoshop")  ; 激活 Photoshop 窗口
    ; Sleep(300)
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")
    ; MouseMove(1480, 1000)
    ; Click
    ; quxiaoxuanze()
    MouseMove(1400, 1000)
    Click
    Sleep(200)

    WeiYi()
}
