CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
ReOpen(a, b, c, d, e)
{
    MouseClick, Left, 292, 17, 1, 0
    Sleep 500
    MouseClick, Left, 292, 17, 1, 0
    Sleep 500
    MouseClick, Left, 292, 17, 1, 0
    Sleep 500
    MouseClick, Left, 292, 17, 1, 0
    Sleep 500
    MouseClick, Left, 338, 23, 1, 0
    Sleep 500
    MouseClick, Left, 292, 17, 1, 0
    Sleep 500
    MouseClick, Left, 338, 23, 1, 0
    Sleep 500
    MouseClick, Left, 636, 23, 1, 0
    Sleep 500
    MouseClick, Left, 933, 23, 1, 0
    Sleep 500
    MouseClick, Left, 1233, 23, 1, 0
    Sleep 500
    MouseClick, Left, 175, 24, 1, 0
    Sleep 200
    MouseClick, Left, 400, 73, 1, 0
    Sleep 200
    SendInput %a%
    Sleep 200
    SendInput {Enter}
    Sleep 1000

    MouseClick, Left, 412, 24, 1, 0
    Sleep 200
    MouseClick, Left, 400, 73, 1, 0
    Sleep 200
    SendInput %b%
    Sleep 200
    SendInput {Enter}
    Sleep 1000

    MouseClick, Left, 725, 24, 1, 0
    Sleep 200
    MouseClick, Left, 400, 73, 1, 0
    Sleep 200
    SendInput %c%
    Sleep 200
    SendInput {Enter}
    Sleep 1000

    MouseClick, Left, 1032, 24, 1, 0
    Sleep 200
    MouseClick, Left, 400, 73, 1, 0
    Sleep 200
    SendInput %d%
    Sleep 200
    SendInput {Enter}
    Sleep 1000

    MouseClick, Left, 1333, 24, 1, 0
    Sleep 200
    MouseClick, Left, 400, 73, 1, 0
    Sleep 200
    SendInput %e%
    Sleep 200
    SendInput {Enter}
    Sleep 1000
}
Find(a, b, c, d, e)
{
    rst := 0
    ss:
    MouseClick, Left, 175, 24, 1, 0
    Sleep 200
    MouseClick, Left, 491, 146, 1, 0
    Sleep 500
    SendInput ^a
    Sleep 200
    SendInput %a%
    Sleep 200
    SendInput {Enter}
    Random, xa, 1000, 2500
    Sleep %xa%
    
    MouseClick, Left, 412, 24, 1, 0
    Sleep 200
    MouseClick, Left, 491, 146, 1, 0
    Sleep 500
    SendInput ^a
    Sleep 200
    SendInput %b%
    Sleep 200
    SendInput {Enter}
    Random, xb, 1000, 2500
    Sleep %xb%

    MouseClick, Left, 725, 24, 1, 0
    Sleep 200
    MouseClick, Left, 491, 146, 1, 0
    Sleep 500
    SendInput ^a
    Sleep 200
    SendInput %c%
    Sleep 200
    SendInput {Enter}
    Random, xc, 1000, 2500
    Sleep %xc%

    MouseClick, Left, 1032, 24, 1, 0
    Sleep 200
    MouseClick, Left, 491, 146, 1, 0
    Sleep 500
    SendInput ^a
    Sleep 200
    SendInput %d%
    Sleep 200
    SendInput {Enter}
    Random, xd, 1000, 2500
    Sleep %xd%

    MouseClick, Left, 1333, 24, 1, 0
    Sleep 200
    MouseClick, Left, 491, 146, 1, 0
    Sleep 500
    SendInput ^a
    Sleep 200
    SendInput %e%
    Sleep 200
    SendInput {Enter}

    tt:
    Sleep 1000

    cnt := 0
    la1:
    If(cnt > 60)
    {
        If(rst < 1)
        {
            ReOpen(a, b, c, d, e)
            rst := 1
            Goto tt
        }
        Else
        {
            SoundBeep, 523, 5000
        }
    }
    MouseClick, Left, 175, 24, 1, 0
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

    cnt := 0
    la2:
    If(cnt > 60)
    {
        If(rst < 1)
        {
            ReOpen(a, b, c, d, e)
            rst := 1
            Goto tt
        }
        Else
        {
            SoundBeep, 523, 5000
        }
    }
    MouseClick, Left, 412, 24, 1, 0
    Sleep 200
    PixelGetColor, cc, 39, 126
    IfEqual, cc, 0xFFFFFF
    {
        SendInput {F5}
        Sleep 1000
        cnt := cnt + 1
        Goto la2
    }
    actWin := WinExist("A")
    WinGetTitle, t1
    If(t1 <> b . " - Google 搜索 - Google Chrome")
    {
        Sleep 1000
        cnt := cnt + 1
        Goto la2
    }
    PixelGetColor, cc, 115, 59
    IfEqual, cc, 0xFFFFFF
    {
        Sleep 1000
        cnt := cnt + 1
        Goto la2
    }
    SendInput ^s
    Sleep 1000
    SendInput {Enter}
    Sleep 1000
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

    cnt := 0
    la3:
    If(cnt > 60)
    {
        If(rst < 1)
        {
            ReOpen(a, b, c, d, e)
            rst := 1
            Goto tt
        }
        Else
        {
            SoundBeep, 523, 5000
        }
    }
    MouseClick, Left, 725, 24, 1, 0
    Sleep 200
    PixelGetColor, cc, 39, 126
    IfEqual, cc, 0xFFFFFF
    {
        SendInput {F5}
        Sleep 1000
        cnt := cnt + 1
        Goto la3
    }
    actWin := WinExist("A")
    WinGetTitle, t1
    If(t1 <> c . " - Google 搜索 - Google Chrome")
    {
        Sleep 1000
        cnt := cnt + 1
        Goto la3
    }
    PixelGetColor, cc, 115, 59
    IfEqual, cc, 0xFFFFFF
    {
        Sleep 1000
        cnt := cnt + 1
        Goto la3
    }
    SendInput ^s
    Sleep 1000
    SendInput {Enter}
    Sleep 1000
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

    cnt := 0
    la4:
    If(cnt > 60)
    {
        If(rst < 1)
        {
            ReOpen(a, b, c, d, e)
            rst := 1
            Goto tt
        }
        Else
        {
            SoundBeep, 523, 5000
        }
    }
    MouseClick, Left, 1032, 24, 1, 0
    Sleep 200
    PixelGetColor, cc, 39, 126
    IfEqual, cc, 0xFFFFFF
    {
        SendInput {F5}
        Sleep 1000
        cnt := cnt + 1
        Goto la4
    }
    actWin := WinExist("A")
    WinGetTitle, t1
    If(t1 <> d . " - Google 搜索 - Google Chrome")
    {
        Sleep 1000
        cnt := cnt + 1
        Goto la4
    }
    PixelGetColor, cc, 115, 59
    IfEqual, cc, 0xFFFFFF
    {
        Sleep 1000
        cnt := cnt + 1
        Goto la4
    }
    SendInput ^s
    Sleep 1000
    SendInput {Enter}
    Sleep 1000
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

    cnt := 0
    la5:
    If(cnt > 60)
    {
        If(rst < 1)
        {
            ReOpen(a, b, c, d, e)
            rst := 1
            Goto tt
        }
        Else
        {
            SoundBeep, 523, 5000
        }
    }
    MouseClick, Left, 1333, 24, 1, 0
    Sleep 200
    PixelGetColor, cc, 39, 126
    IfEqual, cc, 0xFFFFFF
    {
        SendInput {F5}
        Sleep 1000
        cnt := cnt + 1
        Goto la5
    }
    actWin := WinExist("A")
    WinGetTitle, t1
    If(t1 <> e . " - Google 搜索 - Google Chrome")
    {
        Sleep 1000
        cnt := cnt + 1
        Goto la5
    }
    PixelGetColor, cc, 115, 59
    IfEqual, cc, 0xFFFFFF
    {
        Sleep 1000
        cnt := cnt + 1
        Goto la5
    }
    SendInput ^s
    Sleep 1000
    SendInput {Enter}
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

    Random, x, 100, 5000
    Sleep %x%
}
:*?:aaa::
;Find("﻿wood","load","repeat","describe","serve")
;Find("embarrass","useless","insurance","price","company")
;Find("throw","hat","pen","buy","strengthen")
;Find("fork","noon","basket","zoo","majority")
;Find("ring","dig","short","evening","wall")
;Find("joy","protect","convenient","tonight","highway")
;Find("physical","cash","sunlight","full","off")
;Find("believe","social","family","mist","announce")
;Find("wonderful","lively","repair","depend","servant")
;Find("e-mail","useful","instrument","prevent","companion")
;Find("throughout","harvest","pear","button","strength")
;Find("forgive","none","basis","youth","major")
;Find("right","difficulty","shop","even","walk")
;Find("journey","properly","control","tongue","high")
;Find("phrase","case","sun","fuel","of")
;Find("belief","so","familiar","miss","anniversary")
;Find("wonder","live","rent","department","serious")
;Find("else","use","instruction","pretty","communication")
;Find("through","harmful","peaceful","butterfly","street")
;Find("forget","noisy","basic","yourself","main")
;Find("ride","difficult","shoot","especially","wake")
;Find("joke","proper","contribute","ton","hide")
;Find("photograph","cartoon","summer","fry","ocean")
;Find("being","snowy","false","mirror","animal")
;Find("woman","little","remove","demand","separate")
;Find("elephant","upstairs","instruct","pretend","common")
;Find("thought","harm","peace","butter","stranger")
;Find("forever","noise","base","yours","mailbox")
;Find("rid","different","shoe","escape","waitress")
;Find("join","pronunciation","continue","tomorrow","herself")
;Find("photo","carry","suitcase","fruit","occur")
;Find("behind","snow","fall","minute","angry")
;Find("without","listen","remind","deliver","sentence")
;Find("electricity","upset","Institute","pressure","commercial")
;Find("though","hardship","pay","butcher","strange")
;Find("forest","nod","bargain","your","mail")
;Find("rich","difference","shock","error","waiter")
;Find("jog","pronounce","content","tomato","hers")
;Find("phone","carpet","suitable","front","observe")
;Find("begin","snake","faith","minister","anger")
;Find("within","list","remember","delight","sense")
;Find("electric","upper","instead","press","command")
;Find("demand","commend","those","hardly","pause")
;Find("but","straight","foreigner","nobody","bar")
 ;   Random, x, 5000, 10000
  ;  Sleep %x%
