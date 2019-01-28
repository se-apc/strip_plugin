# StripPlugin

The `beam_lib.strip_release()` core function currently removes chunks that are needed for Elixir applications.  This Distillery plugin works around the issue by re-implementing the function locally.

** Note this plugin will not be necessary once https://github.com/erlang/otp/pull/2114 is merged **

## Installation

There are two ways to include the plugin.  Add this repo to your mix.exs file:

```elixir
def deps do
  [
    {:strip_plugin, github: "se-apc/strip_plugin", runtime: false}
  ]
end
```

OR

Copy/Paste lib/strip_plugin.ex to your rel/plugins/strip_plugin.exs file.  This

Finally, add the plugin to your `rel/config.exs` file:

```elixir
environment :prod do
  plugin StripPlugin
end
```

## ZIP Apps

Erlang/Elixir supports storing all BEAM files of an app in a ZIP file.  This plugin supports doing this and can be enabled by
adding this to `config/config.exs`

```elixir
config :strip_plugin, zip_apps: true
```

## License

MIT. See the [`LICENSE.md`](https://github.com/bitwalker/distillery/blob/master/LICENSE.md) in this repository for more details.