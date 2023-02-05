Effect.new("Sign of Defending", 9907) do
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
      %r{Your dancing fingers weave a web of protection around you!},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your SIGN OF DEFENDING is no longer effective\.},
    )
  end
  def mana_cost
    2
  end
end