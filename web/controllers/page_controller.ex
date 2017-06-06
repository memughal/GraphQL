defmodule GraphQL.PageController do
  use GraphQL.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
