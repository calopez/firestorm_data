defmodule FirestormData.Mixfile do
  use Mix.Project

  def project do
    [app: :firestorm_data,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     aliases: aliases()
    ]
  end

  defp aliases do
    [
      "test": ["ecto.drop --quiet", "ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end


  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger],
     mod: {FirestormData.Application, []}]
  end

  defp deps do
    [
      {:ecto, "~> 2.1.4"},
      {:postgrex, "~> 0.11"}
    ]
  end
end
