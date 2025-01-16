#Requires AutoHotkey v2.0

; 定义一个函数来模拟 Ctrl + Shift + Alt + A
PressCtrlShiftAltA() {
    Send("{Ctrl down}{Shift down}{Alt down}a{Alt up}{Shift up}{Ctrl up}")
}

; 斌哥图片的导出
BinGe() {
    ; 第一次点击：X=1400, Y=275
    MouseMove(1400, 250) ; 移动鼠标到 X=1400, Y=275
    Sleep(100) ; 等待鼠标稳定
    Click              ; 模拟点击

    ; 按住 Shift 键
    Send("{Shift down}")
    Sleep(100) ; 稍作等待

    ; 第二次点击：X=1400, Y=400
    MouseMove(1400, 370) ; 移动鼠标到 X=1400, Y=400
    Sleep(100)
    Click               ; 模拟点击

    ; 释放 Shift 键
    Sleep(100)
    Send("{Shift up}")

    ; 模拟 Ctrl + Shift + Alt + A
    Sleep(200)
    PressCtrlShiftAltA()

    Sleep(1200)
    ; Sleep(1000)
    ; 第二次点击：X=1400, Y=400
    MouseMove(1570, 960) ; 移动鼠标到 X=1400, Y=400
    Sleep(100)
    Click               ; 模拟点击
    
    Sleep(300)
    ; Alt + ↑ 返回上一层文件夹
    Send("!{Up}")
}


F5:: {
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")
    MouseMove(1480, 1000)
    Click       
    BinGe()
    MouseMove(700, 200)
    Click       
}


