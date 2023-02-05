Effect.new("Doubled Experience Boost", 9082) do
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
      %r{\[You have activated a Doubled Experience Booster!  You will absorb twice as much experience for 15 minutes\.\]},
    )
  end
  def end_messages
    Regexp.union(
      %r{\[Your Doubled Experience Boost has ended\.\]},
    )
  end
end