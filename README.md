# Eliver

This is a fork from https://github.com/glasnoster/eliver and I've also pulled in the enquirer library from https://github.com/glasnoster/enquirer/tree/master

Thank you Martin Pretorius for Eliver! Unfortunately it needed some tuning for Elixir 1.15 - i'll be happy to kill this fork if eliver is updated.

## Installation

  1. Add `eliver` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:eliver, git: "https://github.com/franc/eliver", override: true, only: :dev}]
end
```

  2. Create a VERSION file with the initial version in the root of the project
  3. In `mix.exs`, read the version from `VERSION`
```elixir
version: String.trim(File.read!("VERSION")),
```

## Usage

```bash
$ mix eliver.bump
```

Interactive semantic versioning for Elixir packages.

Eliver is an Elixir clone of [semvergen](https://github.com/brendon9x/semvergen)

Eliver...
* bumps the version in `mix.exs`
* prompts the user for changelog entries and updates `CHANGELOG.md`
* commits these changes
* creates a tag
* pushes to origin
