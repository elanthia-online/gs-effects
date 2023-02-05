Effect.new("Sigil of Contact", 9703) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    17
  end
  def start_messages
   Regexp.union(
      %r{You concentrate on your sigil\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You sense that your attunement to the minds of others has ceased\.},
    )
  end
  def mana_cost
    1
  end
end