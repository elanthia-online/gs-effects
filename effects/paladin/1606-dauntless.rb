Effect.new("Dauntless", 1606) do
  def type
    "offense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.paladin
  end
  def start_messages
   Regexp.union(
      %r{You are filled with a deeply confident and fearless composure\.|Your confidence and fearlessness is bolstered\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your boosted confidence and fearlessness fade\.},
    )
  end
  def mana_cost
    6
  end
end