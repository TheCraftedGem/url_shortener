defmodule LinkCache.Cache do
  def fetch(slug, default_value_function) do
    case get(slug) do
      {:not_found} -> set(slug, default_value_function.())
      {:found, result} -> result
    end
  end
end
