Effect.new("Shadow Mastery", 9603) do
  def type
    "utility"
  end
  def availability
    "self-cast"
  end
  def duration
    3.13
  end
  def start_messages
   Regexp.union(
      %r{You focus your mind on the shadows and gird your body for stealth\.(?:  You find maintaining this mindset to be exceptionally tiring\.)?},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your body relaxes as your thoughts stray from the shadows\.},
    )
  end
  def stamina_cost
    if Spell[9604].active? then 60 else 20 end
  end
end