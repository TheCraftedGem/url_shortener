defmodule UrlShortener.Repo.Migrations.CreateUrls do
  use Ecto.Migration

  def change do
    create table(:urls) do
      add :long_address, :string
      add :short_address, :string

      timestamps()
    end
  end
end
