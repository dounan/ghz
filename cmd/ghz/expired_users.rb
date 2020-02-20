class ExpiredUsers
  def for_users(users)
    users.select do |user|
      user.active? && user.paid_at < 1.month.ago
    end
  end
end
