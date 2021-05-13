def remove_dup(arr)
    hash = Hash.new(0)
    arr.each do |ele|
        hash[ele] = true
    end
    hash.keys
end

def two_sum(arr)
    new_arr = []
    arr.length.times do |i|
        arr.length.times do |j|
            new_arr << [i,j] if j > i && arr[i] + arr[j] == 0
        end
    end
    new_arr
end

def my_transpose(arr)
    new_arr = Array.new(arr.length) {Array.new (arr[0].length)}
    arr.length.times do |i|
        arr.length.times do |j|
            new_arr[j][i] = arr[i][j]
        end
    end
    new_arr 
end
# stock_picker([17,3,6,9,15,8,6,1,10])

def stock_picker(arr)
    hash = Hash.new{ |h,k| h[k] = []}
    (0...arr.length).each do |i|
        (i...arr.length).each do |j|
            hash[arr[j]-arr[i]] += [i,j]
        end
    end
    hash.sort[-1][1]
end