Effect.new("Song of Peace", 1011) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    Spellsong.timeleft
  end
  def start_messages
   Regexp.union(
      %r{The surroundings respond to the soothing melody of your song, becoming calm and still\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The sense of peace and security passes away from the area\.|You stop singing Song of Peace\.},
    )
  end
  def mana_cost
    11
  end
  def renew_cost
    4
  end
end