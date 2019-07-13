require IEx

defmodule UrlShortenerWeb.RedirectController do

  use UrlShortenerWeb, :controller

  def redirect_to(conn, %{"short_url" => short_url}) do
    long_address = UrlShortener.Server.find_long_url(short_url)
    conn
    |> redirect(external: long_address)
  end
end


# schema id
