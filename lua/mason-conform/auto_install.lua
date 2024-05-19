local registry = require("mason-registry")
local mapping = require("mason-conform.mapping")

local function auto_install()
    local config = require("mason-conform").config
    local formatters_by_ft = require("conform").formatters_by_ft;

    local formatters_to_install = {}
    for _, formatters in pairs(formatters_by_ft) do
        for _, formatter in pairs(formatters) do
            -- Support case where the user has defined multiple formatters
            -- for said filetype. E.g javascript = { { "prettierd", "prettier" } }
            if type(formatter) == "table" then
                for _, f in pairs(formatter) do
                    formatters_to_install[f] = 1
                end
            else
                formatters_to_install[formatter] = 1
            end
        end
    end

    -- Filter out formatters that the user wants to ignore
    for _, formatter_to_ignore in pairs(config.ignore_install) do
        formatters_to_install[formatter_to_ignore] = nil
    end

    print(vim.inspect(formatters_to_install))

    for conformFormatter, _ in pairs(formatters_to_install) do
        local package = mapping.conform_to_package[conformFormatter]
        if package ~= nil then
            require("mason-conform.install").try_install(package)
        end
    end
end

if registry.refresh then
    return function()
        registry.refresh(vim.schedule_wrap(auto_install))
    end
else
    return auto_install
end
