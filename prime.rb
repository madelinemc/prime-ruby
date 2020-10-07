require'pry'
def prime?(i) 
    num = []
    num = (2..(i - 1)).to_a
    if i == 2
        true
    elsif i.even? || i == 1
        false
    elsif i < 0
        puts "Be sure to account for negative numbers!"
        return false
    else  
        num = num.collect { |number|
        (i % number) == 0 
    }
        num.all? { |string| string == false }
        end
end


