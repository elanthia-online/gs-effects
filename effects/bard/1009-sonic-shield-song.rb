Effect.new("Sonic Shield Song", 1009) do
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
      %r{You begin singing and focus your voice into a vortex of air centered on your left arm\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your(?: sonic)? (?:buckler|kidney|small|targe|heater|knight's|lantern|medium|parma|target|aegis|kite|large|pageant|round|scutum|greatshield|mantlet|pavis|tower|wall|shield|translucent)?(?:\sshield)? dissipates\.},
    )
  end
  def mana_cost
    9
  end
  def renew_cost
    4
  end
end