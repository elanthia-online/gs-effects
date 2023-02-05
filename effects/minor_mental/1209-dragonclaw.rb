Effect.new("Dragonclaw", 1209) do
  def type
    "offense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.minormental
  end
  def start_messages
   Regexp.union(
      %r{Your hands grow hard and scaly\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The scales covering your hands turn brittle and flake away\.},
    )
  end
  def mana_cost
    9
  end
end