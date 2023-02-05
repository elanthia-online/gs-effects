Effect.new("Sigil of Concentration", 9714) do
  def type
    "bonus"
  end
  def availability
    "self-cast"
  end
  def duration
    10
  end
  def start_messages
   Regexp.union(
      %r{As you concentrate on your sigil, you feel more attuned to the flows of mana\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your heightened attunement to the flows of mana begins to fade\.},
    )
  end
  def stamina_cost
    30
  end
end