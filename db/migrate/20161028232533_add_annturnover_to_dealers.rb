class AddAnnturnoverToDealers < ActiveRecord::Migration
  def change
    add_column :dealers, :annturnover, :string
    add_column :dealers, :bioturnover, :string
    add_column :dealers, :custbase, :string
    add_column :dealers, :dealerreqform, :string
    add_column :dealers, :dealerphoto, :string
    add_column :dealers, :introcall, :date
    add_column :dealers, :call, :boolean
  end
end
