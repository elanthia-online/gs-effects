Effect.new("Major Loot Boost", 9100) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    15
  end
  def start_messages
   Regexp.union(
      %r{\[You have activated a Major Loot Boost\.  Your chances for better LOOT will be boosted for 15 minutes\.\]},
    )
  end
  def end_messages
    Regexp.union(
      %r{\[Your Major Loot Boost has ended\.\]},
    )
  end
end