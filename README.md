sol
===

[![Build Status](https://travis-ci.org/oniietzschan/sol.svg?branch=master)](https://travis-ci.org/oniietzschan/sol)
[![Codecov](https://codecov.io/gh/oniietzschan/sol/branch/master/graph/badge.svg)](https://codecov.io/gh/oniietzschan/sol)
![Lua](https://img.shields.io/badge/Lua-JIT%2C%205.1%2C%205.2%2C%205.3-blue.svg)

Format esoteric date and time formats in Lua!

Example
-------

```lua
local Sol = require 'sol'

-- Japanese Nengou (Emperor Eras)
Sol.formatJapanese(2001, 9, 11) -- 平成13年9月11日
Sol.formatJapanese(1912, 7, 31) -- 大正1年7月31日
Sol.formatJapanese(1912, 7, 30) -- 明治45年7月30日
```
