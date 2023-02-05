Effect.new("Wizard's Shield", 919) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    1
  end
  def start_messages
   Regexp.union(
      %r{A translucent sphere forms around you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The translucent sphere fades from around you\.},
    )
  end
  def mana_cost
    19
  end
end