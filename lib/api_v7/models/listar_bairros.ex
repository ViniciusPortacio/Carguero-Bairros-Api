defmodule ApiV7.Models.ListarBairros do
  use ApiV7Web, :controller

  alias ApiV7.Schema.Bairros
  alias ApiV7.Repo
  import Ecto.Query

  def listar do
    query = from(q in Bairros)
    Repo.all(query)
  end
end
