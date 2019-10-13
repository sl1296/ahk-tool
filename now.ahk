;通用函数
#NoTrayIcon
SetTitleMatchMode RegEx
PBS(a)
{
    actWin := WinExist("A")
    WinGet, t3, ProcessName
    IfNotEqual, t3, Explorer.EXE
        SendInput {BS %a%}
}


;修改功能相关
:*?b0:sshelp::
:*?b0:qhhelp::
PBS(6)
IfWinExist, ^AutoHotkey 中文帮助$ ahk_class HH Parent ahk_exe hh.exe
    WinActivate
Else
    Run E:\software\ahk\autohotkey\AutoHotkey_cn.chm
Return
:*?b0:ssedit::
PBS(6)
Run E:\software\ahk\
Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\
Run notepad E:\software\ahk\wait.ahk
IfWinExist, ^now.ahk - 记事本$ ahk_class Notepad ahk_exe notepad.exe
    WinActivate
Else
    Run notepad E:\software\ahk\now.ahk
Return
:*?b0:qhedit::
PBS(6)
IfWinExist, ^now.ahk - 记事本$ ahk_class Notepad ahk_exe notepad.exe
    WinActivate
Else
    Run notepad E:\software\ahk\now.ahk
Return
:*?b0:ssck::
PBS(4)
Run C:\Program Files\AutoHotkey\WindowSpy.ahk
Return
:*?b0:ssload::
PBS(6)
Reload
Return


;常用路径
:*?b0:qhdir::
PBS(5)
IfWinExist, ahk_exe Explorer.EXE
    WinActivate
Return
:*?b0:ssxz::
:*?b0:qhxz::
PBS(4)
Run E:\download\
Return
:*?b0:ssqxz::
:*?b0:qhqxz::
PBS(5)
Run E:\software\QQMsg\1104838429\FileRecv\
Return
:*?b0:ssqsj::
:*?b0:qhqsj::
PBS(5)
Run E:\software\QQMsg\1104838429\FileRecv\MobileFile\
Return
:*?b0:ssqtp::
:*?b0:qhqtp::
PBS(5)
Run E:\software\QQMsg\1104838429\Image\
Return


;基础工具相关
:*?b0:sshsz::
PBS(5)
Run explorer.exe ::{645FF040-5081-101B-9F08-00AA002F954E}
Return
:*?b0:qhhsz::
PBS(5)
IfWinExist, ^回收站$ ahk_class CabinetWClass ahk_exe explorer.exe
    WinActivate
Else
    Run explorer.exe ::{645FF040-5081-101B-9F08-00AA002F954E}
Return
:*?b0:sskzmb::
:*?b0:qhkzmb::
PBS(6)
Run control
Return
:*?b0:sscmd::
PBS(5)
Run cmd
Return
:*?b0:qhcmd::
PBS(5)
IfWinExist, ^C:\\Windows\\system32\\cmd.exe$ ahk_class ConsoleWindowClass ahk_exe cmd.exe
    WinActivate
Else
    Run cmd
Return
:*?b0:sspz::
:*?b0:qhpz::
PBS(4)
Run microsoft.windows.camera:
MouseMove, 1162, 672, 0
Return
:*?b0:ssjsq::
PBS(5)
Run calc
Return
:*?b0:qhjsq::
PBS(5)
IfWinExist, ^计算器$ ahk_class ApplicationFrameWindow ahk_exe ApplicationFrameHost.exe
    WinActivate
Else
    Run calc
Return
:*?b0:ssfy::
:*?b0:qhfy::
PBS(4)
Run C:\Program Files (x86)\Dict\YoudaoDict.exe
Return
:*?b0:sslp::
:*?b0:qhlp::
PBS(4)
IfWinExist, ahk_class Qt5QWindowIcon ahk_exe obs64.exe
    WinActivate
Else
    Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\OBS Studio\OBS Studio (64bit)
