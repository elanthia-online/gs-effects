Effect.new("Faith's Clarity", 1612) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.paladin
  end
  def start_messages
   Regexp.union(
      %r{The divine power grants you lucid understanding of the spiritual and you become much more clearly focused\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your sense of clarity fades\.},
    )
  end
  def mana_cost
    12
  end
end