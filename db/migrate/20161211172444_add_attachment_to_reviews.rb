class AddAttachmentToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :attachment, :string
  end
end
