Effect.new("Assume Aspect", 650) do
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
      %r{Gold-traced pale green ribbons of energy swirl about and coalesce upon you, reinforcing the intense natural prowess that races through every fiber of your being\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The green and gold energy fades from around you, bringing your awareness of nature to its original state\.},
    )
  end
  def mana_cost
    50
  end
end