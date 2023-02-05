Effect.new("Foresight", 1204) do
  def type
    "defense"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.minormental
  end
  def start_messages
   Regexp.union(
      %r{Opening your mind's eye to the progression of time, a myriad of possible future events fills your consciousness\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Like sand through an hourglass, your visions of the future slip away and fade from your mind\.},
    )
  end
  def mana_cost
    4
  end
end