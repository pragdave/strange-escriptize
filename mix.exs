defmodule Issues.Mixfile do
  use Mix.Project

  #START:project
  def project do
    [ app:     :issues,
      version: "0.0.1",
      elixir:  ">= 0.0.0",
      #START_HIGHLIGHT
      escript_main_module: Issues.CLI,
      #END_HIGHLIGHT
      deps:    deps ]
  end
  #END:project

  # Configuration for the OTP application
  def application do
    [ 
      mod:          { Issues, [] },
      applications: [ :httpotion, :jsx ] 
    ]
  end

  #START:deps
  defp deps do
    [
      { :httpotion,  github: "pragdave/httpotion" },
      { :jsx,        github: "talentdeficit/jsx"  }
    ]
  end
  #END:deps
end
