Effect.new("Sign of Dissipation", 9914) do
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
      %r{Magic flows towards you, but does not reach you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your SIGN OF DISSIPATION is no longer effective\.},
    )
  end
  def spirit_cost
    1
  end
end