defmodule ApiV7Web.RequestView do
  use ApiV7Web, :view

  alias ApiV7Web.RequestView

  def render("index.json", %{bairros: bairros}) do
    %{data: render_many(bairros, RequestView, "base.json")}
  end

  def render("show.json", %{params: params}) do
    %{data: render_one(params, RequestView, "base.json")}
  end

  def render("base.json", %{request: bairro}) do
    %{
      CodigoBairro: bairro."CodigoBairro",
      CepInicial: bairro."CepInicial",
      CepFinal: bairro."CepFinal"
    }
  end




end
