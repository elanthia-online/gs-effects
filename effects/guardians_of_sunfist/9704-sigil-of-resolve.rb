Effect.new("Sigil of Resolve", 9704) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    1.5
  end
  def start_messages
   Regexp.union(
      %r{You experience a momentary flash of insight on how to best overcome nature's obstacles\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel your added insight slip away\.},
    )
  end
  def stamina_cost
    5
  end
end