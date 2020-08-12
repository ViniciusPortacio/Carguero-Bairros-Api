defmodule ApiV7.Models.Request do
  use ApiV7Web, :controller

  alias ApiV7.Schema.BairrosFaixaCep
  alias ApiV7.Repo

  import Ecto.Query

  def listar do
    query = from(q in BairrosFaixaCep)
    Repo.all(query)
  end

  def cadastrar(attrs \\ %{}) do
    # IO.inspect(params)
    %BairrosFaixaCep{}
    |> BairrosFaixaCep.changeset(attrs)
    |> Repo.insert()
  end
end

# ApiV7.Models.ListarBairrosFaixaCep.cadastrar %{CodigoBairro: 12, CepInicial: "12313322", CepFinal: "12312322"}
