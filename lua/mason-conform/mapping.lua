local M = {}

-- conform formatter to mason package mapping
-- https://mason-registry.dev/registry/list
M.conform_to_package = {
    -- air
    -- alejandra
    -- ansible-lint
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
    -- bicep
    ["biome"] = "biome",
    -- biome-check
    -- biome-organize-imports
    ["black"] = "black",
    ["blade-formatter"] = "blade-formatter",
    ["blue"] = "blue",
    -- bpfmt
    -- bsfmt
    ["buf"] = "buf",
    ["buildifier"] = "buildifier",
    -- cabal_fmt
    -- caramel_fmt
    ["cbfmt"] = "cbfmt",
    ["clang-format"] = "clang-format",
    -- cljfmt
    -- cljstyle
    ["cmake_format"] = "cmakelang",
    -- codeql
    ["codespell"] = "codespell",
    -- commitmsgfmt
    -- crlfmt
    -- crystal
    ["csharpier"] = "csharpier",
    -- css_beautify
    -- cue_fmt
    -- d2
    ["darker"] = "darker",
    -- dart_format
    -- dcm_fix
    -- dcm_format
    ["deno_fmt"] = "deno",
    -- dfmt
    ["djlint"] = "djlint",
    -- docformatter
    -- docstrfmt
    -- doctoc
    ["dprint"] = "dprint",
    ["easy-coding-standard"] = "easy-coding-standard",
    -- efmt
    ["elm_format"] = "elm-format",
    -- erb_format
    -- erlfmt
    ["eslint_d"] = "eslint_d",
    ["fantomas"] = "fantomas",
    -- findent
    -- fish_indent
    ["fixjson"] = "fixjson",
    -- fnlfmt
    -- forge_fmt
    -- format-dune-file
    -- format-queries
    ["fourmolu"] = "fourmolu",
    -- fprettify
    -- gawk
    ["gci"] = "gci",
    ["gdformat"] = "gdtoolkit",
    ["gersemi"] = "gersemi",
    -- gleam
    -- gluon_fmt
    -- gn
    -- gofmt
    ["gofumpt"] = "gofumpt",
    ["goimports"] = "goimports",
    ["goimports-reviser"] = "goimports-reviser",
    -- gojq
    ["golines"] = "golines",
    ["google-java-format"] = "google-java-format",
    -- grain_format
    -- hcl
    -- hindent
    -- html_beautify
    ["htmlbeautifier"] = "htmlbeautifier",
    -- hurlfmt
    -- imba_fmt
    -- indent
    -- init
    -- injected
    -- inko
    ["isort"] = "isort",
    ["joker"] = "joker",
    ["jq"] = "jq",
    -- js_beautify
    ["jsonnetfmt"] = "jsonnetfmt",
    -- just
    -- kcl
    -- kdlfmt
    -- ktfmt
    ["ktlint"] = "ktlint",
    -- kulala-fmt
    ["latexindent"] = "latexindent",
    -- leptosfmt
    -- liquidsoap-prettier
    -- llf
    -- lua-format
    ["markdown-toc"] = "markdown-toc",
    -- markdownfmt
    ["markdownlint"] = "markdownlint",
    ["markdownlint-cli2"] = "markdownlint-cli2",
    ["mdformat"] = "mdformat",
    -- mdsf
    ["mdslw"] = "mdslw",
    -- mix
    -- mojo_format
    -- nginxfmt
    -- nickel
    -- nimpretty
    -- nixfmt
    ["nixpkgs_fmt"] = "nixpkgs-fmt",
    -- nomad_fmt
    -- nph
    -- npm-groovy-lint
    -- nufmt
    ["ocamlformat"] = "ocamlformat",
    -- ocp-indent
    ["opa_fmt"] = "opa",
    -- ormolu
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
    -- prettypst
    -- puppet-lint
    -- purs-tidy
    -- pyink
    -- pyproject-fmt
    -- python-ly
    -- reformat-gherkin
    ["reorder-python-imports"] = "reorder-python-imports",
    -- rescript-format
    -- roc
    -- rstfmt
    ["rubocop"] = "rubocop",
    ["rubyfmt"] = "rubyfmt",
    ["ruff_fix"] = "ruff",
    ["ruff_format"] = "ruff",
    -- ruff_organize_imports
    ["rufo"] = "rufo",
    -- runic
    -- ["rustfmt"] = "rustfmt", Deprecated by mason
    ["rustywind"] = "rustywind",
    -- scalafmt
    ["shellcheck"] = "shellcheck",
    ["shellharden"] = "shellharden",
    ["shfmt"] = "shfmt",
    -- sleek
    -- smlfmt
    -- snakefmt
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
    -- superhtml
    -- swift_format
    -- swiftformat
    -- swiftlint
    -- syntax_tree
    ["taplo"] = "taplo",
    ["templ"] = "templ",
    -- terraform_fmt
    -- terragrunt_hclfmt
    -- tex-fmt
    ["tlint"] = "tlint",
    -- tofu_fmt
    -- trim_newlines
    -- trim_whitespace
    -- twig-cs-fixer
    ["typos"] = "typos",
    -- typstyle
    -- ufmt
    -- uncrustify
    ["usort"] = "usort",
    -- verible
    -- vsg
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
