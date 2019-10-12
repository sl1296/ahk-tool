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
    SendInput https://b.glgoo.top/scholar?hl=zh-CN&as_sdt=0`%2C5&q=machine+learning&btnG=&oq=machine
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
    MouseClick, Left, %p%, 24, 1, 0
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
}
Save(p, a)
{
    cnt := 0
    la1:
    If(cnt > 60)
        return 1
    MouseClick, Left, %p%, 24, 1, 0
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
    If(t1 <> a . " - Google 学术搜索 - Google Chrome")
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

Find("Synagogues in Jerusalem","List of places in Jerusalem","Cenacle","New Church of the Theotokos","Tomb of the Virgin Mary")
Find("Abdeen Mosque","Al-Buraq Mosque","Al-Khanqah al-Salahiyya Mosque","Mosque of Omar (Jerusalem)","Solomon's Stables")
Find("Synagogues of Jerusalem","Ades Synagogue","Ari Synagogue","Beit El Synagogue","Belz Great Synagogue")
Find("Four Sephardic Synagogues","Great Synagogue (Jerusalem)","Heichal Shlomo","Hurva Synagogue","Ohel Yitzchak Synagogue")
Find("Ohr ha-Chaim Synagogue","Pressburg Yeshiva (Jerusalem)","Ramban Synagogue","Shira Hadasha","Tiferet Yisrael Synagogue")
Find("Tzuf Dvash Synagogue","Warren's Gate","Western Wall","Shomrei haChomos.gif","Birket Israel")
Find("Pool of Bethesda","Pool of Siloam","Arab College (Jerusalem)","Gymnasia Rehavia","Hartman High School")
Find("Hebrew University Secondary School","Israel Goldstein Youth Village","Nishmat (midrasha)","Pelech (School)","Rashidiya school")
Find("St. George's School, Jerusalem","Umariya Elementary School","Yeshivat Ohr David","Allenby Square","Kikar HaShabbat")
Find("Safra Square","Zion Square","Azrieli College of Engineering Jerusalem","Bezalel Academy of Arts and Design","École Biblique")
Find("Hebrew University of Jerusalem","Ibrahimieh College","Jerusalem College of Technology","Jerusalem University College","Shalem College")
Find("St. George's College, Jerusalem","Studium Biblicum Franciscanum","Hebrew University of Jerusalem","Shevah Weiss","Dov Weissglass")
Find("Yechiam Weitz","Eliyahu Winograd","David Witzthum","Ehud Yaari","Azzan Yadin")
Find("Yigael Yadin","Aharon Yadlin","Aviad Yafeh","Joseph Yahalom","Yona Yahav")
Find("Myriam Yardeni","Danny Yatom","Gadi Yatziv","Haim Yavin","A. B. Yehoshua")
Find("Elie Yossef","Brad H. Young","Avishag Zahavi","Yitzhak Zamir","Bill Zanker")
Find("Dror Zeigerman","Eli Zeira","Moshe Zimmermann","Uri Zohar","David Zucker (politician)")
Find("Michel Abitbol","Henry Abramson","Hanoch Albeck","Gedaliah Alon","Yehuda Amichai")
Find("Daniel Amit","Shimshon Amitsur","Gannit Ankori","Lydia Aran","Manfred Aschner")
Find("Henri Atlan","Robert Aumann","Gad Avigad","Shlomo Avineri","Yitzhak Baer")
Find("Yehoshua Bar-Hillel","Yaacov Bar-Siman-Tov","Aharon Barak","Gabriel Barkay","Israel Bartal")
Find("Suliman Bashear","Yehuda Bauer","Jacob Bekenstein","Eyal Ben-Ari","Menachem Ben-Sasson")
Find("Yaakov Ben-Tor","Nachman Ben-Yehuda","Gideon Ben-Yisrael","Shlomo Bentin","Joseph Bentwich")
Find("Isaac Berenblum","Ernst David Bergmann","Hugo Bergmann","Daniel Boyarin","Selig Brodetsky")
Find("Martin Buber","Arye Carmon","Umberto Cassuto","Howard Cedar","Ivan Ceresnjes")
Find("Israel Charny","Naomi Chazan","Ilan Chet","Annie Cohen-Solal","Stanley Cohen (sociologist)")
Find("Hannah Cotton","Martin van Creveld","Joseph Dan","Marcelo Dascal","Paltiel Daykan")
Find("Avishai Dekel","Sergio Della Pergola","Ben-Zion Dinur","Avraham Diskin","Trude Dothan")
Find("Aryeh Dvoretzky","Irene Eber","Alexander Eig","Shmuel Eisenstadt","Eliahu Eilat")
Find("Rachel Elior","David Ellenson","Menachem Elon","Melvin Patrick Ely","Danny Evron")
Find("Yaron Ezrahi","Ezra Fleischer","Yehezkel Flomin","Abraham Fraenkel","Gerhard Frey")
Find("Amos Frumkin","Hillel Furstenberg","Arthur Galston","Ruth Gavison","Erela Golan")
Find("Leah Goldberg","Dorian M. Goldfeld","Eliezer E. Goldschmidt","Orly Goldwasser","Jacob Golomb")
Find("Avraham Granot","Moshe Greenberg","Jonas C. Greenfield","Sarah Israelit Groll","Bertram Myron Gross")
Find("Jan Gunneweg","Louis Guttman","Moshe Halbertal","Efraim Halevy","Alon Harel")
Find("Don Harrán","Sergiu Hart","David Hartman (rabbi)","Galit Hasan-Rokem","Isaac Heinemann")
Find("Carl Gustav Hempel","Shlomo Hestrin","Yizhar Hirschfeld","Josef Horovitz","Ehud Hrushovski")
Find("Shmuel Horowitz","Eva Illouz","Raphael Israeli","Daniel Kahneman","Gil Kalai")
Find("Roger Kamien","Steve Kaplan (professor)","Ruth Kark","Elihu Katz","Yisrael Katz (politician, born 1927)")
Find("Aharon Katzir","Yehezkel Kaufmann","David Kazhdan","Harry Kesten","Joseph Klausner")
Find("Yitzhak Klinghoffer","Israel Knohl","Dorothea Krook-Gilead","Matthias Küntzel","Yechezkel Kutscher")
Find("Ruth Lapidoth","Ruth Lawrence","Yeshayahu Leibowitz","Ze’ev Lev","Yohanan Levi")
Find("Raphael David Levine","Jacob Levitzki","Avigdor Levontin","Azriel Lévy","Miriam Lichtheim")
Find("Amia Lieblich","Joram Lindenstrauss","Alexander Lubotzky","Menachem Magidor","Charles F. Manski")
Find("Avishai Margalit","Emanuel Margoliash","Michael Maschler","Leo Aryeh Mayer","Amihai Mazar")
Find("Raphael Mechoulam","Doron Mendels","Paul R. Mendes-Flohr","Thomas Metzger","Isaac Michaelson")
Find("Willard L. Miranker","Dan Miron","George Mosse","David Nasaw","Nissan Nativ")
Find("Benzion Netanyahu","Amnon Netzer","Ehud Netzer","Mordechai Nisan","Hillel Oppenheimer")
Find("Michael Oren","Uzzi Ornan","Raphael Patai","Nurit Peled-Elhanan","Jack Penn")
Find("Gustavo Perednik","Motty Perry","Leo Picard","Hans Jakob Polotsky","Yehoshua Porath")
Find("Joshua Prawer","Michael O. Rabin","Jacob J. Rabinowitz","Giulio Racah","Frances Raday")
Find("Sheizaf Rafaeli","Israel Reichart","Eliyahu Rips","Eliezer Rivlin","Mordechai Rotenberg")
Find("Arthur Ruppin","Dov Sadan","Hayyim Schirmann","Gershom Scholem","Vera Schwarcz")
Find("Steven Schwarzschild","Eliezer Schweid","Avraham Sela","Zlil Sela","Edwin Seroussi")
Find("Israel Shahak","Aner Shalev","Gabriela Shalev","Abraham Schalit","Alice Shalvi")
Find("Benny Shanon","Nir Shaviv","Chaim Sheba","Saharon Shelah","Shimon Shetreet")
Find("David Dean Shulman","Aharon Shulov","Judith Shuval","Benjamin Shwadran","Alberto Soggin")
Find("Shaul Stampfer","Mark Steiner","Menahem Stern","Zeev Sternhell","Eleazar Sukenik")
Find("Hayim Tadmor","Jacob Talmon","Shemaryahu Talmon","Gad Tedeschi","Oskar Theodor")
Find("Emanuel Tov","Naftali Herz Tur-Sinai","Amos Tversky","Ephraim Urbach","Claude Vigée")
Find("Justus Weiner","Moshe Weinfeld","Yehudah L. Werner","Haim Ernst Wertheimer","Avi Wigderson")
Find("Ruth Wisse","Scott Woodward","Joseph Yahalom","Alexander Yakobson","Gadi Yatziv")
Find("S. Yizhar","Eddy Zemach","Moshe Zimmermann","Michael Zohary","Bernhard Zondek")
Find("David Coren","Haim Corfu","Martin van Creveld","Sylvain Cypel","Uri Dadush")
Find("Shabtai Daniel","Amnon Dankner","Danny Danon","Marcelo Dascal","Eli Dayan")
Find("Uzi Dayan","Yael Dayan","Abdulmalik Dehamshe","Esther Delisle","Sergio Della Pergola")
Find("Zvi Dinstein","Daniel Doron","Trude Dothan","Dina Dublon","Aryeh Dvoretzky")
Find("Arnold Eisen","Akiva Eldar","Mordechai Elgrably","Nissim Eliad","Israel Eliashiv")
Find("Aryeh Eliav","Ze'ev Elkin","David R. Elmaleh","Helen Epstein","Haggai Erlich")
Find("Yoel Esteron","Amitai Etzioni","Itamar Even-Zohar","Boaz Evron","Yaron Ezrahi")
Find("Avner Falk","Seth Farber","David Sidney Feingold","Dina Feitelson","Steven Fine")
Find("Ezra Fleischer","Jacob A. Frenkel","Menachem Friedman","Daniel Friedmann","Tuvia Friling")
Find("Amos Frumkin","Dov Gabbay","Reuven Gal","Shmuel Gal","David B. Galbraith")
Find("Gershon Galil","Oded Galor","Boaz Ganor","Shimon Garidi","Ruth Gavison")
Find("Mordechai Gazit","Yoav Gelber","Nurith Gertz","Dan Gillerman","Carmi Gillon")
Find("Ilan Gilon","Raanan Gissin","Michael Gitlin","David Glass (Israeli politician)","Miriam Glazer-Ta'asa")
Find("Michael Glick","Dmitry Glukhovsky","Eliezer Goldberg","Gerson Goldhaber","Sulamith Goldhaber")
Find("Orly Goldwasser","David Golomb","Elazar Granot","Rafi Greenberg","Simon Greenberg")
Find("Tzvia Greenfeld","Daniel Greer","Zvi Griliches","Alex Grobman","Shlomo Grofman")
Find("Sarah Israelit Groll","David Grossman","Branko Grünbaum","Yehuda Grunfeld","Asher Grunis")
Find("Zvi Guershoni","Batya Gur","Leon Hadar","Elyakim Haetzni","Walid Haj Yahia")
Find("Usama Halabi","Moshe Halbertal","Mordechai Halperin","Tzachi Hanegbi","Israel Hanukoglu")
Find("Haim Harari","Aharon Harel","Alon Harel","Michael Harish","Yosef Harish")
Find("Paul Hartal","Donniel Hartman","Galit Hasan-Rokem","Shai Hermesh","Avram Hershko")
Find("Sara Hestrin-Lerner","Yair Hirschfeld","Eli Hurvitz","Yoseph Imry","Dalia Itzik")
Find("Baruch Ivcher","Eri Jabotinsky","Amnon Jackont","Max Jammer","Joshua Jortner")
Find("Salim Joubran","Amalia Kahana-Carmon","Daniel Kahneman","Gil Kalai","Daniel Kan")
Find("Ruth Kark","Eliane Karp","Michael Karpin","Efraim Karsh","Asa Kasher")
Find("Moshe Katsav","Avraham Katz","Ephraim Katz","Yisrael Katz (politician, born 1927)","Yisrael Katz (politician, born 1955)")
Find("Yossi Katz","Nuzhat Katzav","Ephraim Katzir","Daniel Kaufmann (economist)","Ora Kedem")
Find("Menachem Kellner","Naamah Kelman","Moshe Kelmer","Yehoshua Kenaz","Yisrael Kessar")
Find("Elias Khoury (lawyer)","David Klein (economist)","Israel Knohl","Aviv Kochavi","Matilda Koen-Sarano")
Find("Amos Kollek","Dani Koren","Itzik Kornfein","Eliezer Kulas","Harold Kushner")
Find("Yechezkel Kutscher","Mooli Lahad","Ruth Lapide","Ruth Lapidoth","Yoram Lass")
Find("Smadar Lavie","Moshe Lazar","Neil Lazarus","Ilan Leibovitch","Yehiel Leket")
Find("Yonit Levi","Shalom Levin","Yariv Levin","Alexander Levitzki","Azriel Lévy")
Find("David H. Levy","Daniel Lidar","Avigdor Lieberman","Amia Lieblich","Orna Lin")
Find("Joram Lindenstrauss","Micha Lindenstrauss","Mario Livio","Menachem Lorberbaum","Uriel Lynn")
Find("Marcelle Machluf","Aren Maeir","Jodi Magness","Eviatar Manor","Reda Mansour")
Find("Avishai Margalit","Dan Margalit","Malachi Martin","Ruchama Marton","Nur Masalha")
Find("Eilat Mazar","Menachem Mazuz","Nimrod Megiddo","Aryeh Mekel","Doron Mendels")
Find("Dan Meridor","Sallai Meridor","Katya Gibel Mevorach","Dan Meyerstein","Jack Miles")
Find("Mordehai Milgrom","Dov Milman","Uri Milstein","Maurizio Molinari","Benny Morris")
Find("Aron Moscona","Yoram Moses","Eliyahu Moyal","Shuli Nachshon","Mohamed Nafa")
Find("Samir Naqqash","Dan Naveh","Yitzhak Navon","Yaakov Neeman","Ya'akov Nehoshtan")
Find("Ido Nehoshtan","Joshua Nelson (singer)","Benzion Netanyahu","Elisha Netanyahu","Iddo Netanyahu")
Find("Ehud Netzer","Hillel Neuer","Moshe Nissim","Akiva Nof","Orit Noked")
Find("Aliza Olmert","Dana Olmert","Ehud Olmert","Adi Ophir","Ram Oren")
Find("Zevulun Orlev","Emanuele Ottolenghi","Amos Oz","Dan Pagis","Ilan Pappé")
Find("Yosef Paritzky","Donald W. Parry","Raphael Patai","Elad Peled","David Peleg")
Find("Israel Peleg","Alexander Peli","Pinchas Hacohen Peli","Yaakov Peri","Motty Perry")
Find("Ophir Pines-Paz","Alexander Pines","Alon Pinkas","Yohanan Plesner","Natalie Portman")
Find("Avi Primor","Ron Prosor","Elisha Qimron","David Rabeeya","Michael O. Rabin")
Find("Itamar Rabinovich","Edeet Ravel","Joseph Raz","Mossi Raz","Nahman Raz")
Find("Mark Regev","Ronny Reich","Uriel Reichman","Renata Reisfeld","Zeev Reiss")
Find("Tzali Reshef","Avraham Rivkind","Reuven Rivlin","Israel Roll","Yael Rom")
Find("Asaf Romirowsky","Galila Ron-Feder Amit","Yiftah Ron-Tal","Eliezer Ronen","Shabtai Rosenne")
Find("David Rotem","Mordechai Rotenberg","Nouriel Roubini","Renate Rubinstein","Ben-Zion Rubin")
Find("Miri Rubin","Elyakim Rubinstein","Yona Sabar","Mark Sacks","Gideon Sagi")
Find("Taleb el-Sana","Moshe Sanbar","Moti Sasson","Uri Savir","Jonathan Schanzer")
Find("David Schmeidler","Oded Schramm","David Schütz","Yitzhak Seiger","Zlil Sela")
Find("Aviem Sella","Dan Senor","Michael Sfard","Brenda Shaffer","Shulamith Shahar")
Find("Nachman Shai","Avner Shaki","Shalom-Avraham Shaki","Aner Shalev","Avner Shalev")
Find("Chemi Shalev","Gabriela Shalev","Meir Shalev","Meir Shamgar","Benjamin Shapira")
Find("Avraham Sharir","Ariel Sharon","Nir Shavit","Bechor-Shalom Sheetrit","Saharon Shelah")
Find("Bambi Sheleg","Shimon Shetreet","Dov Shilansky","Kazuya Shimba","Haviv Shimoni")
Find("Yehuda Shoenfeld","Richard Shusterman","Benjamin Shwadran","Itamar Simonson","Morton Smith")
Find("Jerome Socolovsky","Sasson Somekh","Eliyahu Speiser","Yuval Steinitz","Zeev Sternhell")
Find("Carlo Strenger","Leonard Suransky","Harry Zvi Tabor","Orly Taitz","Igal Talmi")
Find("Shemaryahu Talmon","Yuli Tamir","Yair Tauman","Binyamin Temkin","Avraham Tiar")
Find("Dan Tichon","Reuven Tsur","Jacob Turkel","Rachel Tzabari","Yosef Vanunu")
Find("Moshe Vardi","Avshalom Vilan","Esther Vilenska","Mordechai Virshubski","Benjamin Elazari Volcani")
Find("Yochanan Vollach","Majalli Wahabi","Shlomo Weber","a","a")

Return