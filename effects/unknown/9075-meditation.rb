Effect.new("Meditation", 9075) do
  def type
    "timer"
  end
  def availability
    "all"
  end
  def duration
    12
  end
  def start_messages
   Regexp.union(
      %r{You (?:kneel down and |kneel and )?begin to meditate on your lot in life\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your action interrupts your meditation\.},
      %r{Your meditation is interrupted by .+\.},
      %r{The lingering effects of your meditation fade away\.},
    )
  end
end