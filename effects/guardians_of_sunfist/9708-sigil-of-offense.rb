Effect.new("Sigil of Offense", 9708) do
  def type
    "offense"
  end
  def availability
    "self-cast"
  end
  def duration
    5
  end
  def start_messages
   Regexp.union(
      %r{A faint blue glow surrounds your hands, subtly guiding your movements\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The faint blue glow fades from around your hands\.},
    )
  end
  def mana_cost
    5
  end
  def stamina_cost
    5
  end
end