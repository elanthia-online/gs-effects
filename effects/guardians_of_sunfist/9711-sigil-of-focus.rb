Effect.new("Sigil of Focus", 9711) do
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
      %r{You feel your mind and body gird themselves against magical interference\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your mind and body begin to relax after that period of intense focus\.},
    )
  end
  def mana_cost
    5
  end
  def stamina_cost
    5
  end
end