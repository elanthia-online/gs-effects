Effect.new("Spirit Servant", 218) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    20 + Spells.majorspiritual
  end
  def start_messages
   Regexp.union(
      %r{A bright pulse of soft energy moves away from your hands and beckons a spirit to your aid\.\.\.},
      %r{You infuse your .*?spirit with the mana necessary to maintain its corporeal form\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{(?:An?|The).*? spirit fades into ethereal form and wafts away\.},
    )
  end
  def mana_cost
    18
  end
end