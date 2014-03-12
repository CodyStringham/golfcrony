class Join < ActionMailer::Base
  default from: "from@example.com"

	def join_group(group, user)
		@user = user
		@group = Group.find(group)
		mail(to: @group.email, subject: "Interest in your Group" )
	end

end
