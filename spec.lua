require 'busted'

local Sol = require 'sol'

describe('Sol', function()
  it('Should create date object when newDate() is called with valid parameters', function()
    local date = Sol.newGregorian(2001, 9, 11)
    assert.equal('table', type(date))
  end)
end)
