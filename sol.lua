local Sol = {
  _VERSION     = 'sol v0.0.0',
  _URL         = 'https://github.com/oniietzschan/sol',
  _DESCRIPTION = 'At last, format esoteric date notations in Lua!',
  _LICENSE     = [[
    Massachusecchu... あれっ！ Massachu... chu... chu... License!

    Copyright (c) 1789 shru

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED 【AS IZ】, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE. PLEASE HAVE A FUN AND BE GENTLE WITH THIS SOFTWARE.
  ]]
}

local JACOBITE_MONARCHS = {
  {1996,  7,  8, 'Francis II'},
  {1955,  8,  2, 'Albert'},
  {1919,  2,  3, 'Robert'},
  {1875, 11, 20, 'Mary IV'},
  {1840,  9, 15, 'Fracis I'},
  {1824,  1, 10, 'Mary III'},
  {1819, 10,  6, 'Victor'},
  {1807,  7, 12, 'Charles IV'},
  {1788,  1, 31, 'Henry IX'},
  {1766,  1,  1, 'Charles III'},
  {1701,  9, 16, 'James III'},
  {1688, 12, 11, 'James II'},
}

local JAPANESE_EMPERORS = {
  {2019,  5,  1, '令和', 'Reiwa'},
  {1989,  1,  8, '平成', 'Heisei'},
  {1926, 12, 25, '昭和', 'Shouwa'},
  {1912,  7, 31, '大正', 'Taishou'},
  {1868, 10, 23, '明治', 'Meiji'},
  {1865,  5,  1, '慶応', 'Keiou'},
  {1864,  3, 27, '元治', 'Genji'},
  {1861,  3, 29, '文久', 'Bunkyuu'},
  {1860,  4,  8, '万延', 'Manen'},
  {1855,  1, 15, '安政', 'Ansei'},
  {1848,  4,  1, '嘉永', 'Kaei'},
  {1845,  1,  9, '弘化', 'Kouka'},
  {1831,  1, 23, '天保', 'Tempou'},
  {1818,  5, 26, '文政', 'Bunsei'},
  {1804,  3, 22, '文化', 'Bunka'},
  {1801,  3, 19, '享和', 'Kyouwa'},
  {1789,  2, 19, '寛政', 'Kansei'},
  {1781,  4, 25, '天明', 'Tenmei'},
  {1772, 12, 10, '安永', 'Anei'},
  {1764,  6, 30, '明和', 'Meiwa'},
  {1751, 12, 14, '宝暦', 'Houreki'},
  {1748,  8,  5, '寛延', 'Kanen'},
  {1744,  4,  3, '延享', 'Enkyou'},
  {1741,  4, 12, '寛保', 'Kampou'},
  {1736,  6,  7, '元文', 'Genbun'},
  {1716,  8,  9, '享保', 'Kyouhou'},
  {1711,  6, 11, '正徳', 'Shoutoku'},
  {1704,  4, 16, '宝永', 'Houei'},
  {1688, 10, 23, '元禄', 'Genroku'},
  {1684,  4,  5, '貞享', 'Joujyou'},
  {1681, 11,  9, '天和', 'Tenna'},
  {1673, 10, 30, '延宝', 'Empou'},
  {1661,  5, 23, '寛文', 'Kanbun'},
  {1658,  8, 21, '万治', 'Manji'},
  {1655,  5, 18, '明暦', 'Meireki'},
  {1652, 10, 20, '承応', 'Jouou'},
  {1648,  4,  7, '慶安', 'Keian'},
  {1645,  1, 13, '正保', 'Shouhou'},
  {1624,  4, 17, '寛永', 'Kanei'},
  {1615,  9,  5, '元和', 'Genna'},
  {1596, 12, 16, '慶長', 'Keichou'},
  {1593,  1, 10, '文禄', 'Bunroku'},
  {1573,  8, 25, '天正', 'Tenshou'},
  {1570,  5, 27, '元亀', 'Genki'},
  {1558,  3, 18, '永禄', 'Eiroku'},
  {1555, 11,  7, '弘治', 'Kouji'},
  {1532,  8, 29, '天文', 'Tenbun'},
  {1528,  9,  3, '享禄', 'Kyouroku'},
  {1521,  9, 23, '大永', 'Daiei'},
  {1504,  3, 16, '永正', 'Eishou'},
  {1501,  3, 18, '文亀', 'Bunki'},
  {1492,  8, 12, '明応', 'Meiou'},
  {1489,  9, 16, '延徳', 'Entoku'},
  {1487,  8,  9, '長享', 'Choukyou'},
  {1469,  6,  8, '文明', 'Bummei'},
  {1467,  4,  9, '応仁', 'Ounin'},
  {1466,  3, 14, '文正', 'Bunshou'},
  {1461,  2,  1, '寛正', 'Kanshou'},
  {1457, 10, 16, '長禄', 'Chouroku'},
  {1455,  9,  6, '康正', 'Koushou'},
  {1452,  8, 10, '享徳', 'Kyoutoku'},
  {1449,  8, 16, '宝徳', 'Houtoku'},
  {1444,  2, 23, '文安', 'Bunan'},
  {1441,  3, 10, '嘉吉', 'Kakitsu'},
  {1429, 10,  3, '永享', 'Eikyou'},
  {1428,  6, 10, '正長', 'Shouchou'},
  {1394,  8,  2, '応永', 'Ouei'},
  -- {1390,  4, 12, '明徳', 'Meitoku'}, -- Northern Court????
  -- {1389,  3,  7, '康応', 'Kouou'}, -- Northern Court????
  -- {1387, 10,  5, '嘉慶', 'Kakei'}, -- Northern Court????
  -- {1381,  3, 20, '永徳', 'Shitoku'}, -- Northern Court????
  -- {1375,  3, 29, '永和', 'Eitoku'}, -- Northern Court????
  -- {1368,  3,  7, '応安', 'Kouryaku'}, -- Northern Court????
  -- {1361,  5,  4, '康安', 'Eiwa'}, -- Northern Court????
  -- {1350,  4,  4, '観応', 'Ouan'}, -- Northern Court????
  -- {1345, 11, 15, '貞和', 'Jouji'}, -- Northern Court????
  -- {1342,  6,  1, '康永', 'Kouan'}, -- Northern Court????
  -- {1338, 10, 11, '暦応', 'Embun'}, -- Northern Court????
  -- {1384,  5, 18, '元中', 'Bunna'}, -- Northern Court????
  -- {1381,  3,  6, '弘和', 'Kannou'}, -- Northern Court????
  -- {1372,  4, 26, '文中', 'Jouwa'}, -- Northern Court????
  -- {1370,  8, 16, '建徳', 'Kouei'}, -- Northern Court????
  -- {1340,  5, 25, '興国', 'Ryakuou'}, -- Northern Court????
  -- {1334,  3,  5, '建武', 'Kemmu'}, -- Northern Court????
  -- {1332,  5, 23, '正慶', 'Shoukei'}, -- Northern Court????
  -- {1384,  3, 19, '元中', 'Genchuu (Southern Court)'},
  -- {1379,  4,  9, '弘和', 'Kouwa (Southern Court)'},
  -- {1362, 10, 11, '天授', 'Tenju (Southern Court))'},
  -- {1356,  4, 29, '文中', 'Bunchuu (Southern Court)'},
  -- {1352, 11,  4, '建徳', 'Kentoku (Southern Court))'},
  -- {1375,  6, 26, '正平', 'Shouhei (Southern Court)'},
  -- {1347,  1, 20, '興国', 'Koukoku (Southern Court)'},
  -- {1336,  4, 11, '延元', 'Engen (Southern Court))'},
  -- {1331,  9,  1, '元弘', 'Genkou (Southern Court))'},
  {1329,  9, 22, '元徳', 'Gentoku'},
  {1326,  5, 28, '嘉暦', 'Karyaku'},
  {1324, 12, 25, '正中', 'Shouchu'},
  {1321,  3, 22, '元亨', 'Genkou'},
  {1319,  5, 18, '元応', 'Genou'},
  {1317,  3, 16, '文保', 'Bumpou'},
  {1312,  4, 27, '正和', 'Shouwa'},
  {1311,  5, 17, '応長', 'Ouchou'},
  {1308, 11, 22, '延慶', 'Enkyou'},
  {1307,  1, 18, '徳治', 'Tokuji'},
  {1303,  9, 16, '嘉元', 'Kagen'},
  {1302, 12, 10, '乾元', 'Kengen'},
  {1299,  5, 25, '正安', 'Shouan'},
  {1293,  9,  6, '永仁', 'Einin'},
  {1288,  5, 29, '正応', 'Shouou'},
  {1278,  3, 23, '弘安', 'Kouan'},
  {1275,  5, 22, '建治', 'Kenji'},
  {1264,  3, 27, '文永', 'Bunei'},
  {1261,  3, 22, '弘長', 'Kouchou'},
  {1260,  5, 24, '文応', 'Bunou'},
  {1259,  4, 20, '正元', 'Shougen'},
  {1257,  3, 31, '正嘉', 'Shouka'},
  {1256, 10, 24, '康元', 'Kougen'},
  {1249,  5,  2, '建長', 'Kenchou'},
  {1247,  4,  5, '宝治', 'Houji'},
  {1243,  3, 18, '寛元', 'Kangen'},
  {1240,  8,  5, '仁治', 'Ninji'},
  {1239,  3, 13, '延応', 'Enou'},
  {1238, 12, 30, '暦仁', 'Ryakunin'},
  {1235, 11,  1, '嘉禎', 'Katei'},
  {1234, 11, 27, '文暦', 'Bunryaku'},
  {1233,  5, 25, '天福', 'Tempuku'},
  {1232,  4, 23, '貞永', 'Jouei'},
  {1229,  3, 31, '寛喜', 'Kangi'},
  {1228,  1, 18, '安貞', 'Antei'},
  {1225,  5, 28, '嘉禄', 'Karoku'},
  {1224, 12, 31, '元仁', 'Gennin'},
  {1222,  5, 25, '貞応', 'Jouou'},
  {1219,  5, 27, '承久', 'Joukyuu'},
  {1214,  1, 18, '建保', 'Kempou'},
  {1211,  4, 23, '建暦', 'Kenryaku'},
  {1207, 11, 16, '承元', 'Jougen'},
  {1206,  6,  5, '建永', 'Kenei'},
  {1204,  3, 23, '元久', 'Genkyuu'},
  {1201,  3, 19, '建仁', 'Kennin'},
  {1199,  5, 23, '正治', 'Shouji'},
  {1190,  5, 16, '建久', 'Kenkyuu'},
  {1185,  9,  9, '文治', 'Bunji'},
  {1184,  5, 27, '元暦', 'Genryaku'},
  {1182,  6, 29, '寿永', 'Juei'},
  {1181,  8, 25, '養和', 'Youwa'},
  {1177,  8, 29, '治承', 'Jishou'},
  {1175,  8, 16, '安元', 'Angen'},
  {1171,  5, 27, '承安', 'Jouan'},
  {1169,  5,  6, '嘉応', 'Kaou'},
  {1166,  9, 23, '仁安', 'Ninan'},
  {1165,  7, 14, '永万', 'Eiman'},
  {1163,  5,  4, '長寛', 'Choukan'},
  {1161,  9, 24, '応保', 'Ouho'},
  {1160,  2, 18, '永暦', 'Eiryaku'},
  {1159,  5,  9, '平治', 'Heiji'},
  {1156,  5, 18, '保元', 'Hougen'},
  {1154, 12,  4, '久寿', 'Kyuuju'},
  {1151,  2, 14, '仁平', 'Nimpei'},
  {1145,  8, 12, '久安', 'Kyuuan'},
  {1144,  3, 28, '天養', 'Tenyou'},
  {1142,  5, 25, '康治', 'Kouji'},
  {1141,  8, 13, '永治', 'Eiji'},
  {1135,  6, 10, '保延', 'Houen'},
  {1132,  9, 21, '長承', 'Choushou'},
  {1131,  2, 28, '天承', 'Tenshou'},
  {1126,  2, 15, '大治', 'Daiji'},
  {1124,  5, 18, '天治', 'Tenji'},
  {1120,  5,  9, '保安', 'Houan'},
  {1118,  4, 25, '元永', 'Genei'},
  {1113,  8, 25, '永久', 'Eikyuu'},
  {1110,  7, 31, '天永', 'Tennei'},
  {1108,  9,  9, '天仁', 'Tennin'},
  {1106,  5, 13, '嘉承', 'Kajou'},
  {1104,  3,  8, '長治', 'Chouji'},
  {1099,  9, 15, '康和', 'Kouwa'},
  {1097, 12, 27, '承徳', 'Joutoku'},
  {1097,  1,  3, '永長', 'Eichou'},
  {1095,  1, 23, '嘉保', 'Kahou'},
  {1087,  5, 11, '寛治', 'Kanji'},
  {1084,  3, 15, '応徳', 'Outoku'},
  {1081,  3, 22, '永保', 'Eihou'},
  {1077, 12,  5, '承暦', 'Jouryaku'},
  {1074,  9, 16, '承保', 'Jouhou'},
  {1069,  5,  6, '延久', 'Enkyuu'},
  {1065,  9,  4, '治暦', 'Jiryaku'},
  {1058,  9, 19, '康平', 'Kouhei'},
  {1053,  2,  2, '天喜', 'Tengi'},
  {1046,  5, 22, '永承', 'Eishou'},
  {1044, 12, 16, '寛徳', 'Kantok'},
  {1040, 12, 16, '長久', 'Choukyuu'},
  {1037,  5,  9, '長暦', 'Chouryaku'},
  {1028,  8, 18, '長元', 'Chougen'},
  {1024,  8, 23, '万寿', 'Manju'},
  {1021,  3, 17, '治安', 'Jian'},
  {1017,  5, 21, '寛仁', 'Kannin'},
  {1013,  2,  8, '長和', 'Chouwa'},
  {1004,  8,  8, '寛弘', 'Kankou'},
  { 999,  2,  1, '長保', 'Chouhou'},
  { 995,  3, 25, '長徳', 'Choutoku'},
  { 990, 11, 26, '正暦', 'Shouryaku'},
  { 989,  9, 10, '永祚', 'Eiso'},
  { 987,  5,  5, '永延', 'Eien'},
  { 985,  5, 19, '寛和', 'Kanna'},
  { 983,  5, 29, '永観', 'Eikan'},
  { 978, 12, 31, '天元', 'Tengen'},
  { 976,  8, 11, '貞元', 'Jougen'},
  { 974,  1, 16, '天延', 'Tenen'},
  { 970,  5,  3, '天禄', 'Tenroku'},
  { 968,  9,  8, '安和', 'Anna'},
  { 964,  8, 19, '康保', 'Kouhou'},
  { 961,  3,  5, '応和', 'Ouwa'},
  { 957, 11, 21, '天徳', 'Tentoku'},
  { 947,  5, 15, '天暦', 'Tenryaku'},
  { 938,  6, 22, '天慶', 'Tengyou'},
  { 931,  5, 16, '承平', 'Jouhei'},
  { 923,  5, 29, '延長', 'Enchou'},
  { 901,  8, 31, '延喜', 'Engi'},
  { 898,  5, 20, '昌泰', 'Shoutai'},
  { 889,  5, 30, '寛平', 'Kampyou'},
  { 885,  3, 11, '仁和', 'Ninna'},
  { 877,  6,  1, '元慶', 'Gangyou'},
  { 859,  5, 20, '貞観', 'Jougan'},
  { 857,  3, 20, '天安', 'Tenan'},
  { 854, 12, 23, '斉衡', 'Saiko'},
  { 851,  6,  1, '仁寿', 'Ninju'},
  { 848,  7, 16, '嘉祥', 'Kashou'},
  { 834,  2, 14, '承和', 'Jouwa'},
  { 824,  2,  8, '天長', 'Tenchou'},
  { 810, 10, 20, '弘仁', 'Kounin'},
  { 806,  6,  8, '大同', 'Daidou'},
  { 782,  9, 30, '延暦', 'Enryaku'},
  { 781,  1, 30, '天応', 'Tenou'},
  { 770, 10, 23, '宝亀', 'Houki'},
  { 767,  9, 13, '神護景雲', 'Jingokeiun'},
  { 765,  2,  1, '天平神護', 'Tempyou-jingo'},
  { 757,  9,  6, '天平宝字', 'Tempyou-houji'},
  { 749,  8, 19, '天平勝宝', 'Tempyou-shouhou'},
  { 749,  5,  4, '天平感宝', 'Tempyou-kampou'},
  { 729,  9,  2, '天平', 'Tempyou'},
  { 724,  3,  3, '神亀', 'Jink'},
  { 717, 12, 24, '養老', 'Yourou'},
  { 715, 10,  3, '霊亀', 'Reiki'},
  { 708,  2,  7, '和銅', 'Wadou'},
  { 704,  6, 16, '慶雲', 'Keiun'},
  { 701,  5,  3, '大宝', 'Taihou'},
  { 686,  8, 14, '朱鳥', 'Shuchou'},
  { 650,  3, 22, '白雉', 'Hakuchi'},
  { 645,  7, 17, '大化', 'Taika'},
  {   0,  1,  1, '耶蘇', 'Jesus'},
}