;Find("young","magic","rice","diet","shirt")
;Find("equipment","wait","job","promise","container")
;Find("together","hero","petrol","careless","suit")
;Find("from","object","beg","smooth","fair")
 ;   Random, x, 5000, 10000
  ;  Sleep %x%
;Find("mineral","and","withdraw","lion","remark")
;Find("delicious","send","elder","upon","inspire")
;Find("president","comfortable","thorough","hard","pattern")
;Find("busy","story","foreign","noble","bank")
 ;   Random, x, 5000, 10000
  ;  Sleep %x%
;Find("you","magazine","reward","die","ship")
;Find("equality","wag","jam","progress","contain")
;Find("today","here","pet","careful","suggestion")
;Find("frighten","obey","before","smoke","failure")
 ;   Random, x, 5000, 10000
  ;  Sleep %x%
;Find("mine","ancient","with","link","remain")
;Find("delay","sell","either","up","insist")
;Find("present","comfort","this","happy","patient")
;Find("businessman","storm","force","no","bamboo")
 ;   Random, x, 5000, 10000
  ;  Sleep %x%
;Find("yet","mad","revolution","dictionary","shine")
;Find("equal","volunteer","itself","programme","construction")
;Find("tobacco","her","persuade","care","suggest")
;Find("friendship","nutrition","beef","smile","fail")
 ;   Random, x, 5000, 10000
  ;  Sleep %x%
