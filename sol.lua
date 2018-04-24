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

local JAPANESE_EMPERORS = {
  {1989,  1,  8, '平成', 'Heisei'},
  {1926, 12, 25, '昭和', 'Shouwa'},
  {1912,  7, 31, '大正', 'Taishou'},
  {1868, 10, 23, '明治', 'Meiji'},
  -- <Incomplete>
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

function Sol.formatJapanese(year, month, day)
  local era, eraYear = Sol._getEra(year, month, day, JAPANESE_EMPERORS, 4)
  return ('%s%d年%d月%d日'):format(era, eraYear, month, day)
end

function Sol.formatSophia(year, month, day)
  local fullMonth = Sol._getFullMonth(month)
  local era, eraYear = Sol._getEra(year, month, day, SOPHIA_MONARCHS, 4)
  return ('%d %s, %d %s'):format(day, fullMonth, eraYear, era)
end

function Sol._getFullMonth(i)
  return MONTHS[i]
end

function Sol._getEra(year, month, day, monarchs, eraIndex)
  local y, m, d, era
  for _, t in ipairs(monarchs) do
    y, m, d, era = t[1], t[2], t[3], t[eraIndex]
    if (year > y) or (year == y and month > m) or (year == y and month == m and day >= d) then
      break
    end
  end
  local eraYear = year - y + 1
  return era, eraYear
end

return Sol
