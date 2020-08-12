defmodule ApiV7Web.ListarView do
  use ApiV7Web, :view

  alias ApiV7Web.ListarView

  def render("index.json", %{bairros: bairros}) do
    %{data: render_many(bairros, ListarView, "base.json")}
  end

  def render("show.json", %{params: params}) do
    %{data: render_one(params, ListarView, "base.json")}
  end

  def render("base.json", %{listar: bairro}) do
    %{
      CodigoBairro: bairro."CodigoBairro",
      CepInicial: bairro."CepInicial",
      CepFinal: bairro."CepFinal"
    }
  end




end
