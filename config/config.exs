use Mix.Config

config :firestorm_data, FirestormData.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "firestorm_data_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"

config :firestorm_data, ecto_repos: [FirestormData.Repo]

import_config "#{Mix.env}.exs"
