Effect.new("Symbol of Transcendence Cooldown", 9049) do
  def type
    "timer"
  end
  def availability
    "all"
  end
  def duration
    if $infomon_transcendance_emergency; 10; else; 3; end
  end
  def start_messages
   Regexp.union(
      %r{You feel yourself being pulled back fully into the corporeal realm\.},
    )
  end
end