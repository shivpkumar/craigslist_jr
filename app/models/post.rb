class Post < ActiveRecord::Base
  before_create :create_secret_key

  

  protected

  def create_secret_key
    rand_key = (0...8).map{(97+rand(26)).chr}.join
    self.secret_key = rand_key
  end
end
