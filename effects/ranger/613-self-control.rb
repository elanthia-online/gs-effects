Effect.new("Self Control", 613) do
  def type
    "defense/utility"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.ranger
  end
  def start_messages
   Regexp.union(
      %r{You feel an aura of natural confidence surrounding you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel the aura of confidence leave you\.},
    )
  end
  def mana_cost
    13
  end
end