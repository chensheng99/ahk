#Requires AutoHotkey v2.0

; 右键剪切收集图片
All() {
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")

    ; 第一次点击：X=3100, Y=1000
    MouseMove(3100, 1000) ; 移动鼠标到 X=3100, Y=1000
    ; Sleep(300)         ; 等待 300 毫秒
    Click              ; 模拟点击

    ; 全选
    Send("^a")          ; 模拟 Ctrl+A 全选
    ; 剪切
    Send("^x")          ; 模拟 Ctrl+X 剪切

    ; 第三次点击：X=2700, Y=1000
    MouseMove(2700, 1000) ; 移动鼠标到 X=2700, Y=1000
    Sleep(200)          ; 等待 200 毫秒
    Click               ; 模拟点击

    ; 粘贴
    Sleep(200)          ; 等待 200 毫秒
    Send("^v")          ; 模拟 Ctrl+V 粘贴
    ; 粘贴后刷新
    Sleep(200)          ; 等待 200 毫秒
    Send("{F5}")         ; 模拟 F5 刷新

    ; 第四次点击：X=1350, Y=235
    ; MouseMove(1350, 235) ; 移动鼠标到 X=1350, Y=235
    ; Sleep(200)          ; 等待 200 毫秒
    ; Click               ; 模拟点击
}
; 黑的
black() {
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")
    MouseMove(3100, 230) ; 移动鼠标到 X=3100, Y=1000
    Sleep(200)         ; 等待 200 毫秒
    Click              ; 模拟点击
    Send("{Ctrl down}") ; 按住 Ctrl 键
    MouseMove(3333, 230) ; 移动鼠标到 X=3100, Y=1000
    Sleep(200)         ; 等待 200 毫秒
    Click              ; 模拟点击
    MouseMove(3555, 230) ; 移动鼠标到 X=3100, Y=1000
    Sleep(200)         ; 等待 200 毫秒
    Click              ; 模拟点击
    MouseMove(3777, 230) ; 移动鼠标到 X=3100, Y=1000
    Sleep(200)         ; 等待 200 毫秒
    Click              ; 模拟点击
    MouseMove(3200, 350) ; 移动鼠标到 X=3100, Y=1000
    Sleep(200)         ; 等待 200 毫秒
    Click              ; 模拟点击
    MouseMove(3444, 350) ; 移动鼠标到 X=3100, Y=1000
    Sleep(200)         ; 等待 200 毫秒
    Click              ; 模拟点击
    MouseMove(3777, 350) ; 移动鼠标到 X=3100, Y=1000
    Sleep(200)         ; 等待 200 毫秒
    Click              ; 模拟点击
    Send("{Ctrl up}")   ; 释放 Ctrl 键
    ; 剪切
    Send("^x")          ; 模拟 Ctrl+X 剪切
    ; 第三次点击：X=2700, Y=1000
    MouseMove(2700, 1000) ; 移动鼠标到 X=2700, Y=1000
    Sleep(200)          ; 等待 200 毫秒
    Click               ; 模拟点击

    ; 粘贴
    Sleep(200)          ; 等待 200 毫秒
    Send("^v")          ; 模拟 Ctrl+V 粘贴
    ; 粘贴后刷新
    Sleep(200)          ; 等待 200 毫秒
    Send("{F5}")         ; 模拟 F5 刷新

}
; 白的
white() {
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")
    MouseMove(3200, 230) ; 移动鼠标到 X=3100, Y=1000
    Sleep(200)         ; 等待 200 毫秒
    Click              ; 模拟点击
    Send("{Ctrl down}") ; 按住 Ctrl 键
    MouseMove(3444, 230) ; 移动鼠标到 X=3100, Y=1000
    Sleep(200)         ; 等待 200 毫秒
    Click              ; 模拟点击
    MouseMove(3666, 230) ; 移动鼠标到 X=3100, Y=1000
    Sleep(200)         ; 等待 200 毫秒
    Click              ; 模拟点击
    MouseMove(3100, 350) ; 移动鼠标到 X=3100, Y=1000
    Sleep(200)         ; 等待 200 毫秒
    Click              ; 模拟点击
    MouseMove(3333, 350) ; 移动鼠标到 X=3100, Y=1000
    Sleep(200)         ; 等待 200 毫秒
    Click              ; 模拟点击
    MouseMove(3555, 350) ; 移动鼠标到 X=3100, Y=1000
    Sleep(200)         ; 等待 200 毫秒
    Click              ; 模拟点击
    MouseMove(3666, 350) ; 移动鼠标到 X=3100, Y=1000
    Sleep(200)         ; 等待 200 毫秒
    Click              ; 模拟点击
    MouseMove(3100, 470) ; 移动鼠标到 X=3100, Y=1000
    Sleep(200)         ; 等待 200 毫秒
    Click              ; 模拟点击
    Send("{Ctrl up}")   ; 释放 Ctrl 键
    ; 剪切
    Send("^x")          ; 模拟 Ctrl+X 剪切
    ; 第三次点击：X=2700, Y=1000
    MouseMove(2700, 1000) ; 移动鼠标到 X=2700, Y=1000
    Sleep(200)          ; 等待 200 毫秒
    Click               ; 模拟点击

    ; 粘贴
    Sleep(200)          ; 等待 200 毫秒
    Send("^v")          ; 模拟 Ctrl+V 粘贴
    ; 粘贴后刷新
    Sleep(200)          ; 等待 200 毫秒
    Send("{F5}")         ; 模拟 F5 刷新
}
^Numpad2:: {
    ; 使用窗口类名
    WinActivate("收集")  ; 激活 Photoshop 窗口
    ; 刷新
    Send("{F5}")         ; 模拟 F5 刷新
    ; 等待 200 毫秒
    Sleep(300)          ; 等待 200 毫秒
    ; All()
    ; black()
    white()
}
