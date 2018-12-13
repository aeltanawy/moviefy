namespace :theaters do
  desc "pull Theaters data into theaters database"
  task seed_theaters: :environment do

  Theater.destroy_all

  CSV.foreach(Rails.root.join("lib", "assets", "theaters.csv"), :headers => true) do |row|
    # Confirm row inspection
    puts row.inspect

    # Create new model instances with each row
    Theater.create!(
      state: row['state'].to_s,
      city: row['city'].to_s,
      latitude: row['latitude'].to_f,
      longitude: row['longitude'].to_f,
      theater_name: row['theater_name'].to_s,
      zipcode: row['zipcode'].to_s,
      )

      # Confirm successful completion of the task
      puts "There are now #{Theater.count} row in movies database."
    end
  end
end
