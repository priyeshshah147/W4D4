def remove_dup(arr)
    hash = Hash.new(0)
    arr.each do |ele|
        hash[ele] = true
    end
    hash.keys
end