local SOPHIA_MONARCHS = {
  {1952,  2,  6, 'Elizabeth II'},
  {1936, 12, 11, 'George VI'},
  {1936,  1, 20, 'Edward VIII'},
  {1910,  5,  6, 'George V'},
  {1901,  1, 22, 'Edward VII'},
  {1837,  6, 20, 'Victoria'},
  -- <Incomplete>
}

local MONTHS = {
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
}

function Sol.formatJacobite(year, month, day)
  local fullMonth = Sol._getFullMonth(month)
  local era, eraYear = Sol._getEra(year, month, day, JACOBITE_MONARCHS)
  return ('%d %s, %d %s'):format(day, fullMonth, eraYear, era)
end

function Sol.formatJapanese(year, month, day)
  local era, eraYear = Sol._getEra(year, month, day, JAPANESE_EMPERORS, true)
  return ('%s%d年%d月%d日'):format(era, eraYear, month, day)
end

function Sol.formatSophia(year, month, day)
  local fullMonth = Sol._getFullMonth(month)
  local era, eraYear = Sol._getEra(year, month, day, SOPHIA_MONARCHS)
  return ('%d %s, %d %s'):format(day, fullMonth, eraYear, era)
end

function Sol._getFullMonth(i)
  return MONTHS[i]
end

function Sol._getEra(year, month, day, monarchs, rolloverOnJan1)
  local y, m, d, era
  for _, t in ipairs(monarchs) do
    y, m, d, era = t[1], t[2], t[3], t[4]
    if (year > y) or (year == y and month > m) or (year == y and month == m and day >= d) then
      break
    end
  end
  local eraYear = year - y
  if rolloverOnJan1 or (month > m) or (month == m and day >= d) then
    eraYear = eraYear + 1
  end
  return era, eraYear
end

return Sol
