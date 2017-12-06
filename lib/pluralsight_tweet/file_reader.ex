defmodule PluralsightTweet.FileReader do
  @doc """
  This function will take the path to a file and find a
  string that can be tweeted out.

  It will trim all the string, and then eliminate any 
  strings that are larger than 280 characters.

  iex> PluralsightTweet.FileReader.get_strings_to_tweet("priv/test/doc.txt")
  "ABC"

  iex> PluralsightTweet.FileReader.get_strings_to_tweet("priv/test/too_long.txt")
  "short line"
  """
  def get_strings_to_tweet(path) do
    File.read!(path)
    |> pick_string
    #|> Enum.each(fn x -> x end)
    #|> Enum.fetch!()
  end
  #def which_line_do_i_read?(enumerable) do
  #  Enum.reduce(enumerable, )
  #end

  def pick_string(str) do
    str
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    |> Enum.filter(&String.length(&1) <= 280)
    |> Enum.random()
  end

end