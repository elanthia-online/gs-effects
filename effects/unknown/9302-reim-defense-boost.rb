Effect.new("REIM Defense Boost", 9302) do
  def type
    "bonus"
  end
  def availability
    "all"
  end
  def duration
    1
  end
  def start_messages
   Regexp.union(
      %r{Tendrils of ethereal energy encase your body, bolstering your defense\.},
    )
  end
  def end_messages
    Regexp.union(
      %r{The tendrils of ethereal energy encasing your body fade away\.},
    )
  end
end