;Find("mind","ancestor","wish","line","religion")
;Find("degree","self","egg","unusual","inside")
;Find("prepare","comedy","think","happiness","patience")
;Find("business","store","forbid","night","balloon")
 ;   Random, x, 5000, 10000
  ;  Sleep %x%
;Find("yesterday","machine","review","dictation","shelf")
;Find("Environment","voice","its","professor","consideration")
;Find("toast","helpful","personally","card","sugar")
;Find("friendly","nurse","bed","smell","factory")
 ;   Random, x, 5000, 10000
  ;  Sleep %x%
;Find("mile","amount","wise","limit","relax")
;Find("defend","select","effort","until","ink")
;Find("preparation","come","thing","happen","path")
;Find("bush","stop","for","nice","ball")
 ;   Random, x, 5000, 10000
  ;  Sleep %x%
;Find("yes","lunch","return","diary","sheep")
;Find("entrance","visitor","it","profession","consider")
;Find("to","help","personal","car","suffer")
;Find("friend","number","become","smart","fact")
 ;   Random, x, 5000, 10000
  ;  Sleep %x%
Find("might","among","wire","likely","relative")
Find("defeat","seldom","effect","unlike","information")
Find("preference","combine","thin","hang","passer-by")
Find("bus","stone","football","next","baggage")
    Random, x, 5000, 10000
    Sleep %x%
