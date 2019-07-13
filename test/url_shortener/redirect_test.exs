require IEx

defmodule UrlShortener.RedirectTest do
  use UrlShortenerWeb.ConnCase

  alias UrlShortener.Url_Shortener.Link

  describe "url redirect" do
    @short_address %{short_address: "melvs"}
    @long_address %{long_address: "www.google.com"}


    def url_fixture(attrs \\ %{}) do
      {:ok, url} =
        attrs
        |> Enum.into(@short_address)
        |> Enum.into(@long_address)
        |> Link.create_url()
      url
    end

  end


  test "shit redirects", %{conn: conn} do
    url_fixture()
    conn = get(conn, Routes.redirect_path(conn, :redirect_to, @short_address[:short_address]))

    assert redirected_to(conn) == @long_address[:long_address]
  end

end
