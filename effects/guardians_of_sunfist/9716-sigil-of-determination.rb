Effect.new("Sigil of Determination", 9716) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    3
  end
  def start_messages
   Regexp.union(
      %r{You begin to focus sharply upon the task at hand, pushing all thoughts and sensations of pain far from your mind\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your sharp concentration upon your current task falters as the pain of your injuries rushes back into your mind\.},
    )
  end
  def stamina_cost
    30
  end
end