Find("yellow","lucky","retire","diamond","she")
Find("enter","visit","island","production","connection")
Find("title","hello","person","captain","sudden")
Find("fridge","nuclear","because","small","facial")
    Random, x, 5000, 10000
    Sleep %x%
Find("midnight","ambition","wipe","like","relationship")
Find("deep","seize","education","unless","inform")
Find("prefer","colour","thief","handwriting","passenger")
Find("bury","stomach","foot","newspaper","bag")
    Random, x, 5000, 10000
    Sleep %x%
Find("year","luck","result","dialogue","share")
Find("enough","violin","Is","product","congratulation")
Find("tire","height","permission","capital","such")
Find("fresh","nowhere","beauty","slow","face")
    Random, x, 5000, 10000
    Sleep %x%
Find("middle","always","winter","light","relation")
Find("declare","seem","educate","university","influence")
Find("predict","college","thick","handsome","pass")
Find("burst","still","foolish","news","bad")
    Random, x, 5000, 10000
    Sleep %x%
Find("yard","low","restaurant","devotion","shape")
Find("enlarge","village","invite","produce","confuse")
Find("tip","heavy","period","candle","successful")
Find("frequent","now","beautiful","slip","eye")
    Random, x, 5000, 10000
    Sleep %x%
Find("method","altogether","winner","lift","relate")
Find("decision","seek","edge","unite","industry")
Find("precious","collection","they","handle","party")
Find("burn","stick","fool","new","back")
    Random, x, 5000, 10000
    Sleep %x%
Find("wrong","lovely","rest","devote","shame")
Find("enjoyable","victory","invitation","process","conductor")
Find("tiny","heaven","perhaps","cancer","success")
Find("freeze","novelist","beat","slim","extraordinary")
    Random, x, 5000, 10000
    Sleep %x%
Find("metal","although","wing","life","reject")
Find("decide","see","eat","unit","independent")
Find("praise","collect","these","hand","part-time")
Find("building","step","food","never","baby")
    Random, x, 5000, 10000
    Sleep %x%
Find("write","love","respect","development","shall")
Find("enjoy","very","invention","problem","condition")
Find("tin","heat","perfume","canal","succeed")
Find("freedom","novel","beard","sleepy","extra")
    Random, x, 5000, 10000
    Sleep %x%
Find("message","also","wine","lie","regular")
Find("death","security","easy","union","indeed")
Find("practise","cold","therefore","hammer","partner")
Find("build","steal","fond","network","away")
    Random, x, 5000, 10000
    Sleep %x%
Find("would","loud","research","develop","shake")
Find("engineer","vegetable","invent","probably","conclusion")
Find("timetable","heart","performer","can","substitute")
Find("free","notice","bear","sleep","expression")
    Random, x, 5000, 10000
    Sleep %x%
Find("merry","already","window","lid","regret")
Find("dear","secretary","east","unfair","increase")
Find("practice","coin","there","hall","particular")
Find("brush","stay","follow","net","awake")
    Random, x, 5000, 10000
    Sleep %x%
Find("worthy","lot","requirement","determine","shade")
Find("engine","vase","introduction","prize","concert")
Find("time","hear","performance","camp","subject")
Find("fox","nothing","beach","slave","express")
    Random, x, 5000, 10000
    Sleep %x%
Find("merely","aloud","wind","license","register")
Find("deal","secret","earth","unemployment","income")
Find("practical","coffee","theory","half","part")
Find("brunch","station","folk","nervous","avoid")
    Random, x, 5000, 10000
    Sleep %x%
