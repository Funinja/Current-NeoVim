local npairs = require('nvim-autopairs')

require('nvim-autopairs').setup({
    disable_filetype = { "TelescopePrompt" , "vim" },
})

-- add option map_cr
npairs.setup({ map_cr = true })


