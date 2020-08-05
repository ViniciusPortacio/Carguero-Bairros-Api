defmodule ApiV7.Repo do
  use Ecto.Repo,
    otp_app: :api_v7,
    adapter: Ecto.Adapters.Tds
end