Find("worth","loss","require","detective","sex")
Find("energy","various","introduce","private","concern")
Find("till","healthy","perform","camera","style")
Find("found","notebook","be","sky","explore")
    Random, x, 5000, 10000
    Sleep %x%
Find("merchant","alongside","win","library","regard")
Find("deaf","second","earn","understand","include")
Find("powerful","cocoa","then","hair","park")
Find("brown","statement","fog","nephew","average")
    Random, x, 5000, 10000
    Sleep %x%
Find("worry","lose","request","destroy","sew")
Find("energetic","variety","into","prisoner","computer")
Find("tight","health","perfect","calm","study")
Find("forward","note","bay","skin","explode")
    Random, x, 5000, 10000
    Sleep %x%
Find("menu","along","will","librarian","refuse")
Find("dead","seat","early","underline","incident")
Find("power","coat","themselves","habit","parent")
Find("brother","state","fly","neither","available")
    Random, x, 5000, 10000
    Sleep %x%
Find("world","look","republic","desk","several")
Find("end","value","interview","prison","composition")
Find("tie","headache","percentage","call","student")
Find("forty","not","battle","skill","explanation")
    Random, x, 5000, 10000
    Sleep %x%
Find("mention","alone","wildlife","liberation","refresh")
Find("day","season","ear","underground","inch")
Find("pour","coast","them","gun","pardon")
Find("broadcast","starve","flower","need","autumn")
    Random, x, 5000, 10000
    Sleep %x%
Find("worker","long","reporter","desire","settler")
Find("encouragement","valuable","Internet","print","complete")
Find("tidy","head","percent","cake","struggle")
Find("fortune","northern","battery","skate","explain")
    Random, x, 5000, 10000
    Sleep %x%
Find("mental","almost","wild","level","refer")
Find("daughter","seaside","eagle","under","in")
Find("pound","coach","their","guide","paragraph")
Find("bring","start","flow","necklace","author")
    Random, x, 5000, 10000
    Sleep %x%
Find("work","lonely","report","design","settle")
Find("encourage","valley","International","primitive","competition")
Find("ticket","he","per","cage","strong")
Find("fortunate","north","bathe","size","expert")
    Random, x, 5000, 10000
    Sleep %x%
Find("mend","allow","wife","letter","reduce")
Find("date","search","eager","unconscious","improve")
Find("postman","club","theatre","guest","paper")
Find("bright","stare","flour","neck","aunt")
    Random, x, 5000, 10000
    Sleep %x%
Find("word","lock","reply","deserve","set")
Find("empty","vacation","interest","primary","compete")
Find("tick","have","people","cabbage","strike")
Find("former","normal","bath","situation","experiment")
    Random, x, 5000, 10000
    Sleep %x%
Find("memory","all","wide","let","red")
Find("darkness","sea","each","unconditional","impression")
Find("postcard","cloud","the","guess","panic")
Find("bridge","star","floor","necessary","attractive")
    Random, x, 5000, 10000
    Sleep %x%
Find("wool","local","replace","description","service")
Find("emperor","usual","intelligence","pride","compare")
Find("thus","hate","penny","by","strict")
Find("form","nor","basketball","sit","experience")
    Random, x, 5000, 10000
    Sleep %x%
Find("memorial","alive","why","lesson","recycle")
Find("dark","scream","duty","uncomfortable","impress")
Find("post","clothes","that","guard","panda")
Find("bride","standard","flood","neat","attraction")
    Random, x, 5000, 10000
    Sleep %x%
Find("sister","expensive","member","alike","whose")
Find("length","recover","dangerous","score","dust")
Find("uncle","impossible","possible","cloth","thankful")
Find("growth","pale","breathe","stand","float")
    Random, x, 5000, 10000
    Sleep %x%
Find("nearly","attract","sir","expectation","meeting")
Find("airport","whom","lend","record","danger")
Find("scold","during","unbelievable","important","possibility")
Find("close","thank","grow","palace","breath")
    Random, x, 5000, 10000
    Sleep %x%
