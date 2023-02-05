Effect.new("Next Group Bounty", 9056) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    15
  end
  def start_messages
   Regexp.union(
      %r{[A-Z][a-z]+ turns to you and says, "[A-Z][a-z]+ has signed you up to join (?:him|her) on (?:his|her) task\.  I trust that s?he has adequately informed you of the nature of the task.*},
    )
  end
end