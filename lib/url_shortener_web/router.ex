defmodule UrlShortenerWeb.Router do
  use UrlShortenerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", UrlShortenerWeb do
    pipe_through :api
    resources("/urls", UrlController)
  end

  scope "/", UrlShortenerWeb  do
    get("/:short_url", RedirectController, :redirect_to)
  end
end
