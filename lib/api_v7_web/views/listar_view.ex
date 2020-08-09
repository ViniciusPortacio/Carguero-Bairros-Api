defmodule ApiV7Web.ListarView do
  use ApiV7Web, :view

  alias ApiV7Web.ListarView

  def render("index.json", %{bairrosfaixacep: bairros}) do
    %{data: render_many(bairros, ListarView, "base.json")}
  end

  def render("base.json", %{listar: bairros}) do
    %{
      CodigoBairro: bairros."CodigoBairro",
      CepInicial: bairros."CepInicial",
      CepFinal: bairros."CepFinal"
    }
  end




end
