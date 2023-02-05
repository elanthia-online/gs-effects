Effect.new("Sign of Warding", 9903) do
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
      %r{Your SIGN OF WARDING is no longer effective\.},
    )
  end
  def mana_cost
    1
  end
end