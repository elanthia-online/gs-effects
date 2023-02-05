Effect.new("Ki Focus", 9626) do
  def type
    "offense"
  end
  def availability
    "self-cast"
  end
  def duration
    1.0
  end
  def start_messages
   Regexp.union(
      %r{You summon your inner ki and focus it to enhance your next attack\.},
      %r{You have already summoned your inner ki and are ready for a devastating attack\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You lose the intense focus of your ki energy\.},
    )
  end
  def stamina_cost
    20+5+5
  end
end