defmodule UrlShortener.Server do

  def find_long_url(short_url) do
    UrlShortener.Repo.get_by(UrlShortener.Url_Shortener.Url, short_address: short_url).long_address
  end
end
