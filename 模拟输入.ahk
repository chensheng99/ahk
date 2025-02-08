; #Requires AutoHotkey v2.0

; F2:: {
; ;     password := InputBox("(请输入你要执行多少次动作)", "循环动作", "password").value
; ;     ; 输出用户输入的内容
; ;     MsgBox("准备循环: "  password  "次")
; CS := InputBox("输入你要循环多少次动作", "循环动作",  "w640 h480")
; if CS.Result = "OK"
;     MsgBox "You entered '" CS.Value "' but then cancelled."
; else
;     MsgBox "You entered '" CS.Value "'."
; }


    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")
    CS := InputBox("输入你要循环多少次动作", "循环动作")
    ; 初始化 X 和 Y 坐标
    x := 240
    y := 150  ; 初始 Y 坐标为 150
    
    ; 循环执行鼠标移动和等待
    Loop CS.Value  ; 循环18次，共两行
    {
        MouseMove(x, y)  ; 移动鼠标到指定坐标
        Sleep(1000)  ; 等待1秒
        
        ; 更新 x 坐标，每次增加100，但从第二次起增加110
        x += (A_Index > 1) ? 110 : 100  ; 第二次及之后的增加110
        
        ; 如果达到9次，则换行，更新 Y 坐标为250，重置 X 坐标
        if (A_Index = 9) {
            y := 250  ; Y 坐标变成250
            x := 240  ; X 坐标重置为240
        }
    }

