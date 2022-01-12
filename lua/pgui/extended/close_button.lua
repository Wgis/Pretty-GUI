local PANEL = {}

function PANEL:Init()

    self:SetTall(25)
    self:SetMouseInputEnabled(true)
    self:SetKeyboardInputEnabled(true)
    self:SetCursor("hand")
    self:SetFont("DermaDefault")
    self:SetText("")
    self:SetSkin("PGUI")
end

function PANEL:IsDown()
    return self.Depressed
end

function PANEL:Paint(w, h)
    derma.SkinHook("Paint", "CloseButton", self, w, h)

    return false
end

function PANEL:SetConsoleCommand(strName, strArgs)
    self.DoClick = function(self, val)
        RunConsoleCommand(strName, strArgs)
    end
end

function PANEL:SizeToContents()
    local w, h = self:GetContentSize()
    self:SetSize(w + 8, h + 4)
end

derma.DefineControl("UI.CloseButton", "Кнопка закрытия", PANEL, "DLabel")