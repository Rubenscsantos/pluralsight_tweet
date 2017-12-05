defmodule PluralsightTweet.Scheduler do
  def schedule_file(schedule, filepath) do
    Quantum.add_job(schedule, fn -> PluralsightTweet.FileReader.get_string_to_tweet(filepath) 
      |> PluralsightTweet.TweetServer.tweet end)
  end
end