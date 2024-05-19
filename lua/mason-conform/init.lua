local M = {}

M.config = {
    ignore_install = {}
}

function M.setup(cfg)
    if cfg and cfg.ignore_install then
        M.config.ignore_install = cfg.ignore_install
    end

    require("mason-conform.auto_install")()
end

return M
