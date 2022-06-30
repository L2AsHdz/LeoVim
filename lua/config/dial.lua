local ok, dial_config = pcall(require, 'dial.config')
if not ok then
    return
end

local augend = require('dial.augend')
dial_config.augends:register_group({
    mygroup = {
        augend.constant.new({
            elements = { 'and', 'or' },
            word = true, -- if false, "sand" is incremented into "sor", "doctor" into "doctand", etc.
            cyclic = true, -- "or" is incremented into "and".
        }),
        augend.constant.new({
            elements = { 'True', 'False' },
            word = true,
            cyclic = true,
        }),
        augend.constant.new({
            elements = { 'public', 'private' },
            word = true,
            cyclic = true,
        }),
        augend.constant.new({
            elements = { '&&', '||' },
            word = false,
            cyclic = true,
        }),
        augend.date.alias['%m/%d/%Y'], -- date (02/19/2022, etc.)
        augend.date.alias['%Y/%m/%d'], -- date (2022/02/19, etc.)
        augend.date.alias['%Y-%m-%d'], -- date (2022-02-19, etc.)
        augend.constant.alias.bool, -- boolean value (true <-> false)
        augend.integer.alias.decimal,
        augend.integer.alias.hex,
    },
})
