Effect.new("Elemental Deflection", 507) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.majorelemental
  end
  def start_messages
   Regexp.union(
      %r{You are surrounded by a shimmering field of energy\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel a slight tingling as the shimmering field fades away\.},
    )
  end
  def mana_cost
    7+(([Spells.majorelemental,Stats.level].min-7)/6)
  end
end