Find("stamp","flight","nearby","attitude","sink")
Find("expect","meet","airplane","whole","legal")
Find("recognise","dance","scientist","dull","unable")
Find("importance","possession","clock","than","group")
    Random, x, 5000, 10000
    Sleep %x%
Find("pair","breakfast","stair","flexible","near")
Find("attention","single","existence","medium","airline")
Find("who","leg","recent","damage","scientific")
Find("due","umbrella","import","position","climb")
    Random, x, 5000, 10000
    Sleep %x%
Find("textbook","ground","painting","break","stage")
Find("flee","navy","attend","sing","exist")
Find("medicine","aircraft","white","lecture","reasonable")
Find("daily","science","dry","ugly","immediately")
    Random, x, 5000, 10000
    Sleep %x%
Find("population","clever","text","grocery","paint")
Find("bread","stadium","flat","nature","attempt")
Find("since","exhibition","medical","air","whistle")
Find("leave","reason","dad","schoolmate","drop")
    Random, x, 5000, 10000
    Sleep %x%
Find("typical","imagine","popular","clerk","test")
Find("grey","painful","brave","squirrel","flag")
Find("natural","attack","simple","exercise","medal")
Find("aim","whisper","least","really","cut")
    Random, x, 5000, 10000
    Sleep %x%
Find("schoolboy","driver","type","illness","poor")
Find("clear","terrible","greet","pain","branch")
Find("square","fix","native","attach","similar")
Find("excuse","meat","aid","while","learn")
    Random, x, 5000, 10000
    Sleep %x%
Find("realise","customer","school","drive","twin")
Find("ill","pool","clean","term","green")
Find("page","brain","spring","fit","nationality")
Find("at","silver","excite","measure","ahead")
    Random, x, 5000, 10000
    Sleep %x%
Find("whichever","leaf","real","custom","scenery")
Find("drink","twice","if","pond","classroom")
Find("tennis","greedy","package","boy","spread")
Find("fist","national","astonish","silly","exchange")
    Random, x, 5000, 10000
    Sleep %x%
Find("meanwhile","agriculture","which","leader","ready")
Find("curtain","scene","dress","turn","idea")
Find("pollution","classmate","temple","great","pack")
Find("box","sport","fisherman","nation","assistant")
    Random, x, 5000, 10000
    Sleep %x%
Find("silent","except","mean","agricultural","whether")
Find("lead","read","curious","saying","dream")
Find("turkey","ice","pollute","classic","temperature")
Find("grass","pace","bowl","spokeswoman","fish")
    Random, x, 5000, 10000
    Sleep %x%
Find("narrow","assistance","silence","excellent","meal")
Find("agreement","wherever","lazy","reach","cure")
Find("say","drawer","try","I","politician")
Find("class","tell","grandpa","oxygen","bow")
    Random, x, 5000, 10000
    Sleep %x%
Find("splendid","firm","name","asleep","signal")
Find("example","me","agree","where","lay")
Find("rather","cupboard","save","draw","truth")
Find("husband","political","civilization","television","grand")
    Random, x, 5000, 10000
    Sleep %x%
Find("owner","bottom","spiritual","fire","nail")
Find("ask","sightseeing","examine","maybe","ago")
Find("whenever","lawyer","rare","cup","satisfy")
Find("dozen","trust","hurt","polite","city")
    Random, x, 5000, 10000
    Sleep %x%
Find("telephone","graduation","own","bottle","spirit")
Find("finish","myself","ashamed","sight","exam")
Find("may","aggressive","when","law","rapid")
Find("culture","satisfaction","downtown","truly","hurry")
    Random, x, 5000, 10000
    Sleep %x%
Find("policy","citizen","technology","graduate","overweight")
Find("bother","spend","finger","my","as")
Find("sigh","exact","matter","agency","wheel")
Find("laughter","range","cuisine","sandwich","downstairs")
    Random, x, 5000, 10000
    Sleep %x%
Find("true","hurricane","policeman","circle","technique")
Find("gradual","overlook","both","spell","fine")
Find("must","artist","side","evidence","mathematics")
Find("age","whatever","laugh","raise","cry")
    Random, x, 5000, 10000
    Sleep %x%
