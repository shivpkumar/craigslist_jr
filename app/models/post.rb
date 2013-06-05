class Post < ActiveRecord::Base
  before_create do
    # seed secret_key
    # set created_at and updated_at to Time.now
  end

  before_save do
    # set updated_at to Time.now
  end

  # Remember to create a migration!
end
