Effect.new("Divine Word Cooldown", 9055) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    if Skills.slreligion >= 40; 480; elsif Skills.slreligion >= 20; 720; else 1440; end
  end
  def start_messages
   Regexp.union(
      %r{Your surroundings grow dim\.\.\.you lapse into a state of awareness only, unable to do anything\.\.\.},
    )
  end
end