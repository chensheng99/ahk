#Requires AutoHotkey v2.0
; 定义一个函数来模拟 Ctrl + Shift + Alt + A
PressCtrlShiftAltA() {
    Send("{Ctrl down}{Shift down}{Alt down}a{Alt up}{Shift up}{Ctrl up}")
}
; 点击图层开白区域方便取消已选的图层
quxiaoxuanze() {
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")
    ; 取消选择图层
    MouseMove(1400, 950)
    Sleep(200)
    Click(2)
}
; 接收用户输入要执行多少次动作，并return返回
Cs() {
    CS := InputBox("输入你要循环多少次动作", "循环动作")
    return CS.Value
}
; 替换内容方法
TH() {
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
; 选择素材
XZ1() {
    MouseMove(240, 140) ; 选择图案素材包，这个X的坐标后面需要随用户的输入变化，需要用到循环，循环的次数要用户输入
    Sleep(200)
    Click(2)
    Sleep(200)
    MouseMove(450, 150) ;有三个文件的时候
    ; MouseMove(350, 150) ;有两个文件的时候
    Click(2)
}

F3:: {
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")

    ; 获取用户输入的循环次数
    CS := InputBox("输入你要循环多少次动作", "循环动作")

    ; 初始化 X 和 Y 坐标
    x := 240
    y := 140

    ; 开始循环
    loop CS.Value {
        ; 取消选择并替换内容
        quxiaoxuanze()
        Sleep(200)
        TH()
        Sleep(200)

        ; 选择素材（使用动态计算的坐标）
        MouseMove(x, y)
        Sleep(200)
        Click(2)
        Sleep(200)
        MouseMove(450, 150) ;有三个文件的时候
        ; MouseMove(350, 150) ;有两个文件的时候
        Click(2)

        ; 导出图片
        Sleep(2000)
        WeiYi()
        Sleep(3500)

        ; 更新 x 坐标，每次增加100，但从第二次起增加110
        x += (A_Index > 1) ? 110 : 100

        ; 如果达到9次，则换行，更新 Y 坐标，重置 X 坐标
        if (A_Index = 9) {
            y := 240  ; Y 坐标增加100
            x := 240  ; X 坐标重置为初始值
        }
    }
}
