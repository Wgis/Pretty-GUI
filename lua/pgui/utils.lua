function Scale(arg)
    return arg and math.floor(arg * (ScrH() / 1080)) or ScrH() / 1080
end

local blur = Material("pp/blurscreen")

function draw.BlurPanel(panel, layers, density, alpha)
    local x, y = panel:LocalToScreen(0, 0)
    surface.SetDrawColor(255, 255, 255, alpha)
    surface.SetMaterial(blur)

    for i = 1, 5 do
        blur:SetFloat("$blur", (i / 4) * 4)
        blur:Recompute()
        render.UpdateScreenEffectTexture()
        surface.DrawTexturedRect(-x, -y, ScrW(), ScrH())
    end
end