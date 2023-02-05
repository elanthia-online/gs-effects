Effect.new("Bind", 214) do
  def type
    "attack"
  end
  def availability
    "all"
  end
  def duration
    if (history = reget) and (history = history.reverse) and (line = history.index { |l| l =~ /^An unseen force envelops you, restricting all movement\./ }) and history[history.index(line)+2] =~ /^\s*CS: [\+\-][0-9]+ \- TD\: [\+\-][0-9]+ \+ CvA\: [\+\-][0-9]+ \+ d100\: [\+\-][0-9]+ (?:\- \+?[0-9]+ )?==? \+([0-9]+)/; 13 + ($1.to_i - 100)/60.0; else; 0.25; end
  end
  def start_messages
   Regexp.union(
      %r{An unseen force envelops you, restricting all movement\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The restricting force that envelops you dissolves away\.},
    )
  end
  def mana_cost
    14
  end
end