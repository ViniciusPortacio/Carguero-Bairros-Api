defmodule ApiV7Web.RequestController do
  use ApiV7Web, :controller

  alias ApiV7.Models.Request

  def index(conn, _params) do
    bairros = Request.listar()
    render(conn, "index.json", bairros: bairros)
  end


  def cadastrar(conn, params) do
    # {:ok, params} ->
    # bairro = ListarBairrosFaixaCep.cadastrar(params)
    # render(conn, "show.json", bairro: bairro)


    case Request.cadastrar(params) do
      {:ok, params} ->
        conn
        |> put_status(200)
        |> render(ApiV7Web.RequestView, "show.json",%{params: params})
    end
  end

end
