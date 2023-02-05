Effect.new("Encumbrance Boost", 9081) do
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
      %r{\[You have activated an Encumbrance Boost.  Your net encumbrance will be reduced by 50 lbs for 15 minutes\.\]},
    )
  end
  def end_messages
    Regexp.union(
      %r{\[Your Encumbrance Boost has ended\.\]},
    )
  end
end