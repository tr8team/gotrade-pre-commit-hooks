# Gotrade PreCommit Hooks

This repository contains a series of pre-commit hooks for Gotrade. This includes:

### Formatter

- [.NET formatter with `dotnet`](#dotnetfmt)
- [YAML formatter with `prettier`](#yamlfmt)
- [Markdown Formatter with `prettier`](#mdfmt)
- [JSON Formatter with `prettier`](#jsonfmt)
- [Node Formatter with `prettier`](#nodefmt)
- [Nix formatter with `nixpkgs-fmt`](#nixfmt)
- [PHP formatter with `php-cs-fixer`](#phpfmt)
- [Shell formatter with `shfmt`](#shfmt)

### Linters

- [.NET linter with `dotnet`](#dotnetlint)
- [Docker linter with `hadolint`](#dockerlint)
- [PHP linter with `phpstan`](#phplint)
- [Node linter with `eslint`](#nodelint)
- [TypeScript linter with `tsc`](#tslint)

### Enforcers

- [Enforce `sg` releaser's `atomi_release.yaml` conforms to `.gitlint`](#releaser-enforce)
- [Enforce that all Shell Scripts are executable](#exec-enforce)
- [Enforce that `action.yaml` for Gtihub Action generates documentation](#action-docs-enforce)

# Usage

Here documents the assumptions and requirements on how to use the each formatters, linters and enforcers

All hooks:

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: dotnetfmt
    - id: yamlfmt
    - id: mdfmt
    - id: nixfmt
    - id: phpfmt
    - id: shfmt
    - id: jsonfmt
    - id: dotnetlint
    - id: dockerlint
    - id: phplint
    - id: nodelint
    - id: tslint
    - id: exec-enforce
    - id: releaser-enforce
    - id: action-docs-enforce
```

## Formatters

Formatters will change the styling of files without affecting code.

### dotnetfmt

Formats .NET files with `dotnet format`

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: dotnetfmt
```

| Key                     | Value              |
| ----------------------- | ------------------ |
| pre-req                 | `dotnet` installed |
| id                      | `dotnetfmt`        |
| files                   | `^.*\.cs$`         |
| affect non-staged files | `true`             |

### yamlfmt

Format YAML files with `prettier`

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: yamlfmt
```

| Key                     | Value                |
| ----------------------- | -------------------- |
| pre-req                 | `prettier` installed |
| id                      | `yamlfmt`            |
| files                   | `^.*\.(yaml\|yml)$`  |
| affect non-staged files | `false`              |

### nodefmt

Format Typescript and Javascript files with `prettier`

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: nodefmt
```

| Key                     | Value                   |
| ----------------------- | ----------------------- |
| pre-req                 | `prettier` installed    |
| id                      | `nodefmt`               |
| files                   | `^.*\.([mc]?[tj]?sx?)$` |
| affect non-staged files | `false`                 |

### mdfmt

Format Markdown files with `prettier`

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: mdfmt
```

| Key                     | Value                |
| ----------------------- | -------------------- |
| pre-req                 | `prettier` installed |
| id                      | `mdfmt`              |
| files                   | `^.*\.(MD\|md)$`     |
| affect non-staged files | `false`              |

### jsonfmt

Format JSON files with `prettier`

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: jsonfmt
```

| Key                     | Value                |
| ----------------------- | -------------------- |
| pre-req                 | `prettier` installed |
| id                      | `jsonfmt`            |
| files                   | `^.*\.json$`         |
| affect non-staged files | `false`              |

### nixfmt

Format Nix files with `nixpkgs-fmt`

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: nixfmt
```

| Key                     | Value                   |
| ----------------------- | ----------------------- |
| pre-req                 | `nixpkgs-fmt` installed |
| id                      | `nixfmt`                |
| files                   | `^.*\.nix$`             |
| affect non-staged files | `false`                 |

### phpfmt

Format PHP files with `php-cs-fixer`

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: phpfmt
```

| Key                     | Value                    |
| ----------------------- | ------------------------ |
| pre-req                 | `php-cs-fixer` installed |
| id                      | `phpfmt`                 |
| files                   | `^.*\.php$`              |
| affect non-staged files | `true`                   |
| configuration file path | `.php-cs-fixer.dist.php` |

### shfmt

Format shell scripts with `shfmt`

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: shfmt
```

| Key                     | Value             |
| ----------------------- | ----------------- |
| pre-req                 | `shfmt` installed |
| id                      | `shfmt`           |
| files                   | `^.*\.sh$`        |
| affect non-staged files | `false`           |

## Linters

Linters will perform static analysis on code and configuration to catch potential errors

### dotnetlint

Lint .NET files with `dotnet format`

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: dotnetlint
```

| Key                     | Value              |
| ----------------------- | ------------------ |
| pre-req                 | `dotnet` installed |
| id                      | `dotnetlint`       |
| files                   | `^.*\.cs$`         |
| affect non-staged files | `true`             |

### dockerlint

Format Dockerfiles with `hadolint`

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: dockerlint
```

| Key                     | Value                |
| ----------------------- | -------------------- |
| pre-req                 | `hadolint` installed |
| id                      | `dockerlint`         |
| files                   | `^.*Dockerfile.*$`   |
| affect non-staged files | `false`              |

### phplint

Format PHP files with `phpstan`

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: phplint
```

| Key                     | Value                                         |
| ----------------------- | --------------------------------------------- |
| pre-req                 | `phpstan` installed at `./vendor/bin/phpstan` |
| id                      | `phplint`                                     |
| files                   | `^app/.*\.php$`                               |
| affect non-staged files | `false`                                       |
| configuration file path | `phpstan.neon`                                |

### nodelint

Format Node files, like Typescript and JavaScript with `eslint`

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: nodelint
```

| Key                     | Value                                            |
| ----------------------- | ------------------------------------------------ |
| pre-req                 | `eslint` installed                               |
| id                      | `nodelint`                                       |
| files                   | `^(src)/.*\.([mc]?js\|[mc]?ts\|json\|jsx\|tsx)$` |
| affect non-staged files | `false`                                          |
| configuration file path | `./config/.eslintrc.json`                        |

### tslint

Format Typescript files with `tsc --noEmit`

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: tslint
```

| Key                     | Value                                         |
| ----------------------- | --------------------------------------------- |
| pre-req                 | `tsc` installed                               |
| id                      | `tslint`                                      |
| files                   | `^(src\|tests)/.*\.(js\|ts\|json\|jsx\|tsx)$` |
| affect non-staged files | `true`                                        |

## Enforcers

Enforcers enforces certain properties of the repositories, such as documents are generated, files matches, scripts are in the correct permission modes etc.

### releaser-enforce

Enforce `sg` releaser's `atomi_release.yaml` conforms to `.gitlint`

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: releaser-enforce
```

| Key                     | Value                              |
| ----------------------- | ---------------------------------- |
| pre-req                 | `sg` installed                     |
| id                      | `releaser-enforce`                 |
| files                   | `(atomi_release.yaml \| .gitlint)` |
| affect non-staged files | `false`                            |

### exec-enforce

Enforce that all Shell Scripts are executable

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: exec-enforce
```

| Key                     | Value                 |
| ----------------------- | --------------------- |
| pre-req                 | `coreutils` installed |
| id                      | `exec-enforce`        |
| files                   | `^.*\.sh$`            |
| affect non-staged files | `false`               |

### action-docs-enforce

Enforce that `action.yaml` for GitHub action are documented in
`README.MD`

```yaml
- repo: https://github.com/tr8team/gotrade-pre-commit-hooks
  rev: main
  hooks:
    - id: action-docs-enforce
```

| Key                     | Value                     |
| ----------------------- | ------------------------- |
| pre-req                 | `action-docs` installed   |
| id                      | `action-docs-enforce`     |
| files                   | `^.*action\.(yaml\|yml)$` |
| affect non-staged files | `true`                    |

# Authors

- [Kirinnee](kirinnee97@gmail.com)
