local registry = require("mason-registry")
local mapping = require("mason-conform.mapping")

local function auto_install()
    local formatters_by_ft = require("conform").formatters_by_ft;

    local formatters_to_install = {}
    for _, formatters in pairs(formatters_by_ft) do
        for _, formatter in pairs(formatters) do
            formatters_to_install[formatter] = 1
        end
    end

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
