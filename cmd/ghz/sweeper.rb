class Sweeper
  def self.sweep
    ExpiredUsers.for_users(User.all).each do |user|
      UserMailer.billing_problem(user)
    end
  end
end
