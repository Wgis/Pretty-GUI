for i = 1, 60, 2 do
    surface.CreateFont('Roboto.' .. i, {
        font = 'Roboto',
        size = Scale(i),
        weight = Scale(500),
        extended = true
    })
end
/*for i = 4, 60, 2 do
    surface.CreateFont("Roboto" .. i, {
        font = "Roboto",
        size = i,
        weight = 350,
        extended = true,
        blursize = 0.7,
        antialias = true
    })
end*/