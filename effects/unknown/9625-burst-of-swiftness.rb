Effect.new("Burst of Swiftness", 9625) do
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
      %r{You prepare yourself to move swiftly at a moment's notice.*},
    )
  end
  def end_messages
    Regexp.union(
      %r{You feel less prepared to move as swiftly as before\.},
    )
  end
  def stamina_cost
    (if Spell[9051].active?; 60; else; 30; end)*((Spell[1213].active? and defined?(Spell[1213].stamina_reduction)) ? (1-(Spell[1213].stamina_reduction/100.0)) : 1)
  end
end