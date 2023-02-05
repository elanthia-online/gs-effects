Effect.new("Mass Blur", 911) do
  def type
    "defense"
  end
  def availability
    "group"
  end
  def duration
    20 + Spells.wizard
  end
  def start_messages
   Regexp.union(
      %r{Your form(?:, as well as your group,)? blurs\.},
      %r{If you were visible, your form would have blurred\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You become solid again\.},
    )
  end
  def mana_cost
    11
  end
end