Return
:*?b0:ssyckz::
:*?b0:qhyckz::
PBS(6)
IfWinExist, ^TeamViewer$ ahk_class #32770 ahk_exe TeamViewer.exe
    WinActivate
Else
    Run E:\software\teamviewer\TeamViewer.exe
Return
:*?b0:ssypjc::
:*?b0:qhypjc::
PBS(6)
IfWinExist, ^CrystalDiskInfo 8.0.0 x64$ ahk_class #32770 ahk_exe DiskInfo64.exe
    WinActivate
Else
    Run E:\software\硬盘状态监视器(CrystalDiskInfo8.0.0)中文精简绿色便携版\DiskInfo64.exe
Return
:*?b0:ssvpn::
:*?b0:qhvpn::
PBS(5)
IfWinExist, ^Cisco AnyConnect Secure Mobility Client$ ahk_class #32770 ahk_exe vpnui.exe
    WinActivate
Else
    Run C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpnui.exe
Return
:*?b0:sssf::
:*?b0:qhsf::
PBS(4)
Run E:\software\赛风翻墙.exe
Return
OpenFQ()
{
    SendInput #r
    Sleep 100
    SendInput C:\Program Files (x86)\18jiasu\18jiasu.exe{Enter}
    Sleep 1000
    SendInput {Left}{Enter}
}
:*?b0:ssfq::
:*?b0:qhfq::
PBS(4)
IfWinExist, ahk_class WindowsForms10.Window.8.app.0.141b42a_r9_ad1 ahk_exe 18jiasu.exe
    WinActivate
Else
    OpenFQ()
Return
:*?b0:ssmyfq::
PBS(6)
Run E:\software\Shadowsocks\Shadowsocks.exe
Return
:*?b0:qhmyfq::
PBS(6)
WinRestore ahk_exe Shadowsocks.exe
IfWinExist, ahk_exe Shadowsocks.exe
    WinActivate
Else
    Run E:\software\Shadowsocks\Shadowsocks.exe
Return
:*?b0:ssnc::
:*?b0:qhnc::
PBS(4)
IfWinExist, ^RamMap - Sysinternals: www.sysinternals.com$ ahk_class RamMapClass ahk_exe RAMMap64.exe
    WinActivate
Else
    Run E:\software\RAMMap.exe
Return


;文档相关
:*?b0:ssjsb::
PBS(5)
Run notepad
Return
:*?b0:qhjsb::
PBS(5)
IfWinExist, ahk_class Notepad ahk_exe notepad.exe
    WinActivate
Else
    Run notepad
Return
:*?b0:ssxzb::
PBS(5)
Run wordpad
Return
:*?b0:ssmd::
PBS(4)
Run C:\Program Files\Typora\Typora.exe
Return
:*?b0:sstex::
:*?b0:qhtex::
PBS(5)
Run C:\texlive\2018\bin\win32\texworks.exe
Return
:*?b0:sspdf::
PBS(5)
Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Acrobat XI Pro
Return
:*?b0:qhpdf::
PBS(5)
IfWinExist, ahk_class AcrobatSDIWindow ahk_exe Acrobat.exe
    WinActivate
Else
    Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Acrobat XI Pro
Return
:*?b0:sscaj::
PBS(5)
Run C:\Program Files (x86)\TTKN\CAJViewer 7.2\CAJVieweru.exe
Return
:*?b0:sspdoc::
PBS(6)
Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2007\Microsoft Office Word 2007
Return
:*?b0:sspxls::
PBS(6)
Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2007\Microsoft Office Excel 2007
Return
:*?b0:sspppt::
PBS(6)
Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2007\Microsoft Office PowerPoint 2007
Return
:*?b0:sspacc::
PBS(6)
Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2007\Microsoft Office Access 2007
Return
:*?b0:ssdoc::
PBS(5)
Run C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE
Return
:*?b0:ssxls::
PBS(5)
Run C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE
Return
:*?b0:ssppt::
PBS(5)
Run C:\Program Files (x86)\Microsoft Office\root\Office16\POWERPNT.EXE
Return
:*?b0:ssacc::
PBS(5)
Run C:\Program Files (x86)\Microsoft Office\root\Office16\MSACCESS.EXE
Return
:*?b0:ssyxbj::
:*?b0:qhyxbj::
PBS(6)
IfWinExist, ahk_exe Evernote.exe
    WinActivate
