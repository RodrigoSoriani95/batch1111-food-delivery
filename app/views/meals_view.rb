class MealsView
  def display(meals)
    meals.each do |meal|
      puts "ID: #{meal.id} - #{meal.name} ($#{meal.price})"
    end
  end

  def ask_user_for(info)
    puts "What's the meal's #{info}?"
    gets.chomp
  end
end
