Effect.new("Slippery Mind", 9622) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    240
  end
  def start_messages
   Regexp.union(
      %r{You focus inward and prepare to blank your mind at a moment's notice\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{You relax your mind and are no longer prepared to blank it at a moment's notice\.},
    )
  end
  def stamina_cost
    20
  end
end