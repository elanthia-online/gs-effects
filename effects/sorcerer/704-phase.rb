Effect.new("Phase", 704) do
  def type
    "utility"
  end
  def availability
    "all"
  end
  def duration
    20 + Spells.sorcerer
  end
  def start_messages
   Regexp.union(
      %r{A wave of tingling passes across your body, momentarily casting it into semi-transparency\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your body pulses momentarily into semi transparency and then returns to normal\.},
    )
  end
  def mana_cost
    4
  end
end