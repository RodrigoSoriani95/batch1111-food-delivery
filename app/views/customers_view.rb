class CustomersView
  def display(customers)
    customers.each do |customer|
      puts "ID: #{customer.id} - #{customer.name} (#{customer.address})"
    end
  end

  def ask_user_for(info)
    puts "What's the customer's #{info}?"
    gets.chomp
  end
end
