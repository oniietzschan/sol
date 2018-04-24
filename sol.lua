local Sol = {
  _VERSION     = 'sol v0.0.0',
  _URL         = 'https://github.com/oniietzschan/sol',
  _DESCRIPTION = 'Format esoteric date notations in Lua!',
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

local JAPANESE_EMPERORS = {
  {1989,  1,  8, '平成', 'Heisei'},
  {1926, 12, 25, '昭和', 'Shouwa'},
  {1912,  7, 31, '大正', 'Taishou'},
  {1868, 10, 23, '明治', 'Meiji'},
  {   0,  1,  1, '耶蘇', 'Jesus'},
}

function Sol.formatJapanese(year, month, day)
  local y, m, d, kanji, romaji
  for _, t in ipairs(JAPANESE_EMPERORS) do
    y, m, d, kanji, romaji = t[1], t[2], t[3], t[4], t[5]
    if (year > y) or (year == y and month > m) or (year == y and month == m and day >= d) then
      break
    end
  end
  local eraYear = year - y + 1
  return ('%s%d年%d月%d日'):format(kanji, eraYear, month, day)
end

return Sol