Else
    Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\印象笔记\印象笔记
Return


;媒体相关
:*?b0:ssqq::
PBS(4)
Run C:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe
Return
:*?b0:qhqq::
PBS(4)
IfWinExist, ahk_class TXGuiFoundation ahk_exe QQ.exe
    WinActivate
Else
    Run C:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe
Return
:*?b0:sswx::
:*?b0:qhwx::
PBS(4)
Run C:\Program Files (x86)\Tencent\WeChat\WeChat.exe
Return
:*?b0:ssbdy::
:*?b0:qhbdy::
PBS(5)
Run C:\Users\11048\AppData\Roaming\baidu\BaiduNetdisk\BaiduNetdisk.exe
Return
:*?b0:sswe::
PBS(4)
Run explorer shell:Appsfolder\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge
Return
:*?b0:sswi::
PBS(4)
Run C:\Program Files\internet explorer\iexplore.exe
Return
:*?b0:sswf::
PBS(4)
Run C:\Program Files\Mozilla Firefox\firefox.exe
Return
:*?b0:sswc::
PBS(4)
Run C:\Users\11048\AppData\Local\Google\Chrome\Application\chrome.exe
Return
:*?b0:qhwe::
PBS(4)
IfWinExist,  ‎- Microsoft Edge$ ahk_class ApplicationFrameWindow ahk_exe ApplicationFrameHost.exe
    WinActivate
Else
    Run explorer shell:Appsfolder\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge
Return
:*?b0:qhwi::
PBS(4)
IfWinExist, ahk_class IEFrame ahk_exe iexplore.exe
    WinActivate
Else
    Run C:\Program Files\internet explorer\iexplore.exe
Return
:*?b0:qhwf::
PBS(4)
IfWinExist, ahk_class MozillaWindowClass ahk_exe firefox.exe
    WinActivate
Else
    Run C:\Program Files\Mozilla Firefox\firefox.exe
Return
:*?b0:qhwc::
PBS(4)
IfWinExist, ahk_class Chrome_WidgetWin_1 ahk_exe chrome.exe
    WinActivate
Else
    Run C:\Users\11048\AppData\Local\Google\Chrome\Application\chrome.exe
Return
:*?b0:ssxl::
:*?b0:qhxl::
PBS(4)
Run C:\Program Files (x86)\Thunder Network\Thunder\Program\ThunderStart.exe -StartType:StartMenu
Return
:*?b0:ssqywx::
:*?b0:qhqywx::
PBS(6)
Run E:\software\WXWork\WXWork.exe
Return
:*?b0:ssdd::
:*?b0:qhdd::
PBS(4)
Run E:\software\DingDing\DingtalkLauncher.exe
Return
:*?b0:ssht::
PBS(4)
Run mspaint
Return
:*?b0:qhht::
PBS(4)
IfWinExist, ahk_class MSPaintApp ahk_exe mspaint.exe
    WinActivate
Else
    Run mspaint
Return
:*?b0:ssgszh::
PBS(6)
Run E:\software\FormatFactory\FormatFactory.exe
Return
:*?b0:qhgszh::
PBS(6)
IfWinExist, ^格式工厂 4.8.0$ ahk_class FormatFactoryMainFrame ahk_exe FormatFactory.exe
    WinActivate
Else
    Run E:\software\FormatFactory\FormatFactory.exe
