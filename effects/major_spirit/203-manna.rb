Effect.new("Manna", 203) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    5
  end
  def start_messages
   Regexp.union(
      %r{The spiritual nourishment has a replenishing effect upon you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The replenishing effect fades, but you are left with a feeling of wellbeing\.},
    )
  end
  def mana_cost
    3
  end
end