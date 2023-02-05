Effect.new("Luck Boost", 9083) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def duration
    15
  end
  def start_messages
   Regexp.union(
      %r{\[You have activated a Luck Booster!  Your attack rolls will be a little extra lucky for 15 minutes\.\]},
    )
  end
  def end_messages
    Regexp.union(
      %r{\[Your Luck Boost has ended\.\]},
    )
  end
end