Return
:*?b0:ssspbfq::
:*?b0:qhspbfq::
PBS(7)
Run C:\Program Files (x86)\Thunder Network\XMP\V5.4.4.6458\Bin\XMP.exe /sstartfrom StartMenu /sopenfrom StartMenu
Return
:*?b0:sskgyy::
:*?b0:qhkgyy::
PBS(6)
Run C:\Program Files (x86)\KuGou\KGMusic\KuGou.exe
Return
:*?b0:sswyyyy::
:*?b0:qhwyyyy::
PBS(7)
Run C:\Program Files (x86)\Netease\CloudMusic\cloudmusic.exe
Return
:*?b0:ssps::
:*?b0:qhps::
PBS(4)
Run E:\software\Adobe CS4\Adobe Photoshop CS4 (64 Bit)\Photoshop.exe
Return
:*?b0:ssgw::
PBS(4)
Run E:\software\GoldWave\GoldWave.exe
Return
:*?b0:qhgw::
PBS(4)
IfWinExist, ahk_class TMainForm
    WinActivate
Else
    Run E:\software\GoldWave\GoldWave.exe
Return
:*?b0:ssot::
:*?b0:qhot::
PBS(4)
Run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Overture 4.0 中文版\Overture 4.0 中文版
Return


;代码相关
StartMatlab()
{
    SendInput #r
    Sleep 200
    SendInput cmd
    Sleep 200
    SendInput {Enter}
    Sleep 200
    SendInput e:{Enter}cd software/matlab/bin{Enter}matlab{Enter}exit{Enter}
}
StartPythonCmd()
{
    SendInput #r
    Sleep 100
    SendInput cmd{Enter}
    Sleep 100
    SendInput python{Enter}
}
StartLuaCmd()
{
    SendInput #r
    Sleep 100
    SendInput cmd{Enter}
    Sleep 100
    SendInput lua{Enter}
}
:*?b0:ssmatlab::
PBS(8)
    StartMatlab()
Return
:*?b0:qhmatlab::
PBS(8)
IfWinExist, ahk_class SunAwtFrame ahk_exe MATLAB.exe
    WinActivate
Else
    StartMatlab()
Return
:*?b0:ssmath::
PBS(6)
Run E:\software\mathematica\Mathematica.exe
Return
:*?b0:qhmath::
PBS(6)
IfWinExist, ahk_class NotebookFrame ahk_exe Mathematica.exe
    WinActivate
Else
    Run E:\software\mathematica\Mathematica.exe
Return
:*?b0:ssmaple::
PBS(7)
Run E:\software\maple\bin.X86_64_WINDOWS\maplew.exe
Return
:*?b0:qhmaple::
PBS(7)
IfWinExist, ahk_class SunAwtFrame ahk_exe maple.exe
    WinActivate
Else
    Run E:\software\maple\bin.X86_64_WINDOWS\maplew.exe
Return
:*?b0:ssbin::
PBS(5)
Run E:\software\010Editor V3.1.2\010Editor V3.1.2 汉化修正Final.exe
Return
:*?b0:qhbin::
PBS(5)
IfWinExist, ahk_class QWidget ahk_exe 010Editor V3.1.2 汉化修正Final.exe
    WinActivate
Else
    Run E:\software\010Editor V3.1.2\010Editor V3.1.2 汉化修正Final.exe
Return
:*?b0:sscmp::
PBS(5)
Run E:\software\Beyond Compare 4\BCompare.exe
Return
:*?b0:qhcmp::
PBS(5)
IfWinExist, ahk_class TViewForm ahk_exe BCompare.exe
    WinActivate
Else
    Run E:\software\Beyond Compare 4\BCompare.exe
Return
:*?b0:sscb::
:*?b0:qhcb::
PBS(4)
Run C:\Program Files (x86)\CodeBlocks\codeblocks.exe
Return
:*?b0:ssec::
:*?b0:qhec::
PBS(4)
IfWinExist, ahk_class SWT_Window0 ahk_exe eclipse.exe
    WinActivate
Else
    Run C:\Program Files (x86)\eclipse\eclipse.exe
Return
:*?b0:ssas::
:*?b0:qhas::
PBS(4)
IfWinExist, ahk_class SunAwtFrame ahk_exe studio64.exe
    WinActivate
