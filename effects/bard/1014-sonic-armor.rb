Effect.new("Sonic Armor", 1014) do
  def type
    "defense"
  end
  def availability
    "self-cast"
  end
  def duration
    Spellsong.timeleft
  end
  def start_messages
   Regexp.union(
      %r{You begin singing and focus your voice into a vortex of air centered around your body\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your sonic barrier dissipates\.},
    )
  end
  def mana_cost
    14
  end
  def renew_cost
    5
  end
end