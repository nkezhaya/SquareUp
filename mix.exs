defmodule SquareUp.MixProject do
  use Mix.Project

  def project do
    [
      app: :square_up,
      version: "0.1.3",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),

      # Docs
      name: "SquareUp",
      source_url: "https://github.com/whitepaperclip/SquareUp"
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
    [
      {:jason, "~> 1.2"},
      {:norm, "~> 0.12"},
      {:hackney, "~> 1.16"},
      {:elixir_uuid, "~> 1.2", only: :test},
      {:ex_doc, "~> 0.22", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      description: "Square Api Client in Elixir",
      licenses: ["MIT"],
      maintainers: ["Derek Kraan"],
      links: %{GitHub: "https://github.com/whitepaperclip/SquareUp"}
    ]
  end
end
