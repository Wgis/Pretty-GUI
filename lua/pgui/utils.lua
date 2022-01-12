function Scale(arg)
    return arg and math.floor(arg * (ScrH() / 1080)) or ScrH() / 1080
end