defmodule BlocksWeb.Live.Demo do
  use Phoenix.LiveView, layout: {BlocksWeb.Layouts, :root}

  def mount(_params, _session, socket) do
    {:ok, assign(socket, show: true)}
  end

  def handle_event("click", _, socket) do
    {:noreply, assign(socket, show: false)}
  end
end
