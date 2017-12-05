defmodule PluralsightTweet.FileReader do
  def get_string_to_tweet(path) do
    File.read!(path)
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    |> Enum.filter(&String.length(&1) <= 280)
    |> Enum.random()
    #|> Enum.each(fn x -> x end)
    #|> Enum.fetch!()
  end
  #def which_line_do_i_read?(enumerable) do
  #  Enum.reduce(enumerable, )
  #end

end