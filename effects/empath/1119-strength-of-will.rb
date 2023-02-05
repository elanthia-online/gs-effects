Effect.new("Strength Of Will", 1119) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.empath
  end
  def start_messages
   Regexp.union(
      %r{You feel an aura of resolve surround you\.  The exhilarating sensation sends your heart racing and a warm flush tingling through your body\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your aura of resolve dissipates\.},
    )
  end
  def mana_cost
    19 + (([Spells.empath,Stats.level].min - 19) / 6.0).round
  end
end