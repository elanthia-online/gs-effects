Effect.new("Well of Life Cooldown", 9007) do
  def type
    "timer"
  end
  def availability
    "all"
  end
  def duration
    if defined?(XMLData.last_spirit); ([XMLData.last_spirit-XMLData.spirit,1].max*2) - (Skills.slblessings/60.0); else; 6; end
  end
  def start_messages
   Regexp.union(
      %r{You are left feeling weakened and feeble\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The feeling of weakness fades from you\. You feel ripe to transfer spirit once again\.},
    )
  end
end