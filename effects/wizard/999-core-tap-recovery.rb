Effect.new("Core Tap Recovery", 999) do
  def availability
    "self-cast"
  end
  def duration
    if which = ['3 Charges','2 Charges','1 Charge'].find { |w| Spell["Core Tap Recovery (#{w})"].timeleft > 0 }; Spell["Core Tap Recovery (#{which})"].timeleft; else; 1; end
  end
  def start_messages
   Regexp.union(
      %r{Tapping into the elemental core of Elanthia, you seize part of its energy\.  Swirling ribbons of fiery red, deep blue, earthen brown, and airy white energy rise up from the (?:floor|ground) and surround you\.  They linger for a brief moment, then explode into a shower of sparks!},
      %r{You are too exhausted to cast Core Tap right now\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{Your exhaustion from tapping into the elemental core fades\.},
    )
  end
end