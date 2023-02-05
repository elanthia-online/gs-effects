Effect.new("Shadow Mastery Cooldown", 9604) do
  def availability
    "self-cast"
  end
  def duration
    2
  end
  def start_messages
   Regexp.union(
      %r{Your body relaxes as your thoughts stray from the shadows\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The residual strain on your mind of such intense focus on the shadows fades away\.},
    )
  end
end