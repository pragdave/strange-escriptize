defmodule Issues do
  use Application.Behaviour

  def start(_type, _args) do
    Issues.Supervisor.start_link
  end

end
