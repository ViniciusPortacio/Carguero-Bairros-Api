defmodule ApiV7Web.ListarController do
  use ApiV7Web, :controller

  alias ApiV7Web.ListarView
  alias ApiV7.Models.ListarBairrosFaixaCep
  import Ecto.Changeset
  alias ApiV7.Schema.BairrosFaixaCep
  alias ApiV7.Repo


  def index(conn, _params) do
    bairros = ListarBairrosFaixaCep.listar()
    render(conn, "index.json", bairros: bairros)
  end


  def cadastrar(conn, params) do
    # {:ok, params} ->
    # bairro = ListarBairrosFaixaCep.cadastrar(params)
    # render(conn, "show.json", bairro: bairro)


    case ListarBairrosFaixaCep.cadastrar(params) do
      {:ok, params} ->
        conn
        |> put_status(200)
        |> render(ApiV7Web.ListarView, "show.json",%{params: params})
    end
  end

end
