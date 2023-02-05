Effect.new("Enhancive Recovery Boost", 9086) do
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
      %r{\[You have activated an Enhancive Recovery Boost.  You will be boosted for 15 minutes\.\]},
    )
  end
  def end_messages
    Regexp.union(
      %r{\[Your Enhancive Recovery Boost has ended\.\]},
    )
  end
end