local M = {}

-- conform formatter to mason package mapping
-- https://mason-registry.dev/registry/list
M.conform_to_package = {
    -- air
    ["alejandra"] = "alejandra",
    ["ansible-lint"] = "ansible-lint",
    ["asmfmt"] = "asmfmt",
    ["ast-grep"] = "ast-grep",
    -- astyle
    -- auto_optional
    -- autocorrect
    ["autoflake"] = "autoflake",
    ["autopep8"] = "autopep8",
    -- bean-format
    ["beautysh"] = "beautysh",
    ["bibtex-tidy"] = "bibtex-tidy",
    -- bicep; it exists on Mason, but as LSP (exec: `bicep-lsp`)
    ["biome"] = "biome",
    -- biome-check
    -- biome-organize-imports
    ["black"] = "black",
    ["blade-formatter"] = "blade-formatter",
    ["blue"] = "blue",
    -- bpfmt
    ["bsfmt"] = "brighterscript-formatter",
    ["buf"] = "buf",
    ["buildifier"] = "buildifier",
    -- cabal_fmt
    -- caramel_fmt
    ["cbfmt"] = "cbfmt",
    -- cedar
    ["clang-format"] = "clang-format",
    ["cljfmt"] = "cljfmt",
    -- cljstyle
    ["cmake_format"] = "cmakelang",
    -- codeql; it exists on Mason, but as LSP (exec: `codeql`)
    ["codespell"] = "codespell",
    -- commitmsgfmt
    ["crlfmt"] = "crlfmt",
    -- crystal
    ["csharpier"] = "csharpier",
    -- css_beautify
    -- cue_fmt
    -- d2
    ["darker"] = "darker",
    -- dart_format
    ["dcm_fix"] = "dcm",
    ["dcm_format"] = "dcm",
    ["deno_fmt"] = "deno",
    -- dfmt
    -- dioxus
    ["djlint"] = "djlint",
    ["docformatter"] = "docformatter",
    -- docstrfmt
    ["doctoc"] = "doctoc",
    ["dprint"] = "dprint",
    ["easy-coding-standard"] = "easy-coding-standard",
    -- efmt
    ["elm_format"] = "elm-format",
    ["erb_format"] = "erb-formatter",
    -- erlfmt
    ["eslint_d"] = "eslint_d",
    ["fantomas"] = "fantomas",
    ["findent"] = "findent",
    -- fish_indent
    ["fixjson"] = "fixjson",
    -- fnlfmt
    -- forge_fmt
    -- format-dune-file
    -- format-queries
    ["fourmolu"] = "fourmolu",
    ["fprettify"] = "fprettify",
    -- gawk
    ["gci"] = "gci",
    ["gdformat"] = "gdtoolkit",
    ["gersemi"] = "gersemi",
    -- ghokin
    -- gleam
    -- gluon_fmt
    -- gn
    -- gofmt
    ["gofumpt"] = "gofumpt",
    ["goimports"] = "goimports",
    ["goimports-reviser"] = "goimports-reviser",
    -- gojq
    -- golangci-lint
    ["golines"] = "golines",
    ["google-java-format"] = "google-java-format",
    -- grain_format
    ["hcl"] = "hclfmt",
    -- hindent
    -- hledger-fmt
    -- html_beautify
    ["htmlbeautifier"] = "htmlbeautifier",
    -- hurlfmt
    -- imba_fmt
    -- indent
    -- init
    -- injected
    -- inko
    ["isort"] = "isort",
    -- janet-format
    ["joker"] = "joker",
    ["jq"] = "jq",
    -- js_beautify
    ["jsonnetfmt"] = "jsonnetfmt",
    -- just
    ["kcl"] = "kcl",
    -- kdlfmt
    -- keep-sorted
    ["ktfmt"] = "ktfmt",
    ["ktlint"] = "ktlint",
    ["kulala-fmt"] = "kulala-fmt",
    ["latexindent"] = "latexindent",
    -- leptosfmt
    -- liquidsoap-prettier
    -- llf
    ["lua-format"] = "luaformatter",
    -- mago_format
    -- mago_lint
    ["markdown-toc"] = "markdown-toc",
    -- markdownfmt
    ["markdownlint"] = "markdownlint",
    ["markdownlint-cli2"] = "markdownlint-cli2",
    ["mdformat"] = "mdformat",
    ["mdsf"] = "mdsf",
    ["mdslw"] = "mdslw",
    -- mix
    -- mojo_format
    -- nginxfmt
    -- nickel; it exists on Mason, but as LSP (exec: `nls`)
    -- nimpretty
    -- nixfmt
    ["nixpkgs_fmt"] = "nixpkgs-fmt",
    -- nomad_fmt
    -- nph
    ["npm-groovy-lint"] = "npm-groovy-lint",
    -- nufmt
    ["ocamlformat"] = "ocamlformat",
    -- ocp-indent
    -- odinfmt
    ["opa_fmt"] = "opa",
    ["ormolu"] = "ormolu",
    -- packer_fmt
    -- pangu
    -- perlimports
    -- perltidy
    -- pg_format
    ["php_cs_fixer"] = "php-cs-fixer",
    ["phpcbf"] = "phpcbf",
    -- phpinsights
    ["pint"] = "pint",
    ["prettier"] = "prettier",
    ["prettierd"] = "prettierd",
    ["pretty-php"] = "pretty-php",
    ["prettypst"] = "prettypst",
    -- puppet-lint
    ["purs-tidy"] = "purescript-tidy",
    -- pycln
    ["pyink"] = "pyink",
    -- pyproject-fmt
    -- python-ly
    -- pyupgrade
    ["reformat-gherkin"] = "reformat-gherkin",
    ["reorder-python-imports"] = "reorder-python-imports",
    -- rescript-format
    -- roc
    -- rstfmt
    ["rubocop"] = "rubocop",
    ["rubyfmt"] = "rubyfmt",
    ["ruff_fix"] = "ruff",
    ["ruff_format"] = "ruff",
    ["ruff_organize_imports"] = "ruff",
    ["rufo"] = "rufo",
    -- runic
    -- ["rustfmt"] = "rustfmt", Deprecated by mason
    ["rustywind"] = "rustywind",
    -- scalafmt
    ["shellcheck"] = "shellcheck",
    ["shellharden"] = "shellharden",
    ["shfmt"] = "shfmt",
    ["sleek"] = "sleek",
    -- smlfmt
    ["snakefmt"] = "snakefmt",
    ["sql_formatter"] = "sql-formatter",
    ["sqlfluff"] = "sqlfluff",
    ["sqlfmt"] = "sqlfmt",
    -- sqruff
    -- squeeze_blanks
    -- standard-clj
    ["standardjs"] = "standardjs",
    ["standardrb"] = "standardrb",
    ["stylelint"] = "stylelint",
    -- styler
    -- stylish-haskell
    ["stylua"] = "stylua",
    ["superhtml"] = "superhtml",
    -- swift
    -- swift_format
    -- swiftformat
    ["swiftlint"] = "swiftlint",
    -- syntax_tree
    ["taplo"] = "taplo",
    ["templ"] = "templ",
    -- terraform_fmt
    -- terragrunt_hclfmt
    ["tex-fmt"] = "tex-fmt",
    ["tlint"] = "tlint",
    -- tofu_fmt
    -- tombi
    -- treefmt
    -- trim_newlines
    -- trim_whitespace
    ["twig-cs-fixer"] = "twig-cs-fixer",
    -- typespec
    ["typos"] = "typos",
    -- typstyle
    -- ufmt
    -- uncrustify
    ["usort"] = "usort",
    -- v
    ["verible"] = "verible",
    ["vsg"] = "vsg",
    ["xmlformat"] = "xmlformatter", -- Deprecated in conform.nvim; redirects to xmlformatter
    ["xmlformatter"] = "xmlformatter",
    -- xmllint
    -- xmlstarlet
    ["yamlfix"] = "yamlfix",
    ["yamlfmt"] = "yamlfmt",
    ["yapf"] = "yapf",
    -- yew-fmt
    ["yq"] = "yq",
    -- zigfmt
    -- ziggy
    -- ziggy_schema
    ["zprint"] = "zprint",
}

return M
