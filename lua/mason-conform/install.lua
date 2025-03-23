local registry = require "mason-registry"

local M = {}

local function resolve_package(mason_package_name)
    local Optional = require "mason-core.optional"

    local ok, pkg = pcall(registry.get_package, mason_package_name)
    if ok then
        return Optional.of_nilable(pkg)
    end
end

local function install_package(pkg, version)
    local linter_name = pkg.name

    vim.notify(("[mason-conform] installing %s"):format(linter_name))

    return pkg:install({ version = version }):once(
        "closed",
        vim.schedule_wrap(function()
            if pkg:is_installed() then
                vim.notify(("[mason-conform] %s was successfully installed"):format(linter_name))
            else
                vim.notify(
                    ("[mason-conform] failed to install %s. Installation logs are available in :Mason and :MasonLog")
                    :format(
                        linter_name
                    ),
                    vim.log.levels.ERROR
                )
            end
        end)
    )
end

function M.try_install(mason_package_name)
    local Package = require "mason-core.package"
    local package_name, version = Package.Parse(mason_package_name)

    resolve_package(package_name)
        :if_present(
            function(pkg)
                if not pkg:is_installed() then
                    if require("mason.version").MAJOR_VERSION == 2 then
                        if pkg:is_installing() then
                            return
                        end
                    end
                    install_package(pkg, version)
                end
            end
        )
        :if_not_present(function()
            vim.notify(
                ("[mason-conform] Formatter %q is not a valid entry in ensure_installed. Make sure to only provide valid formatter names.")
                :format(
                    package_name
                ),
                vim.log.levels.WARN
            )
        end)
end

return M
