defmodule PluralsightTweet.Scheduler do
  def schedule_file(schedule, file) do
    Quantum.add_job(schedule, fn -> IO.puts PluralsightTweet.FileReader.get_string_to_tweet(file) end)
  end
end