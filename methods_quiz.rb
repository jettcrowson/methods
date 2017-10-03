  
# TODO - write has_teen?
def has_teen?(a,b,c)
    [a,b,c].each{|number| if number >= 13 && number <= 19 then return true end}
    return false
end

# TODO - write not_string

def not_string(str)
    if str[0..2] == "not"
        return str
    else
        return "not #{str}"
    end
end

# TODO - write icy_hot?

# TODO - write closer_to

# TODO - write two_as_one?