#Requires AutoHotkey v2.0

F9:: {
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
