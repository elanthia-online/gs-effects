Effect.new("Song of Power", 1018) do
  def type
    "bonus"
  end
  def availability
    "self-cast"
  end
  def duration
    Spellsong.timeleft
  end
  def start_messages
   Regexp.union(
      %r{As you sing, you feel the mana around you begin to swirl and move with a subtle grace\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The mana around you slowly returns to its natural state\.},
    )
  end
  def mana_cost
    18
  end
  def renew_cost
    15
  end
end