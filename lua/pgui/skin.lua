local SKIN = {
    PrintName = 'Pretty GUI',
    Author = 'Wgis'
}

function SKIN:PaintFrame(self, w, h)
    local clr_bg = Color(0, 0, 0, 200)
    draw.RoundedBox(6, 0, 0, w, h, clr_bg)
    draw.SimpleText(self:GetTitle(), "Roboto.20", 5, 4, Colors.White, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
    surface.SetDrawColor(255, 255, 255, 100)
    local l, t, r, b = self:GetDockPadding()
    surface.DrawLine(0, t - 6, w, t - 6)
end

function SKIN:PaintCloseButton(self, w, h)
    local clr_bg = Color(255, 0, 0, 100)
    local clr_sym = Color(255, 255, 255, 100)
    if self:GetDisabled() then end

    if self:IsHovered() then
        clr_bg.a = 255
        clr_sym.a = 255
    end

    draw.RoundedBox(6, 0, 0, w, h, clr_bg)
    draw.SimpleText("❌", "Roboto.30", w / 2, h / 2 - Scale(4), clr_sym, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end

derma.DefineSkin("PGUI", "PGUI скин", SKIN)