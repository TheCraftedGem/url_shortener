require IEx

defmodule UrlShortener.Url_ShortenerTest do
  use UrlShortenerWeb.ConnCase

  alias UrlShortener.Url_Shortener

  # describe "urls" do
  #   alias UrlShortener.Url_Shortener.Url

  #   @valid_attrs %{address: "www.google.com"}
  #   @update_attrs %{address: "melvs.ly"}
  #   @invalid_attrs %{address: nil}

  #   def url_fixture(attrs \\ %{}) do
  #     {:ok, url} =
  #       attrs

  #       |> Enum.into(@valid_attrs)
  #       |> Url_Shortener.create_url()

  #     url
  #   end

  #   test "list_urls/0 returns all urls" do
  #     url = url_fixture()

  #     assert Url_Shortener.list_urls() == [url]
  #   end

  #   test "get_url!/1 returns the url with given id" do
  #     url = url_fixture()
  #     assert Url_Shortener.get_url!(url.id) == url
  #   end

  #   test "create_url/1 with valid data creates a url" do
  #     assert {:ok, %Url{} = url} = Url_Shortener.create_url(@valid_attrs)
  #     assert url.address == "www.google.com"
  #   end

  #   test "create_url/1 with invalid data returns error changeset" do
  #     assert {:error, %Ecto.Changeset{}} = Url_Shortener.create_url(@invalid_attrs)
  #   end

  #   test "update_url/2 with valid data updates the url" do
  #     url = url_fixture()
  #     assert {:ok, %Url{} = url} = Url_Shortener.update_url(url, @update_attrs)
  #     assert url.address == "melvs.ly"
  #   end

  #   test "update_url/2 with invalid data returns error changeset" do
  #     url = url_fixture()
  #     assert {:error, %Ecto.Changeset{}} = Url_Shortener.update_url(url, @invalid_attrs)
  #     assert url == Url_Shortener.get_url!(url.id)
  #   end

  #   test "delete_url/1 deletes the url" do
  #     url = url_fixture()
  #     assert {:ok, %Url{}} = Url_Shortener.delete_url(url)
  #     assert_raise Ecto.NoResultsError, fn -> Url_Shortener.get_url!(url.id) end
  #   end

  #   test "change_url/1 returns a url changeset" do
  #     url = url_fixture()
  #     assert %Ecto.Changeset{} = Url_Shortener.change_url(url)
  #   end
  # end
end