Else
    Run C:\Program Files\Android\Android Studio\bin\studio64.exe
Return
:*?b0:ssepy::
:*?b0:qhepy::
PBS(5)
IfWinExist, ahk_class SunAwtFrame ahk_exe pycharm64.exe
    WinActivate
Else
    Run C:\Program Files\JetBrains\PyCharm 2018.3.5\bin\pycharm64.exe
Return
:*?b0:sscpy::
PBS(5)
Run C:\Program Files\Python37\python.exe
Return
:*?b0:qhcpy::
PBS(5)
IfWinExist, ahk_class ConsoleWindowClass ahk_exe python.exe
    WinActivate
Else
    Run C:\Program Files\Python37\python.exe
Return
:*?b0:sspy::
PBS(4)
StartPythonCmd()
Return
:*?b0:qhpy::
PBS(4)
IfWinExist, ^C:\\Windows\\system32\\cmd.exe - python$ ahk_class ConsoleWindowClass ahk_exe cmd.exe
    WinActivate
Else
    StartPythonCmd()
Return
:*?b0:sselua::
PBS(6)
:*?b0:qhelua::
PBS(6)
Run C:\Program Files (x86)\Lua\5.1\SciTE\SciTE.exe
Return
:*?b0:ssclua::
PBS(6)
Run C:\Program Files (x86)\Lua\5.1\lua.exe
Return
:*?b0:qhclua::
PBS(6)
IfWinExist, ahk_class ConsoleWindowClass ahk_exe lua.exe
    WinActivate
Else
    Run C:\Program Files (x86)\Lua\5.1\lua.exe
Return
:*?b0:sslua::
PBS(5)
StartLuaCmd()
Return
:*?b0:qhlua::
PBS(5)
IfWinExist, ^C:\\Windows\\system32\\cmd.exe - lua$ ahk_class ConsoleWindowClass ahk_exe cmd.exe
    WinActivate
Else
    StartLuaCmd()
Return
:*?b0:ssvc::
PBS(4)
Run C:\Users\11048\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code
Return
:*?b0:qhvc::
PBS(4)
IfWinExist, ahk_class Chrome_WidgetWin_1 ahk_exe Code.exe
    WinActivate
Else
    Run E:\software\VSCode\Code.exe
Return
:*?b0:ssvs::
PBS(4)
Run E:\software\VS2017\IDE\Common7\IDE\devenv.exe
Return
:*?b0:qhvs::
PBS(4)
IfWinExist, ahk_exe devenv.exe
    WinActivate
Else
    Run E:\software\VS2017\IDE\Common7\IDE\devenv.exe
Return


;游戏相关
StartMf()
{
    SendInput #r
    Sleep 100
    SendInput E:\software\Cube\Cube.exe{Enter}
}
:*?b0:ssmf::
PBS(4)
StartMf()
Return
:*?b0:qhmf::
PBS(4)
IfWinExist, ^GabbaSoft Cube Demo - Version 0.03.0007 Alpha$ ahk_class CubeClass ahk_exe Cube.exe
    WinActivate
Else
    StartMf()
Return
:*?b0:sswdsj::
PBS(6)
Run D:\software\MCLauncher\WPFLauncher.exe
Return
:*?b0:qhwdsj::
PBS(6)
IfWinExist, ahk_exe WPFLauncher.exe
    WinActivate
Else
    Run D:\software\MCLauncher\WPFLauncher.exe
Return
:*?b0:ssciv::
PBS(5)
Run D:\civ6\Base\Binaries\Win64Steam\CivilizationVI_DX12.exe
Return
:*?b0:qhciv::
PBS(5)
IfWinExist, ahk_class WinClass_FXS ahk_exe CivilizationVI_DX12.exe
    WinActivate
Else
    Run D:\civ6\Base\Binaries\Win64Steam\CivilizationVI_DX12.exe
Return
:*?b0:sssteam::
:*?b0:qhsteam::
PBS(7)
IfWinExist, ahk_class vguiPopupWindow ahk_exe Steam.exe
    WinActivate
