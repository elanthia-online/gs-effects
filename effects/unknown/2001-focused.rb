Effect.new("Focused", 2001) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    2
  end
  def start_messages
   Regexp.union(
      %r{You focus intently on your picking and disarm skill.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You no longer appear focused.},
    )
  end
end