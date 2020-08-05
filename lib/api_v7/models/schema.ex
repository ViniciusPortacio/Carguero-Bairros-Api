defmodule ApiV7.Schema.Bairros do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key{:CodigoBairro, :id, autocomplete: true}

  schema "Bairros" do
    field :SiglaUf, :string
    field :CodigoLocalidade, :integer
    # field :Nome, :binary
  end

  def changeset(appUsuario, attrs) do
    appUsuario
    |> cast(attrs, [
      :CogidoBairro,
      :SiglaUf,
      :CodigoLocalidade,
      # :Nome
    ])
  end
end
