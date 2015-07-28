module HotelsHelper

	def score_into_stars(score, total=5)
	  ary = []
	  score.times do |s|
	    ary << (image_tag "star.svg")
	  end
	  (total - score).times do |s|
	    ary << (image_tag "star-greyed-out.svg")
	  end
	  ary.join.html_safe
	end
end
