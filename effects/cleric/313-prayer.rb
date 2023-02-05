Effect.new("Prayer", 313) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.cleric
  end
  def start_messages
   Regexp.union(
      %r{Turning your thoughts inward\, you ask for the .* of your deity to protect you\.\s+.+, and you sense that your prayer has been granted\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel the protection of your deity's influence fade\.},
    )
  end
  def mana_cost
    13 + ((if [Spells.cleric,Stats.level].min > 35 then [Spells.cleric,Stats.level].min - 35 else 0 end) / 3)
  end
end