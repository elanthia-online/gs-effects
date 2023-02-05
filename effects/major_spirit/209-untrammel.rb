Effect.new("Untrammel", 209) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.majorspiritual
  end
  def start_messages
   Regexp.union(
      %r{A faint slick sheen makes the air about you visible for the briefest of moments, then sinks into you and disappears\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The air shivers about you, glistening faintly before stilling to normalcy\.},
    )
  end
  def mana_cost
    9
  end
end