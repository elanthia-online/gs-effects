Effect.new("Presence", 402) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    5
  end
  def start_messages
   Regexp.union(
      %r{You continue to feel much more aware of your surroundings\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your senses are no longer as sharp\.},
    )
  end
  def mana_cost
    2
  end
end