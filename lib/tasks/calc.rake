namespace :calc do
  desc "Calculates averages rating"
  task averages: :environment do

    products = Product.all
    products.each do |product|
      puts "Calculating average rating for #{product.name}..."
      product.update_attribute(:average_rating, product.reviews.average("rating"))
      puts "The updated average rating for #{product.name} is #{product.average_rating}."
      puts
    end

  end
end
