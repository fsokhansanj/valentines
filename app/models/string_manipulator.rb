class StringManipulator

	attr_accessor :user_submitted_string, :array_of_words
	
	def initialize(string)
		@user_submitted_string = string
		@fucks_given = 0
		text_to_array
		@array_of_answers = Array.new
		@correct_answers = {
			'danapoint' => 'It was memorable for me too #iphoneshower. What about our first date?',
			'figuerobistrot' => 'Yup! That was the first time I fell for squirrel hands. I love hearing about your history. What's my favorite story from your time in DC.'
		}
	end

	def text_to_array
		self.array_of_words = user_submitted_string.split(/\s+/).map(&:downcase)
	end

	def array_counter
		self.array_of_words.each do |check|
			if @correct_answers.has_key?(check)
				@answer = @correct_answers[check]
			else
				@answer = "Incorrect. Re-enter your last correct answer or click home to start over."
		end
	end
end

	def show_answer
		return @answer
	end
end
