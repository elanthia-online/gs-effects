Effect.new("Sigil of Bandages", 9706) do
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
      %r{Your awareness of your own movements heightens as you begin to act with an unusual fluidity\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your actions become less fluid as your close concentration on your movements begins to falter\.},
    )
  end
  def stamina_cost
    10
  end
end