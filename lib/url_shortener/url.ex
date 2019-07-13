require IEx

defmodule UrlShortener.Url_Shortener.Url do
  use Ecto.Schema
  import Ecto.Changeset

  schema "urls" do
    field :short_address, :string
    field :long_address, :string

    timestamps()
  end

  @doc false
  def changeset(url, attrs) do
    url
    |> cast(attrs, [:long_address, :short_address])
    |> validate_required([:long_address, :short_address])
  end
end
