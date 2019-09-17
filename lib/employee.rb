class Employee < ActiveRecord::Base
  belongs_to :store

  after_create :randomize_pw

  private
    def randomize_pw
      pw = ""
      for i in 1..10
        pw += Array(1..9).sample.to_s
      end
      # p Employee.last.first_name
      self.password = pw
      self.save
    end

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: { in: 40..200 }
  validates :store_id, presence: true
end
