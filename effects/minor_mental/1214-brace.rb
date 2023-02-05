Effect.new("Brace", 1214) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.minormental
  end
  def start_messages
   Regexp.union(
      %r{Thick plates of bone grow from your forearms\.},
      %r{The bones surrounding your forearms shift and fortify\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The thick plates of bone around your forearms begin to crack, then shatter into a fine white dust\.},
    )
  end
  def mana_cost
    14
  end
end