#Requires AutoHotkey v2.0

F8:: {
    ; 设置鼠标为屏幕坐标模式
    CoordMode("Mouse", "Screen")

    ; 调用封装的函数来执行三次点击操作
    PerformClicks()
    MouseMove(850, 80)
}

; 封装的函数，直接执行固定坐标的鼠标操作
PerformClicks() {
    ; 第一次点击：X=110, Y=15
    MouseMove(110, 15)
    Sleep(200)
    Click

    ; 第二次点击：X=350, Y=544
    MouseMove(350, 544)
    Sleep(200)
    Click

    ; 第三次点击：X=400, Y=540
    MouseMove(400, 540)
    Sleep(200)
    Click
}

/*
    MouseMove(1300, 80) ;
    Sleep(300)
    MouseMove(1200, 80) ;
    Sleep(300)
    MouseMove(1100, 80) ;
    Sleep(300)
    MouseMove(1000, 80) ;
    Sleep(300)
    MouseMove(850, 80) ;
    Sleep(300)
    MouseMove(750, 80) ;
    Sleep(300)
    MouseMove(650, 80) ;
    Sleep(300)
    MouseMove(500, 80) ;
    Sleep(300)
    MouseMove(350, 80) ;
    Sleep(300)
    MouseMove(250, 80) ;
    Sleep(300)
*/