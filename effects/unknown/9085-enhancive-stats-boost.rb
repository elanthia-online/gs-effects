Effect.new("Enhancive Stats Boost", 9085) do
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
      %r{\[You have activated an Enhancive Stats Boost.  You will be boosted for 15 minutes\.\]},
    )
  end
  def end_messages
    Regexp.union(
      %r{\[Your Enhancive Stats Boost has ended\.\]},
    )
  end
end