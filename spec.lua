require 'busted'

local Sol = require 'sol'

describe('formatJacobite', function()
  it('Should return expected results given valid parameters', function()
    assert.equal('24 April, 22 Francis II', Sol.formatJacobite(2018, 4, 24))
    assert.equal('8 March, 1 James III', Sol.formatJacobite(1702, 3, 8))
    assert.equal('16 December, 2 James II', Sol.formatJacobite(1689, 12, 16))
  end)
end)

describe('formatJapanese', function()
  it('Should return expected results given valid parameters', function()
    assert.equal('令和1年5月1日', Sol.formatJapanese(2019, 5, 1))
    assert.equal('平成31年4月30日', Sol.formatJapanese(2019, 4, 30))
    assert.equal('平成13年9月11日', Sol.formatJapanese(2001, 9, 11))
    assert.equal('平成1年1月8日', Sol.formatJapanese(1989, 1, 8))
    assert.equal('昭和64年1月7日', Sol.formatJapanese(1989, 1, 7))
    assert.equal('昭和1年12月25日', Sol.formatJapanese(1926, 12, 25))
    assert.equal('大正15年12月24日', Sol.formatJapanese(1926, 12, 24))
    assert.equal('大正1年7月31日', Sol.formatJapanese(1912, 7, 31))
    assert.equal('明治45年7月30日', Sol.formatJapanese(1912, 7, 30))
    assert.equal('明治1年10月23日', Sol.formatJapanese(1868, 10, 23))
    assert.equal('大化1年7月17日', Sol.formatJapanese(645, 7, 17))
    assert.equal('耶蘇645年10月22日', Sol.formatJapanese(644, 10, 22))
  end)
end)

describe('formatSophia', function()
  it('Should return expected results given valid parameters', function()
    assert.equal('20 April, 67 Elizabeth II', Sol.formatSophia(2018, 4, 20))
    assert.equal('22 January, 1 Edward VII', Sol.formatSophia(1901, 1, 22))
    assert.equal('21 January, 64 Victoria', Sol.formatSophia(1901, 1, 21))
  end)
end)