Else
    Run D:\software\steam\Steam.exe
Return
:*?b0:ssgta::
PBS(5)
Run steam://rungameid/271590
Return
:*?b0:qhgta::
PBS(5)
IfWinExist, ahk_exe GTA5.exe
    WinActivate
Else
    Run steam://rungameid/271590
Return


;快捷启动相关
;核心操作
Esc & F3::
Run E:\software\ahk\wait.ahk
ExitApp
Return
^Esc::
Esc & F1::
actWin := WinExist("A")
WinKill
Return
;cb新建
:*?:cbnew::
IfWinActive ahk_class wxWindowClassNR ahk_exe codeblocks.exe
    SendInput ^+n
Else
    SendInput cbnew
Return
:*?:cbclose::
IfWinActive ahk_class wxWindowClassNR ahk_exe codeblocks.exe
    SendInput ^w
Else
    SendInput cbclose
Return
^Up::
IfWinActive ahk_class wxWindowClassNR ahk_exe codeblocks.exe
    SendInput {Up 5}
Else
    SendInput ^{Up}
Return
^Down::
IfWinActive ahk_class wxWindowClassNR ahk_exe codeblocks.exe
    SendInput {Down 5}
Else
    SendInput ^{Down}
Return
;火车票
:*?b0:wihcp::
PBS(5)
Run C:\Program Files\internet explorer\iexplore.exe https://kyfw.12306.cn/otn/leftTicket/init?linktypeid=dc
Return
:*?b0:wfhcp::
PBS(5)
Run  C:\Program Files\Mozilla Firefox\firefox.exe https://kyfw.12306.cn/otn/leftTicket/init?linktypeid=dc
Return
:*?b0:wchcp::
PBS(5)
Run C:\Users\11048\AppData\Local\Google\Chrome\Application\chrome.exe https://kyfw.12306.cn/otn/leftTicket/init?linktypeid=dc
Return
;oj启动
:*?b0:wiecnuoj::
PBS(8)
Run C:\Program Files\internet explorer\iexplore.exe https://acm.ecnu.edu.cn/login/?next=/
Return
:*?b0:wfecnuoj::
PBS(8)
Run  C:\Program Files\Mozilla Firefox\firefox.exe https://acm.ecnu.edu.cn/login/?next=/
Return
:*?b0:wcecnuoj::
PBS(8)
Run C:\Users\11048\AppData\Local\Google\Chrome\Application\chrome.exe https://acm.ecnu.edu.cn/login/?next=/
Return
:*?b0:wivj::
PBS(4)
Run C:\Program Files\internet explorer\iexplore.exe https://vjudge.net/
Return
:*?b0:wfvj::
PBS(4)
Run  C:\Program Files\Mozilla Firefox\firefox.exe https://vjudge.net/
Return
:*?b0:wcvj::
PBS(4)
Run C:\Users\11048\AppData\Local\Google\Chrome\Application\chrome.exe https://vjudge.net/
Return
:*?b0:wihduoj::
PBS(7)
Run C:\Program Files\internet explorer\iexplore.exe http://acm.hdu.edu.cn/
Return
:*?b0:wfhduoj::
PBS(7)
Run  C:\Program Files\Mozilla Firefox\firefox.exe http://acm.hdu.edu.cn/
Return
:*?b0:wchduoj::
PBS(7)
Run C:\Users\11048\AppData\Local\Google\Chrome\Application\chrome.exe http://acm.hdu.edu.cn/
Return
:*?b0:wipoj::
PBS(5)
Run C:\Program Files\internet explorer\iexplore.exe http://poj.org/
Return
:*?b0:wfpoj::
PBS(5)
Run  C:\Program Files\Mozilla Firefox\firefox.exe http://poj.org/
Return
:*?b0:wcpoj::
PBS(5)
Run C:\Users\11048\AppData\Local\Google\Chrome\Application\chrome.exe http://poj.org/
Return