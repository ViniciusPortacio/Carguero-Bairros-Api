defmodule ApiV7.Models.Request do
  use ApiV7Web, :controller

  alias ApiV7.Schema.BairrosFaixaCep
  alias ApiV7.Repo

  import Ecto.Query

  def listar do
    query = from(q in BairrosFaixaCep)
    Repo.all(query)
  end

  @spec cadastrar(:invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}) ::
          any
  def cadastrar(attrs \\ %{}) do
    # IO.inspect(params)
    %BairrosFaixaCep{}
    |> BairrosFaixaCep.changeset(attrs)
    |> Repo.insert()
  end

  def busca(id), do: Repo.get(BairrosFaixaCep, id)
  # def get_user(id), do: Repo.get(User, id)

  # def busca do
  #   Repo.get!(BairrosFaixaCep, id)
  # end
end
