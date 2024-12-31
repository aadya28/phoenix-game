defmodule HangmanWeb.IndexController do
  use HangmanWeb, :controller

  def index(conn, _params) do
    render(conn, :index, layout: false)
  end
end
