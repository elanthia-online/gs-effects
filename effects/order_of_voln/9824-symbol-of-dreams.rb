Effect.new("Symbol of Dreams", 9824) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    240
  end
  def start_messages
   Regexp.union(
      %r{You feel suddenly tired and lie down for a nap\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your sleep is interrupted\.|You wake up from your sleep\.},
    )
  end
end