require 'simplecov'
SimpleCov.start

require 'ennui'

def truthiness_score(iterations, proc)
  truthiness = 0
  iterations.times do
    truthiness += 1 if proc.call
  end

  score = truthiness.to_f / iterations.to_f
  puts "Truthiness score: #{score}"
  score
end