Find("same","down","truck","hunter","police")
Find("cinema","technical","grade","over","borrow")
Find("speed","find","musician","article","sick")
Find("everywhere","material","against","what","late")
    Random, x, 5000, 10000
    Sleep %x%
Find("rainfall","cruel","salute","doubt","troublesome")
Find("hunt","point","cigarette","tear","government")
Find("outside","border","speech","final","musical")
Find("art","shy","everything","match","again")
    Random, x, 5000, 10000
    Sleep %x%
Find("whale","last","raincoat","crowd","salty")
Find("double","trouble","hungry","poem","church")
Find("team","goose","outer","book","specialist")
Find("film","music","arrive","shut","everyone")
    Random, x, 5000, 10000
    Sleep %x%
Find("master","afterward","wet","large","rain")
Find("cross","salt","door","trip","human")
Find("pocket","choose","teacher","good","out")
Find("bone","special","fill","museum","arrival")
    Random, x, 5000, 10000
    Sleep %x%
Find("shower","everyday","marry","afternoon","western")
Find("language","railway","crop","salesman","dollar")
Find("trick","huge","plus","choice","teach")
Find("golf","ourselves","body","spear","figure")
    Random, x, 5000, 10000
    Sleep %x%
Find("murder","arrange","show","everybody","marriage")
Find("after","west","land","radio","criminal")
Find("sale","dog","trend","however","plenty")
Find("chocolate","tea","golden","ours","boat")
    Random, x, 5000, 10000
    Sleep %x%
Find("speaker","fight","muddy","around","shout")
Find("every","market","afraid","well","lamp")
Find("race","crime","sailor","document","tree")
Find("how","pleasure","childhood","taxi","gold")
    Random, x, 5000, 10000
    Sleep %x%
Find("our","board","speak","fierce","much")
Find("army","should","ever","mark","afford")
Find("welcome","lake","quite","creature","sail")
Find("doctor","treatment","housework","please","child")
    Random, x, 5000, 10000
    Sleep %x%
Find("tax","god","ought","blue","spare")
Find("field","movement","arm","shortly","event")
Find("march","affect","weight","lady","quiet")
Find("create","safety","do","treat","housewife")
    Random, x, 5000, 10000
    Sleep %x%
Find("pleasant","chicken","tasty","goal","otherwise")
Find("blow","space","few","move","arithmetic")
Find("map","affair","weigh","lack","quick")
Find("cream","safe","divide","treasure","house")
    Random, x, 5000, 10000
    Sleep %x%
Find("playground","chess","taste","go","other")
Find("blood","souvenir","fever","mouth","argument")
Find("many","advise","weekend","labour","question")
Find("crazy","sadness","dive","travel","hour")
    Random, x, 5000, 10000
    Sleep %x%
Find("play","chemist","task","glass","organization")
Find("blind","southwest","fetch","mouse","argue")
Find("mankind","advice","week","lab","queen")
Find("cow","sad","disturb","trap","hotel")
    Random, x, 5000, 10000
    Sleep %x%
Find("platform","cheer","tape","glance","organise")
Find("blanket","southern","festival","mountainous","area")
Find("manager","advertisement","wedding","knowledge","quarter")
Find("cover","rush","district","transport","hot")
    Random, x, 5000, 10000
    Sleep %x%
Find("plate","check","tap","glad","ordinary")
Find("blame","south","fence","mountain","are")
Find("manage","advertise","website","know","quarrel")
Find("cousin","run","distinction","translate","hospital")
    Random, x, 5000, 10000
    Sleep %x%
Find("plastic","cheat","tank","give","order")
Find("blackboard","soup","female","motor","appreciate")
Find("man","adventure","weather","knock","quantity")
Find("courtyard","rule","distant","train","horse")
    Random, x, 5000, 10000
    Sleep %x%
Find("plant","cheap","tall","girl","orange")
Find("black","sound","fellow","motivation","apply")
Find("male","advantage","wear","knife","quality")
Find("course","rude","distance","traffic","hopeless")
    Random, x, 5000, 10000
    Sleep %x%
Find("plane","chat","talk","giraffe","or")
Find("bitter","soul","feeling","mother","applicant")
Find("make","advance","wealthy","knee","pyramid")
Find("courage","rubbish","dislike","traditional","hopeful")
    Random, x, 5000, 10000
    Sleep %x%
