Effect.new("Gift of Eonak", 9087) do
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
      %r{\[You have activated a Gift of Eonak!  You will have an advantage on crafting skill rolls for 15 minutes\.\]},
    )
  end
  def end_messages
    Regexp.union(
      %r{\[Your Gift of Eonak has ended\.\]},
    )
  end
end