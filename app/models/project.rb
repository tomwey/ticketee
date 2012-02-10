class Project < ActiveRecord::Base
  has_many :tickets, :dependent => :destroy #delete_all 性能更高但是没有回调
  validates :name, :presence => true
end
