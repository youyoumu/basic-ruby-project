def bubble_sort(numbers)
    puts "input: #{numbers}"
    sorted = false
    while sorted == false 
        sorting_count = 0
        numbers = numbers.each_with_index do |num, i|
            if i+1 < numbers.length
                if num > numbers[i+1]
                    sorting_count += 1
                    temp = num
                    numbers[i] = numbers[i+1]
                    numbers[i+1] = temp
                end
            end
        end
        sorted = true if sorting_count == 0
    end
    puts "output: #{numbers}"
    numbers
end

bubble_sort([100,98,87,65,54,43,31,12,23,34,45,56,67,89,1,3,0,7,6,4,3,34,7,14,75])