defmodule ApiV7Web.ListarController do
  use ApiV7Web, :controller

  alias ApiV7.Models.ListarBairrosFaixaCep

  def index(conn, _params) do
    bairros = ListarBairrosFaixaCep.listar()
    render(conn, "index.json", BairrosFaixaCep: bairros)
  end

  def cadastrar do

  end
end
