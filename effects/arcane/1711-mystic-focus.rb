Effect.new("Mystic Focus", 1711) do
  def type
    "offense"
  end
  def availability
    "self-cast"
  end
  def duration
    5
  end
  def start_messages
   Regexp.union(
      %r{A sudden clarity of thought comes over you, and you realize that you now understand arcane mysteries that were previously incomprehensible\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Like a faint wisp of a barely-remembered dream, your brief, enhanced comprehension of arcane mysteries slips away\.},
    )
  end
end