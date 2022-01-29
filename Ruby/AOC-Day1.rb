$arr_from_input = []

File.open(ARGV[0]).each do |number_from_input|
    number_from_input = number_from_input.to_i
    # puts number_from_input
    $arr_from_input.push(number_from_input)
end



def arr_looper (arr_from_input)
    increased = 0
    counter = 1
    bottom_number = 0
    decreased_or_equal = 0
    arr_from_input.each do |top_number|
        #Always feed the initial value during dry-run or else, the counter+2-TH
    bottom_number = arr_from_input[counter]
        

            if  bottom_number > top_number
                increased += 1
                puts top_number
                puts bottom_number
                puts "-----time increased---------------"
                puts increased
                puts "----------------------------------"
            elsif bottom_number <= top_number
                decreased_or_equal += 1
                puts top_number
                puts bottom_number
                puts "-----time decreased or equal------"
                puts decreased_or_equal
                puts "----------------------------------"
                # next
            end
            
        counter += 1
        end
        return increased
    end

puts "total increased: #{arr_looper($arr_from_input)}"
