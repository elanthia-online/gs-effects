Effect.new("Silence", 210) do
  def type
    "attack"
  end
  def incant
    "no"
  end
  def availability
    "all"
  end
  def duration
    if (history = reget) and (history = history.reverse) and (line = history.index { |l| l =~ /^A pall of silence settles over you\./ }) and history[history.index(line)+2] =~ /^\s*CS: [\+\-][0-9]+ \- TD\: [\+\-][0-9]+ \+ CvA\: [\+\-][0-9]+ \+ d100\: [\+\-][0-9]+ (?:\- \+?[0-9]+ )?==? \+([0-9]+)/; 0.5 + ($1.to_i - 100)/60.0; else; 0.25; end
  end
  def mana_cost
    10
  end
end