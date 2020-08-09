defmodule ApiV7Web.ListarController do
  use ApiV7Web, :controller

  alias ApiV7.Models.ListarBairrosFaixaCep
  import Ecto.Changeset
  alias ApiV7.Schema.BairrosFaixaCep
  alias ApiV7.Repo


  def index(conn, _params) do
    bairros = ListarBairrosFaixaCep.listar()
    render(conn, "index.json", BairrosFaixaCep: bairros)
  end

  def cadastrar(conn, params) do
    IO.inspect(params)
    %BairrosFaixaCep{}
    |> cast(params, [:CodigoBairro, :CepInicial, :CepFinal])
    |> BairrosFaixaCep.changeset(params)
    |> Repo.insert()
  end
end
