Effect.new("Nature's Touch", 625) do
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
      %r{You suddenly feel the power of nature surround you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel the gathering of nature's power leave you\.},
    )
  end
  def mana_cost
    25
  end
end