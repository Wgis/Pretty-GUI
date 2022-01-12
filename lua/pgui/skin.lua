local SKIN = {
    PrintName = 'Pretty GUI',
    Author = 'Wgis'
}

function SKIN:PaintFrame(self, w, h)
    if self:GetBlur() ~= false then
        draw.BlurPanel(self, 16, 16, 255)
    end

    local clr_bg = Color(0, 0, 0, 200)
    local l, t, r, b = self:GetDockPadding()
    draw.RoundedBox(6, 0, 0, w, t - 6, clr_bg)
    draw.RoundedBox(6, 0, t - 5, w, h - t + b, clr_bg)
    draw.SimpleText(self:GetTitle(), "Roboto.22", 5, (2 + 25 + 2) / 2, Colors.White, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
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

function SKIN:PaintPanel(self, w, h)
    draw.RoundedBox(6, 0, 0, w, h, Colors.White)
end

function SKIN:PaintButton(self, w, h)
    local clr_bg = Color(255, 255, 255, 100)
    local clr_sym = Color(0, 0, 0, 200)
    if not self.m_bBackground then return end

    if self.Depressed or self:IsSelected() or self:GetToggle() then
        clr_bg = Color(0, 140, 255)
    end

    if self.Hovered then
        clr_bg.a, clr_sym.a = 255, 255
    end

    if self:GetDisabled() then
        clr_bg = Color(255, 103, 103, 100)
    end

    draw.RoundedBox(6, 0, 0, w, h, clr_bg)
    draw.SimpleText(self:GetText(), "Roboto." .. math.Round(h / 1.5), w / 2, h / 2, clr_sym, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end

derma.DefineSkin("PGUI", "PGUI скин", SKIN)