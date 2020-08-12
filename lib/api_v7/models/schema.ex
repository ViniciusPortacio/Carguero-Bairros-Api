defmodule ApiV7.Schema.BairrosFaixaCep do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key{:id, :id, autocomplete: true}

  schema "BairrosFaixaCep" do
    field :CodigoBairro, :integer
    field :CepInicial, :string
    field :CepFinal, :string

  end

  def changeset(bairrosfaixacep, attrs \\ %{}) do
    bairrosfaixacep
    |> cast(attrs, [
      :CodigoBairro,
      :CepInicial,
      :CepFinal
    ])
  end
end
