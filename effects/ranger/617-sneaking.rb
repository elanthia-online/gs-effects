Effect.new("Sneaking", 617) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.ranger
  end
  def start_messages
   Regexp.union(
      %r{You begin to move with cat-like grace\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You are no longer moving silently\.},
    )
  end
  def mana_cost
    17
  end
end