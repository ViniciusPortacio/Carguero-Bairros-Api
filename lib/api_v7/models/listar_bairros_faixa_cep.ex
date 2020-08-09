defmodule ApiV7.Models.ListarBairrosFaixaCep do
  use ApiV7Web, :controller

  alias ApiV7.Schema.BairrosFaixaCep
  alias ApiV7.Repo

  import Ecto.Query
  import Ecto.Changeset

  def listar do
    query = from(q in BairrosFaixaCep)
    Repo.all(query)
  end

  def cadastrar(params) do
    %BairrosFaixaCep{}
    |> cast(params, [:CodigoBairro, :CepInicial, :CepFinal])
    |> BairrosFaixaCep.changeset(params)
    |> Repo.insert()
  end
end

# ApiV7.Models.ListarBairrosFaixaCep.cadastrar %{CodigoBairro: 12, CepInicial: "12313322", CepFinal: "12312322"}
