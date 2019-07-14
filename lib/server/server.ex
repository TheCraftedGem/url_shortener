defmodule UrlShortener.Server do
  alias UrlShortener.Url_Shortener.Url
  alias UrlShortener.Repo

  def find_long_url(short_url) do
    Repo.get_by(Url, short_address: short_url).long_address
  end
end
