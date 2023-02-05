Effect.new("Sonic Weapon Song", 1012) do
  def type
    "attack"
  end
  def availability
    "self-cast"
  end
  def duration
    Spellsong.timeleft
  end
  def start_messages
   Regexp.union(
      %r{You begin singing and focus your voice into a (?:vortex of air shaped like a )?sonic (?:[\w\-]+\s?){1,3}(?:,| shaped vortex of air) centered on your (?:right|left) hand\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your (?:sonic|twohanded|main) (?!barrier|buckler|kidney|small|targe|heater|knight's|lantern|medium|parma|target|aegis|kite|large|pageant|round|scutum|greatshield|mantlet|pavis|tower|wall|shield|barrier)[\w\s\-]+ dissipates\.|Your sonic weapon is not in your hands\.(?:  You are unable to renew the song\.)?},
    )
  end
  def mana_cost
    12
  end
  def renew_cost
    4
  end
end