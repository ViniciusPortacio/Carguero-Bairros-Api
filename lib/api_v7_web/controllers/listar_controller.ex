defmodule ApiV7Web.ListarController do
  use ApiV7Web, :controller

  alias ApiV7.Schema.Bairros
  alias ApiV7.Models.ListarBairros

  def index(conn, _params) do
    bairros = ListarBairros.listar()
    # IO.inspect bairros
    render(conn, "index.json", bairros: bairros)
  end
end
