Effect.new("Barkskin", 605) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    1
  end
  def start_messages
   Regexp.union(
      %r{A knobby layer of bark swiftly forms on you\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The knobby layer of bark on you creaks and twists briefly before disintegrating.\.},
    )
  end
  def mana_cost
    5
  end
end