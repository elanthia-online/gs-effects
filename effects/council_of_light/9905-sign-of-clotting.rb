Effect.new("Sign of Clotting", 9905) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    1+(Stats.level/6.0)
  end
  def mana_cost
    1
  end
end