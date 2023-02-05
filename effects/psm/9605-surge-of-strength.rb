Effect.new("Surge of Strength", 9605) do
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
      %r{You focus deep within yourself, searching for untapped sources of strength[\s\w\.]*},
    )
  end
  def end_messages
    Regexp.union(
      %r{You begin to lose touch with your internal sources of strength\.},
    )
  end
  def stamina_cost
    (if Spell[9606].active? then 60 else 30 end)*((Spell[1213].active? and defined?(Spell[1213].stamina_reduction)) ? (1-(Spell[1213].stamina_reduction/100.0)) : 1)
  end
end