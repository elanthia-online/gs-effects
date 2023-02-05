Effect.new("Council Task", 9011) do
  def type
    "timer"
  end
  def availability
    "self-cast"
  end
  def duration
    if defined?(line) and line.slice(/[0-9]+/).to_f > 0; line.slice(/[0-9]+/).to_f; else; 30; end
  end
  def start_messages
   Regexp.union(
      %r{The High Taskmaster looks at you, consults her notes, and then announces in a loud voice: "[A-Z][a-z]+, I'm rather busy right now\.  I know you have completed the requirements for advancement in rank, but I cannot take the time to instruct you\.  Let me check my schedule\.\.\. Ah, yes, I can squeeze you in in [0-9]+ minutes or so\.  Come back then and I'll take care of you\."},
    )
  end
end