Effect.new("Sign of Deflection", 9910) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    1 + Stats.level / 6.0
  end
  def start_messages
   Regexp.union(
      %r{You feel magical energies distort and flow around you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your SIGN OF DEFLECTION is no longer effective\.},
    )
  end
  def mana_cost
    3
  end
end