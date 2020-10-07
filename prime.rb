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








# else num.map do |n| i % n != 0 end # map is iterating over [num] and returning true if i % n is divisible (NOT PRIME) and false if not divisible (PRIME). 
#     if num.none?  #.none? asks if any element in [num] is true. if no true elements the expression is true. if one false, the expression is false. 
#         #in .none? true means NOT PRIME and false means PRIME but I need the opposite to output. 