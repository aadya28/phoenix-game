defmodule HangmanWeb.IndexHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use HangmanWeb, :html

  embed_templates "index_html/*"
end
