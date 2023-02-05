Effect.new("Sign of Thought", 9906) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    10 + Stats.level / 10.0
  end
  def start_messages
   Regexp.union(
      %r{Your hypnotic gesture makes your mind receptive to the thoughts of others\.  You feel their distant, comforting presence\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You sense that your attunement to the minds of others has ceased\.},
    )
  end
  def mana_cost
    1
  end
end