class AddSocialPreviewTemplateToTags < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!
  def change
    add_column :tags, :social_preview_template, :string, default: "article"
  end
end
