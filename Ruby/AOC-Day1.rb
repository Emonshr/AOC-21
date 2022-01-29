$counter ||= 0
$arr = $arr_clone = []

File.open(ARGV[0]).each do |number_from_line|
    number_from_line = number_from_line.to_i
    $arr_clone.push(number_from_line)
    $arr.push(number_from_line)    
end


def arr_looper (arr_clone)
    increased = 0
    counter = 0
    number = 0
    decreased_or_equal = 0
    arr_clone.each do |number_from_arr_clone|
        #Always feed the initial value during dry-run or else, the counter+2-TH
        counter == 0 ? number = arr_clone[1]
            : number = arr_clone[counter]
        
            # mark the index where it is found, from the next time we will resume from that
            # specific index, so that infinite loop can be avoided
            if  number_from_arr_clone > number
                increased += 1
                puts number
                puts number_from_arr_clone
                puts "-----time increased---------------"
                puts increased
                puts "----------------------------------"
            elsif number <= number_from_arr_clone
                decreased_or_equal += 1
                puts number
                puts number_from_arr_clone
                puts "-----time decreased or equal------"
                puts decreased_or_equal
                puts "----------------------------------"
                next
            end
            
            counter += 2
        end
        return increased
    end

store_number = $arr[0]
puts "total increased: #{arr_looper($arr_clone)}"
