CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
MC(a, b)
{
    MouseClick Left, %a%, %b%, 1, 0
}
Error(a, b, c, d, e)
{
    file := FileOpen("E:\1.txt", "a")
    file.Write(a . "`n")
    file.Write(b . "`n")
    file.Write(c . "`n")
    file.Write(d . "`n")
    file.Write(e . "`n")
    file.Close()
}
OpenXS(a)
{
    MC(a, 24)
    Sleep 200
    MC(400, 73)
    Sleep 200
    SendInput abc
    Sleep 200
    SendInput {Enter}
    Sleep 1000
}
ReOpen(a, b, c, d, e)
{
    MC(292, 17)
    Sleep 500
    MC(292, 17)
    Sleep 500
    MC(292, 17)
    Sleep 500
    MC(292, 17)
    Sleep 500
    MC(338, 23)
    Sleep 500
    MC(292, 17)
    Sleep 500
    MC(338, 23)
    Sleep 500
    MC(636, 23)
    Sleep 500
    MC(933, 23)
    Sleep 500
    MC(1233, 23)
    Sleep 500

    OpenXS(175)
    OpenXS(412)
    OpenXS(725)
    OpenXS(1032)
    OpenXS(1333)
}
Search(p, a)
{
    MC(p, 24)
    Sleep 200
    MC(491, 146)
    Sleep 500
    SendInput ^a
    Sleep 200
    SendInput %a%
    Sleep 200
    SendInput {Enter}
    Random, xa, 1000, 2500
    Sleep %xa%
}
Save(p, a)
{
    cnt := 0
    la1:
    If(cnt > 60)
        return 1
    MC(p, 24)
    Sleep 200
    PixelGetColor, cc, 39, 126
    IfEqual, cc, 0xFFFFFF
    {
        SendInput {F5}
        Sleep 1000
        cnt := cnt + 1
        Goto la1
    }
    actWin := WinExist("A")
    WinGetTitle, t1
    If(t1 <> a . " - Google 搜索 - Google Chrome")
    {
        Sleep 1000
        cnt := cnt + 1
        Goto la1
    }
    PixelGetColor, cc, 115, 59
    IfEqual, cc, 0xFFFFFF
    {
        Sleep 1000
        cnt := cnt + 1
        Goto la1
    }
    SendInput ^s
    Sleep 1000
    SendInput {Enter}
    Sleep 1000
    bk1:
    actWin := WinExist("A")
    WinGetTitle, t1
    IfEqual, t1, 另存为
    {
        SendInput {Enter}
        Sleep 1000
    }
    IfEqual, t1, 确认另存为
    {
        SendInput !n
        Sleep 1000
        SendInput {Esc}
        Sleep 1000
    }
    IfEqual, t1, 另存为
        Goto bk1
    IfEqual, t1, 确认另存为
        Goto bk1
}
Find(a, b, c, d, e)
{
    rst := 0
    ss:
    Search(175, a)
    Search(412, b)
    Search(725, c)
    Search(1032, d)
    Search(1333, e)

    tt:
    Sleep 1000

    x := Save(175, a)
    If(x > 0)
    {
        If(rst < 1)
        {
            ReOpen(a, b, c, d, e)
            rst := 1
            Goto ss
        }
        Else
        {
            SoundBeep, 523, 5000
            Error(a, b, c, d, e)
        }
    }

    x := Save(412, b)
    If(x > 0)
    {
        If(rst < 1)
        {
            ReOpen(a, b, c, d, e)
            rst := 1
            Goto ss
        }
        Else
        {
            SoundBeep, 523, 5000
            Error(a, b, c, d, e)
        }
    }
    x := Save(725, c)
    If(x > 0)
    {
        If(rst < 1)
        {
            ReOpen(a, b, c, d, e)
            rst := 1
            Goto ss
        }
        Else
        {
            SoundBeep, 523, 5000
            Error(a, b, c, d, e)
        }
    }
    x := Save(1032, d)
    If(x > 0)
    {
        If(rst < 1)
        {
            ReOpen(a, b, c, d, e)
            rst := 1
            Goto ss
        }
        Else
        {
            SoundBeep, 523, 5000
            Error(a, b, c, d, e)
        }
    }
    x := Save(1333, e)
    If(x > 0)
    {
        If(rst < 1)
        {
            ReOpen(a, b, c, d, e)
            rst := 1
            Goto ss
        }
        Else
        {
            SoundBeep, 523, 5000
            Error(a, b, c, d, e)
        }
    }

    Random, x, 100, 5000
    Sleep %x%
}
:*?:aaa::
Find("Motion planning","Multi-agent planning","Pebble motion problems","Planner (programming language)","Planning Domain Definition Language")
Find("Preference-based planning","Probabilistic roadmap","Process ontology","Quick Response Engine","Reactive planning")
Find("Satplan","Stanford Research Institute Problem Solver","Sussman anomaly","Scheduling (computing)","Adaptive partition scheduler")
Find("Affinity mask","Aging (scheduling)","ALTQ","Blocking (computing)","Coscheduling")
Random, x, 5000, 10000
Sleep %x%
Find("EatherWay","Flow shop scheduling","Idle (CPU)","Job shop scheduling","Kernel preemption")
Find("Light-weight process","Multikernel","Multiprocessor scheduling","Notation for theoretic scheduling problems","Resource allocation (computer)")
Find("Run queue","Schedule","Server hog","ULE scheduler","Job scheduling")
Find("Scheduling algorithms","Job scheduler","List of job scheduler software","Supervisor Monitoring Scheduler","Advanced Systems Concepts, Inc.")
Random, x, 5000, 10000
Sleep %x%
Find("AutoMan","Batch processing","BatchMan","BatchPipes","Beowulf cluster")
Find("CA Workload Automation AE","Command queue","Comparison of cluster software","Grid MP","Houston Automatic Spooling Priority")

Return