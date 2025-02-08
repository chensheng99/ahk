#Requires AutoHotkey v2.0
; 定义一个函数来模拟 Ctrl + Shift + Alt + A
PressCtrlShiftAltA() {
    Send("{Ctrl down}{Shift down}{Alt down}a{Alt up}{Shift up}{Ctrl up}")
}
; 取消选择图层方法
quxiaoxuanze() {
    ; 按下alt+s
    Send("!s")
    Sleep(300)
    ; 按下s
    Send("s")
    Sleep(100)
    Send("v")
}
; 替换内容方法
TH() {
    ; 使用窗口类名
    WinActivate("ahk_class Photoshop")  ; 激活 Photoshop 窗口
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")
    quxiaoxuanze()
    Sleep(200)
    MouseMove(1400, 230)
    Sleep(200)
    Click
    Sleep(200)
    Send("^e")  ; Ctrl + E 替换内容
    Sleep(300)
    Send("!{Up}") ; Alt + ↑ 返回上一层文件夹
}
; 导出图片方法
WeiYi() {
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")
    ; 使用窗口类名
    WinActivate("ahk_class Photoshop")  ; 激活 Photoshop 窗口
    ; 取消选择图层
    quxiaoxuanze()
    Sleep(300)

    MouseMove(1400, 270) ; 移动鼠标到 X=1400, Y=270
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
    Sleep(200)
    Send("{Tab}")
    ; 按下回车键
    Sleep(200)
    Send("{Enter}")
    ; Sleep(200)
    ; Send("!{Up}") ; Alt + ↑ 返回上一层文件夹
    ; 第二次点击：X=1400, Y=400
    ; MouseMove(190, 100) ; 移动鼠标到 X=1400, Y=400
    ; Sleep(200)
    ; Click               ; 模拟点击
}
; 循环方法
XH() {
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")
    CS := InputBox("输入你要循环多少次动作", "循环动作")
    ; 初始化 X 和 Y 坐标
    x := 240
    y := 150  ; 初始 Y 坐标为 150

    ; 循环执行鼠标移动和等待
    loop CS.Value  ; 循环次数
    {
        Sleep(200)
        MouseMove(x, y)  ; 移动鼠标到指定坐标的素材
        Sleep(200)
        Click(2) ; 双击进入素材文件夹
        Sleep(200)
        ; 选择素材
        XZ()
        Sleep(3000)  ; 等待

        
        ; 更新 x 坐标，每次增加100，但从第二次起增加110
        x += (A_Index > 1) ? 110 : 100  ; 第二次及之后的增加110
        ; 如果达到9次，则换行，更新 Y 坐标为250，重置 X 坐标
        if (A_Index = 9) {
            y := 250  ; Y 坐标变成250
            x := 240  ; X 坐标重置为240
        }
    }
}
; 选择素材方法
XZ() {
    MouseMove(455, 155)  ; 移动鼠标到黑白-cyc.png图片
    Click
    Sleep(200)
    Send("{Enter}")  ; 按下回车键置入到ps模板
}

F3:: {
    XH()
}