Find("plan","charge","tale","gift","opposite")
Find("bite","sort","feel","most","apple")
Find("adult","wealth","kitchen","puzzle","couple")
Find("royal","dish","trade","hope","plain")
    Random, x, 5000, 10000
    Sleep %x%
Find("character","take","get","opinion","birthday")
Find("sorry","feed","morning","appetite","admit")
Find("weakness","kiss","put","countryside","row")
Find("disease","track","hook","place","chapter")
    Random, x, 5000, 10000
    Sleep %x%
Find("tail","geography","operation","birth","soon")
Find("fee","more","appearance","admission","weak")
Find("king","push","country","roundabout","discussion")
Find("toy","honest","pity","change","table")
    Random, x, 5000, 10000
    Sleep %x%
Find("gentle","operate","bird","song","feather")
Find("mop","appear","admire","we","kindness")
Find("purse","counter","round","discuss","town")
Find("homework","pioneer","chance","system","generation")
    Random, x, 5000, 10000
    Sleep %x%
Find("open","biology","son","fear","moon")
Find("apology","admirable","way","kindergarten","purpose")
Find("count","rough","discovery","tower","hometown")
Find("pink","challenge","swim","general","onto")
    Random, x, 5000, 10000
    Sleep %x%
Find("bill","somewhere","fax","month","apologize")
Find("administration","wave","kind","purple","could")
Find("rose","discover","toward","homeland","ping-pong")
Find("chairman","sweet","gather","only","bike")
    Random, x, 5000, 10000
    Sleep %x%
Find("sometimes","favourite"," ","monkey","anywhere")
Find("address","water","kilometre","pure","cough")
Find("root","discourage","tourist","home","pineapple")
Find("chair","sweater","gate","oneself","big")
    Random, x, 5000, 10000
    Sleep %x%
Find("something","favour","money","anyway","add")
Find("watch","kilogram","pupil","cotton","room")
Find("disappoint","tourism","holiday","pin","chain")
Find("survive","gas","one","bicycle","someone")
    Random, x, 5000, 10000
    Sleep %x%
Find("fault","anything","ad","waste","kill")
Find("pump","cost","roof","disappear","tour")
Find("hole","pilot","certificate","survival","garden")
Find("once","beyond","somebody","father","moment")
    Random, x, 5000, 10000
    Sleep %x%
Find("anyone","actual","washroom","kick","pull")
Find("correct","roll","disagreement","touch","hold")
Find("pillow","certain","surprise","garage","between")
Find("modern","anyhow","actress","wash","key")
    Random, x, 5000, 10000
    Sleep %x%
Find("publish","corporation","role","disagree","total")
Find("hit","pill","century","surface","besides")
Find("soldier","fast","modem","anybody","actor")
Find("warn","keep","public","corner","rock")
    Random, x, 5000, 10000
    Sleep %x%
Find("dirty","topic","history","pile","centre")
Find("sure","gallery","oil","beneficial","solar")
Find("farm","model","any","activity","warmth")
Find("just","province","copy","robot","director")
    Random, x, 5000, 10000
    Sleep %x%
Find("top","piece","celebrate","suppose","gain")
Find("often","bench","soil","fare","mobile")
Find("anxious","active","warm","jungle","provide")
Find("road","direction","toothache","hire","picture")
    Random, x, 5000, 10000
    Sleep %x%
Find("cause","support","future","official","belt")
Find("soft","far","mixture","anxiety","action")
Find("war","jump","prove","cooker","river")
Find("direct","tooth","himself","picnic","catch")
    Random, x, 5000, 10000
    Sleep %x%
Find("supply","furniture","officer","below","sofa")
Find("fancy","mix","answer","act","want")
Find("juice","proud","cook","rise","dinner")
Find("tool","him","pick","catalogue","supper")
    Random, x, 5000, 10000
    Sleep %x%
Find("funny","office","belong","society","fan")
Find("misunderstand","another","across","wallet","judge")
Find("protection","conversation","ripe","digest","too")
Find("hill","physicist","cat","supermarket","fun")
    Random, x, 5000, 10000
    Sleep %x%
Find("offer","bell","socialist","famous","mistake")
Find("annoy","achievement",1,1,1)
Return