Effect.new("Sign of Shields", 9913) do
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
      %r{Your SIGN OF SHIELDS is no longer effective\.},
    )
  end
  def spirit_cost
    1
  end
end