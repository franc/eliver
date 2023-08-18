defmodule Eliver.Mixfile do
  use Mix.Project

  def project do
    [
      app: :eliver,
      version: String.trim(File.read!("VERSION")),
      elixir: "~> 1.15",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: "Interactive semantic versioning for Elixir packages",
      deps: deps(),
      package: package()
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp package do
    [
      maintainers: ["Franc Paul"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/franc/eliver"},
      files: ["lib", "mix.exs", "README.md", "VERSION"]
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.30", only: :dev, runtime: false}
    ]
  end
end
