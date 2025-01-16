#Requires AutoHotkey v2.0


; 定义一个函数来模拟 Ctrl + Shift + Alt + A
PressCtrlShiftAltA() {
    Send("{Ctrl down}{Shift down}{Alt down}a{Alt up}{Shift up}{Ctrl up}")
}

; 童
MeiKeDu_T() {
    MouseMove(1480, 1000)
    Click       
    Sleep(300)
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
}
F7::
{
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")
    WinActivate("童.psd")  ; 激活窗口
    MouseMove(1400, 210) ; 移动鼠标
    Click 
    Sleep(100)
    Send("^e")  ; Ctrl + E 替换内容
    Sleep(1000)
    ; Alt + ↑ 返回上一层文件夹
    Send("!{Up}")
    MouseMove(200, 140) ; 移动鼠标
    Sleep(1000)
    MouseMove(200, 160) ; 移动鼠标
    Sleep(1000)
    MouseMove(200, 180) ; 移动鼠标
    Sleep(1000)
    MouseMove(200, 200) ; 移动鼠标
    Sleep(1000)
    MouseMove(200, 220) ; 移动鼠标
    Sleep(1000)
    MouseMove(200, 240) ; 移动鼠标
    Sleep(1000)
    MouseMove(200, 260) ; 移动鼠标
    Sleep(1000)
    MouseMove(200, 280) ; 移动鼠标
    Sleep(1000)
    MouseMove(200, 300) ; 移动鼠标
    Sleep(1000)
    MouseMove(200, 320) ; 移动鼠标
    Sleep(1000)
    ; Sleep(3000)
    ; Click 2  ; 模拟鼠标双击
    ; MouseMove(230, 400) ; 移动鼠标
    ; Sleep(3000)
    ; Click 2  ; 模拟鼠标双击
    ; Sleep(300)
    ; MeiKeDu_T()
}
