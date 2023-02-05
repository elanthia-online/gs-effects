Effect.new("Song of Valor", 1010) do
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
      %r{As you begin to sing of valiant legends, you feel more protected\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You no longer feel a sense of protection\.},
    )
  end
  def mana_cost
    10+((Spells.bard-10)/4)
  end
  def renew_cost
    3+((Spells.bard-10)/10)
  end
end