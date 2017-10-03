  
# TODO - write has_teen?
def has_teen?(a,b,c)
    [a,b,c].each{|number| if number >= 13 && number <= 19 then return true end}
    return false
end

# TODO - write not_string

def not_string(str)
    return str[0..3] == "not " ? str : "not #{str}"
end

# TODO - write icy_hot?

def icy_hot?(temp1, temp2)
    return temp1 < 0 && temp2 > 100 || temp2 < 0 && temp1 > 100 ? true : false
end

# TODO - write closer_to

def closer_to(c,a,b)
    if (c - b).abs == (c - a).abs
        return 0
    elsif (c - a).abs < (c - b).abs
        return a
    else
        return b
    end
end

# TODO - write two_as_one?

def two_as_one?(a,b,c)
    return a + b == c || a + c == b || b + c == a ? true : false
end