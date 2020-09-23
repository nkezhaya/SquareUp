defmodule SquareUp.MixProject do
  use Mix.Project

  def project do
    [
      app: :square_up,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:norm, "~> 0.12.0"},
      {:hackney, "~> 1.16"},
      {:elixir_uuid, "~> 1.2", only: :test}
    ]
  end
end
