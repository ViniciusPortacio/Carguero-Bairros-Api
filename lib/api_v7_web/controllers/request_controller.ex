defmodule ApiV7Web.RequestController do
  use ApiV7Web, :controller

  alias ApiV7.Models.Request
  alias ApiV7.Schema.BairrosFaixaCep

  def index(conn, _params) do
    bairros = Request.listar()
    render(conn, "index.json", bairros: bairros)
  end


  def cadastrar(conn, params) do
    case Request.cadastrar(params) do
      {:ok, params} ->
        conn
        |> put_status(200)
        |> render(ApiV7Web.RequestView, "show.json",%{params: params})
    end
  end

  # def buscar(conn, %{"CodigoBairro" => codigobairro}) do
  #   with busca = %BairrosFaixaCep{} <- Request.buscar(codigobairro) do
  #     render(conn, "busca.json",  busca: busca)
  #   end

    def buscar(conn, %{"id" => id}) do
      with busca = %BairrosFaixaCep{} <- Request.busca(id) do
        render(conn, "busca.json", busca: busca)
      end
    end
end
