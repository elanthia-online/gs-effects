Effect.new("Sign of Striking", 9904) do
  def type
    "offense"
  end
  def availability
    "self-cast"
  end
  def duration
    1 + Stats.level / 6.0
  end
  def start_messages
   Regexp.union(
      %r{You (?:grip|flex) your [\w\s']+ with renewed vigor!},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your SIGN OF STRIKING is no longer effective\.},
    )
  end
  def mana_cost
    1
  end
end