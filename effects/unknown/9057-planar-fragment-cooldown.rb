Effect.new("Planar Fragment Cooldown", 9057) do
  def type
    "timer"
  end
  def availability
    "all"
  end
  def duration
    5760
  end
  def start_messages
   Regexp.union(
      %r{Shifting your gaze, you use the fragment's influence to pierce the veil between the planes of existence\.  An other-worldly landscape fills your vision, and you sense an object of potential interest within arms reach\.  Without waiting to actually see it, you reach out and yank .+ into your current temporal sphere\.},
    )
  end
end