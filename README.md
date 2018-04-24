sol
===

[![Build Status](https://travis-ci.org/oniietzschan/sol.svg?branch=master)](https://travis-ci.org/oniietzschan/sol)
[![Codecov](https://codecov.io/gh/oniietzschan/sol/branch/master/graph/badge.svg)](https://codecov.io/gh/oniietzschan/sol)
![Lua](https://img.shields.io/badge/Lua-JIT%2C%205.1%2C%205.2%2C%205.3-blue.svg)

At last, format esoteric date notations in Lua!

Example
-------

```lua
local Sol = require 'sol'

-- Regnal Year of Jacobite Succession
Sol.formatJacobite(2018,  4, 24) -- returns "24 April, 22 Francis II"
Sol.formatJacobite(1702,  3,  8) -- returns "8 March, 1702, 1 James III"
Sol.formatJacobite(1689, 12, 16) -- returns "16 December, 2 James II"

-- Japanese Nengou (Emperor Era)
Sol.formatJapanese(2001, 9, 11) -- returns "平成13年9月11日"
Sol.formatJapanese(1912, 7, 31) -- returns "大正1年7月31日"
Sol.formatJapanese(1912, 7, 30) -- returns "明治45年7月30日"

-- Regnal Year of Sophia Succession (British Commonwealth)
Sol.formatSophia(2018, 4, 20) -- returns "20 April, 67 Elizabeth II"
Sol.formatSophia(1901, 1, 21) -- returns "21 January, 64 Victoria"
```
