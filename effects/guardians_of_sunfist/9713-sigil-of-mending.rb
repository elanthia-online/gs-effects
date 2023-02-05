Effect.new("Sigil of Mending", 9713) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    10
  end
  def start_messages
   Regexp.union(
      %r{Your heart begins to beat faster as your entire body becomes awash with a pleasantly warm sensation\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The pleasantly warm sensation fades as your heart beat begins to return to normal\.},
    )
  end
  def mana_cost
    10
  end
  def stamina_cost
    15
  end
end