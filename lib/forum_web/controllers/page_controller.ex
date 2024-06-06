defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "Alice", email: "alice@email.com"},
      %{id: 2, name: "Steve", email: "steve@email.com"},
      %{id: 3, name: "Max", email: "max@email.com"}
    ]
    json(conn, %{users: users})
  end
end
