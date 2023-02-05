Effect.new("POPed muscles", 9699) do
  def availability
    "self-cast"
  end
  def duration
    10.5
  end
  def start_messages
   Regexp.union(
      %r{You hear a loud \*POP\* come from your muscles!},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your muscles (?:feel much less strained than|no longer feel as weak as) they did a moment ago\.|The soreness of your overexerted muscles evaporates, leaving you feeling fresh and rested\.},
    )
  end
end