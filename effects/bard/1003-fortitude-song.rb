Effect.new("Fortitude Song", 1003) do
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
      %r{You begin to sing of heroic deeds and bolster your confidence\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You no longer feel a sense of confidence\.},
    )
  end
  def mana_cost
    3
  end
  def renew_cost
    1
  end
end