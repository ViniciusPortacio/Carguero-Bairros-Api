defmodule ApiV7Web.ListarView do
  use ApiV7Web, :view

  alias ApiV7Web.ListarView

  def render("index.json", %{bairros: bairros}) do
    %{data: render_many(bairros, ListarView, "index.json")}
  end

  def render("index.json", %{listar: bairros}) do
    %{
      CodigoBairro: bairros."CodigoBairro",
      SiglaUf: bairros."SiglaUf",
      CodigoLocalidade: bairros."CodigoLocalidade",
      # Nome: bairros."Nome"
    }
  end
end
