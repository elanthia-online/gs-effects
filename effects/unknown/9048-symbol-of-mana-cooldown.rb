Effect.new("Symbol of Mana Cooldown", 9048) do
  def type
    "timer"
  end
  def availability
    "all"
  end
  def duration
    5
  end
  def start_messages
   Regexp.union(
      %r{You call upon a special blessing from Koar\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel Koar's blessing return to you\.},
    )
  end
end