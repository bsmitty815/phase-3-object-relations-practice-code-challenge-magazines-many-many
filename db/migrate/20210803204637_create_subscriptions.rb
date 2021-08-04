class CreateSubscriptions < ActiveRecord::Migration[5.2]



  def change
    create_table :subscriptions do |c|
      c.integer :price
      c.belongs_to :magazine
      c.belongs_to :reader
    end
  end
end




# terminal codes -

# -creating a migration for a table/column/etc
# terminal - rake db:create_migration NAME=create_subscriptions

# -bundle
# bundle will install the dependencies

# -migrating table
# terminal - rake db:migrate

# run shotgun - shotgun must be installed in the gemfile
# terminal - shotgun

# -check migration status
# terminal - rake db:migrate:status

# -migrate the seeds file
# terminal - rake db:seed



