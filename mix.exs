defmodule StripPlugin.MixProject do
  use Mix.Project

  def project do
    [
      app: :strip_plugin,
      version: "0.1.0",
      elixir: "~> 1.6",
      description: description(),
      package: package(),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url: "https://github.com/se-apc/strip_plugin"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [{:distillery, "~> 2.0"}]
  end

  defp description() do
    "A Distillery Plugin to safely strip Elixir Release Builds"
  end

  defp package() do
    [
      # These are the default files included in the package
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/se-apc/strip_plugin"}
    ]
  end
end
