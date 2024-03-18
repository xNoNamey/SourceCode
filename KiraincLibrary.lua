
repeat wait() until game:IsLoaded()
xwd = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
Gamename = xwd.Name
local games = {
   [game.PlaceId] = {
      Title = "Blox Fruits",
      Icons = "rbxassetid://7607745682",
      Welcome = function()
            return tostring(
              " "
                   ..

                        Gamename.. "!" .. " \TAKAB HUB]"  .."\n Loadded..."
            )
      end

local UILib = {}

if game.CoreGui:FindFirstChild("Sawadd") then
    game.CoreGui:FindFirstChild("Sawadd"):Destroy()
end

local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
function RippleEffect(object)
    spawn(
        function()
            local ImageLabel = Instance.new("ImageLabel")
            ImageLabel.Name = "ImageLabel"
            ImageLabel.Parent = object
            ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel.BackgroundTransparency = 1.000
            ImageLabel.ZIndex = 18
            ImageLabel.Image = "rbxassetid://2708891598"
            ImageLabel.ImageTransparency = 0.800
            ImageLabel.ScaleType = Enum.ScaleType.Slice
            ImageLabel.SliceCenter = Rect.new(204, 183, 220, 284)
            ImageLabel.SliceScale = 0.050
            ImageLabel.Size = UDim2.new(0, 0, 1, 0)

            ImageLabel.Position =
                UDim2.new(
                (Mouse.X - ImageLabel.AbsolutePosition.X) / object.AbsoluteSize.X,
                0,
                (Mouse.Y - ImageLabel.AbsolutePosition.Y) / object.AbsoluteSize.Y,
                0
            )
            TweenService:Create(
                ImageLabel,
                TweenInfo.new(.5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out),
                {Position = UDim2.new(0, 0, 0, 0), Size = UDim2.new(1, 0, 1, 0)}
            ):Play()

            wait(.5)
            TweenService:Create(
                ImageLabel,
                TweenInfo.new(.5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out),
                {ImageTransparency = 1}
            ):Play()

            wait(1)
            ImageLabel:Destroy()
        end
    )
end
function dragify(Frame)
    dragToggle = nil
    dragSpeed = .25 -- You can edit this.
    dragInput = nil
    dragStart = nil
    dragPos = nil

    function updateInput(input)
        Delta = input.Position - dragStart
        Position =
            UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
    end

    Frame.InputBegan:Connect(
        function(input)
            if
                (input.UserInputType == Enum.UserInputType.MouseButton1 or
                    input.UserInputType == Enum.UserInputType.Touch)
             then
                dragToggle = true
                dragStart = input.Position
                startPos = Frame.Position
                input.Changed:Connect(
                    function()
                        if (input.UserInputState == Enum.UserInputState.End) then
                            dragToggle = false
                        end
                    end
                )
            end
        end
    )

    Frame.InputChanged:Connect(
        function(input)
            if
                (input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch)
             then
                dragInput = input
            end
        end
    )

    game:GetService("UserInputService").InputChanged:Connect(
        function(input)
            if (input == dragInput and dragToggle) then
                updateInput(input)
            end
        end
    )
end

function UILib:CreateMain(txt, logo)
    local Sawadd = Instance.new("ScreenGui")
    local BackgroundFrame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local OntopPage = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local FIRSTNAME = Instance.new("TextLabel")
    local NAME = Instance.new("TextLabel")
    local NAME2 = Instance.new("TextLabel")
    local SmallLogo = Instance.new("ImageLabel")
    local TabBar = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local BigLogo = Instance.new("ImageLabel")
    local TabList = Instance.new("ScrollingFrame")
    local LayoutBar = Instance.new("UIListLayout")
    local PaggingBar = Instance.new("UIPadding")

    Sawadd.Name = "Sawadd"
    Sawadd.Parent = game.CoreGui
    Sawadd.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	UserInputService.InputBegan:Connect(
  function(io, p)
     if io.KeyCode == Enum.KeyCode.RightControl then
       Sawadd.Enabled = not Sawadd.Enabled
     end
  end
 )

    BackgroundFrame.Name = "BackgroundFrame"
    BackgroundFrame.Parent = Sawadd
    BackgroundFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    BackgroundFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    BackgroundFrame.ClipsDescendants = true
    BackgroundFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    BackgroundFrame.Size = UDim2.new(0, 525, 0, 453)
    dragify(BackgroundFrame)

    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Name = ""
    UICorner.Parent = BackgroundFrame

    OntopPage.Name = "OntopPage"
    OntopPage.Parent = BackgroundFrame
    OntopPage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    OntopPage.BorderSizePixel = 0
    OntopPage.Position = UDim2.new(0.00761904754, 0, 0, 0)
    OntopPage.Size = UDim2.new(0, 525, 0, 27)

    UICorner_2.CornerRadius = UDim.new(0, 4)
    UICorner_2.Name = ""
    UICorner_2.Parent = OntopPage

    FIRSTNAME.Name = "FIRSTNAME"
    FIRSTNAME.Parent = OntopPage
    FIRSTNAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FIRSTNAME.BackgroundTransparency = 1.000
    FIRSTNAME.Position = UDim2.new(0.0533333421, 0, 0, 0)
    FIRSTNAME.Size = UDim2.new(0, 137, 0, 27)
    FIRSTNAME.Font = Enum.Font.GothamSemibold
    FIRSTNAME.Text = txt
    FIRSTNAME.TextColor3 = Color3.fromRGB(255, 255, 255)
    FIRSTNAME.TextSize = 17.000
    FIRSTNAME.TextXAlignment = Enum.TextXAlignment.Left

    NAME.Name = "NAME"
    NAME.Parent = OntopPage
    NAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NAME.BackgroundTransparency = 1.000
    NAME.Position = UDim2.new(0.171428561, 0, 0, 0)
    NAME.Size = UDim2.new(0, 137, 0, 27)
    NAME.Font = Enum.Font.GothamSemibold
    NAME.Text = "HUB"
    NAME.TextColor3 = Color3.fromRGB(155, 142, 0)
    NAME.TextSize = 17.000
    NAME.TextXAlignment = Enum.TextXAlignment.Left
    
    NAME2.Name = "NAME2"
    NAME2.Parent = OntopPage
    NAME2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NAME2.BackgroundTransparency = 1.000
    NAME2.Position = UDim2.new(0.171428561, 0, 0, 0)
    NAME2.Size = UDim2.new(0, 137, 0, 27)
    NAME2.Font = Enum.Font.GothamSemibold
    NAME2.Text = "TA"
    NAME2.TextColor3 = Color3.fromRGB(155, 142, 0)
    NAME2.TextSize = 17.000
    NAME2.TextXAlignment = Enum.TextXAlignment.Left
    

    SmallLogo.Name = "SmallLogo"
    SmallLogo.Parent = OntopPage
    SmallLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SmallLogo.BackgroundTransparency = 1.000
    SmallLogo.Size = UDim2.new(0, 27, 0, 27)
    SmallLogo.Image = "rbxassetid://" .. tostring(logo)

    TabBar.Name = "TabBar"
    TabBar.Parent = BackgroundFrame
    TabBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    TabBar.Position = UDim2.new(0, 0, 0.059602648, 0)
    TabBar.Size = UDim2.new(0, 165, 0, 426)

    UICorner_3.CornerRadius = UDim.new(0, 4)
    UICorner_3.Name = ""
    UICorner_3.Parent = TabBar

    BigLogo.Name = "BigLogo"
    BigLogo.Parent = TabBar
    BigLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BigLogo.BackgroundTransparency = 1.000
    BigLogo.Position = UDim2.new(0.183452412, 0, 0, 0)
    BigLogo.Size = UDim2.new(0, 100, 0, 100)
    BigLogo.Image = "rbxassetid://" .. tostring(logo)

    TabList.Name = "TabList"
    TabList.Parent = TabBar
    TabList.Active = true
    TabList.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    TabList.BackgroundTransparency = 1.000
    TabList.BorderColor3 = Color3.fromRGB(30, 30, 30)
    TabList.Position = UDim2.new(0, 0, 0.218309864, 0)
    TabList.Size = UDim2.new(0, 160, 0, 333)
    TabList.CanvasSize = UDim2.new(0, 0, 0, 100)
    TabList.ScrollBarThickness = 4
    TabList.AutomaticCanvasSize = Enum.AutomaticSize.Y

    LayoutBar.Name = "LayoutBar"
    LayoutBar.Parent = TabList
    LayoutBar.SortOrder = Enum.SortOrder.LayoutOrder
    LayoutBar.Padding = UDim.new(0, 4)

    PaggingBar.Name = "PaggingBar"
    PaggingBar.Parent = TabList
    PaggingBar.PaddingTop = UDim.new(0, 15)

    local Folder_Page = Instance.new("Folder")

    Folder_Page.Name = "Folder_Page"
    Folder_Page.Parent = BackgroundFrame

    local TabL = {}
    function TabL:CreateTab(txt, logo, loadede)
        loadede = loadede or false
        local TabFrame = Instance.new("Frame")
        local Line1 = Instance.new("Frame")
        local UICorner_4 = Instance.new("UICorner")
        local Transpane = Instance.new("Frame")
        local UICorner_5 = Instance.new("UICorner")
        local TabLogo = Instance.new("ImageLabel")
        local TextLabel = Instance.new("TextLabel")
        local TabClick = Instance.new("TextButton")
        local PageMain = Instance.new("Frame")
        local PageReal = Instance.new("Frame")
        local ScrollingFrame_ = Instance.new("ScrollingFrame")
        local PaggingBar_Scol = Instance.new("UIPadding")
        local UIListLayout = Instance.new("UIListLayout")

        TabFrame.Name = "TabFrame"
        TabFrame.Parent = TabList
        TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabFrame.BackgroundTransparency = 1.000
        TabFrame.Size = UDim2.new(0, 131, 0, 42)

        Line1.Name = "Line1"
        Line1.Parent = TabFrame
        Line1.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
        Line1.Size = UDim2.new(0, 4, 0, 42)
        Line1.BackgroundTransparency = 1

        UICorner_4.Parent = Line1

        Transpane.Name = "Transpane"
        Transpane.Parent = TabFrame
        Transpane.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Transpane.BackgroundTransparency = 1
        Transpane.Position = UDim2.new(0.0305343512, 0, 0, 0)
        Transpane.Size = UDim2.new(0, 138, 0, 42)

        UICorner_5.CornerRadius = UDim.new(0, 4)
        UICorner_5.Parent = Transpane

        TabLogo.Name = "TabLogo"
        TabLogo.Parent = TabFrame
        TabLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabLogo.BackgroundTransparency = 1.000
        TabLogo.Position = UDim2.new(0, 13, 0, 7)
        TabLogo.Size = UDim2.new(0, 25, 0, 25)
        TabLogo.ImageColor3 = Color3.fromRGB(155, 142, 0)
        TabLogo.Image = "rbxassetid://" .. tostring(logo)
        TabLogo.ImageTransparency = 0.2

        TextLabel.Parent = TabFrame
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.Position = UDim2.new(0.412213743, 0, 0.142857149, 0)
        TextLabel.Size = UDim2.new(0, 104, 0, 29)
        TextLabel.Font = Enum.Font.SourceSansBold
        TextLabel.Text = txt
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 18.000
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left
        TextLabel.TextTransparency = 0.2

        TabClick.Name = "TabClick"
        TabClick.Parent = TabFrame
        TabClick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabClick.BackgroundTransparency = 1.000
        TabClick.Size = UDim2.new(0, 158, 0, 42)
        TabClick.Font = Enum.Font.SourceSans
        TabClick.Text = ""
        TabClick.TextColor3 = Color3.fromRGB(0, 0, 0)
        TabClick.TextSize = 14.000

        PageMain.Name = "PageMain"
        PageMain.Parent = Folder_Page
        PageMain.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        PageMain.BorderSizePixel = 0
        PageMain.ClipsDescendants = true
        PageMain.Position = UDim2.new(0.304761916, 0, 0.059602648, 0)
        PageMain.Size = UDim2.new(0, 365, 0, 426)
        PageMain.Visible = false

        PageReal.Name = "PageReal"
        PageReal.Parent = PageMain
        PageReal.BorderSizePixel = 0
        PageReal.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        PageReal.Position = UDim2.new(0.00999999978, 0, 0.00899999961, 0)
        PageReal.Size = UDim2.new(0, 365, 0, 426)

        ScrollingFrame_.Name = "ScrollingFrame_"
        ScrollingFrame_.Parent = PageReal
        ScrollingFrame_.Active = true
        ScrollingFrame_.AnchorPoint = Vector2.new(0.5, 0.5)
        ScrollingFrame_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        ScrollingFrame_.BackgroundTransparency = 1.000
        ScrollingFrame_.BorderColor3 = Color3.fromRGB(30, 30, 30)
        ScrollingFrame_.Position = UDim2.new(0.5, 0, 0.5, 0)
        ScrollingFrame_.Size = UDim2.new(0, 349, 0, 0)
        ScrollingFrame_.CanvasSize = UDim2.new(0, 0, 0, 137)
        ScrollingFrame_.ScrollBarThickness = 0
        ScrollingFrame_.AutomaticCanvasSize = Enum.AutomaticSize.Y

        PaggingBar_Scol.Name = "PaggingBar_Scol"
        PaggingBar_Scol.Parent = ScrollingFrame_
        PaggingBar_Scol.PaddingLeft = UDim.new(0, 5)
        PaggingBar_Scol.PaddingTop = UDim.new(0, 15)

        UIListLayout.Parent = ScrollingFrame_
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 7)

        if loadede then
            TweenService:Create(
                Line1,
                TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                {BackgroundTransparency = 0}
            ):Play()
            TweenService:Create(
                Transpane,
                TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                {BackgroundTransparency = 0.990}
            ):Play()
            TweenService:Create(
                TabLogo,
                TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                {ImageTransparency = 0}
            ):Play()
            TweenService:Create(
                TextLabel,
                TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                {TextTransparency = 0}
            ):Play()
            for i, v in pairs(Folder_Page:GetDescendants()) do
                if v:IsA "ScrollingFrame" then
                    TweenService:Create(
                        v,
                        TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                        {Size = UDim2.new(0, 349, 0, 0)}
                    ):Play()
                end
            end
            wait(0.12)
            for i, v in pairs(Folder_Page:GetChildren()) do
                if v:IsA "Frame" then
                    v.Visible = false
                end
            end
            PageMain.Visible = true
            TweenService:Create(
                ScrollingFrame_,
                TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                {Size = UDim2.new(0, 349, 0, 409)}
            ):Play()
        end

        TabClick.MouseButton1Click:Connect(
            function()
                if PageMain.Visible == false then
                    for i, v in pairs(TabList:GetDescendants()) do
                        if v.Name == "Line1" then
                            v.BackgroundTransparency = 1
                        end
                        if v.Name == "Transpane" then
                            v.BackgroundTransparency = 1
                        end
                        if v.Name == "TabLogo" then
                            v.ImageTransparency = 0.2
                        end
                        if v.Name == "TextLabel" then
                            v.TextTransparency = 0.2
                        end
                    end
                    TweenService:Create(
                        Line1,
                        TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        Transpane,
                        TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {BackgroundTransparency = 0.990}
                    ):Play()
                    TweenService:Create(
                        TabLogo,
                        TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {ImageTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        TextLabel,
                        TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                        {TextTransparency = 0}
                    ):Play()
                    for i, v in pairs(Folder_Page:GetDescendants()) do
                        if v:IsA "ScrollingFrame" then
                            TweenService:Create(
                                v,
                                TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                                {Size = UDim2.new(0, 349, 0, 0)}
                            ):Play()
                        end
                    end
                    wait(0.12)
                    for i, v in pairs(Folder_Page:GetChildren()) do
                        if v:IsA "Frame" then
                            v.Visible = false
                        end
                    end
                    PageMain.Visible = true
                    TweenService:Create(
                        ScrollingFrame_,
                        TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                        {Size = UDim2.new(0, 349, 0, 409)}
                    ):Play()
                end
            end
        )
        local All = {}
        function All:CreateTi(txt)
            local Ti = Instance.new("Frame")
            local Ti2 = Instance.new("TextLabel")
            local Ti3 = Instance.new("TextLabel")
            local TextTi = Instance.new("TextLabel")
            Ti.Name = "Ti"
            Ti.Parent = ScrollingFrame_
            Ti.AnchorPoint = Vector2.new(0.5, 0.5)
            Ti.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Ti.BackgroundTransparency = 1.000
            Ti.BorderSizePixel = 0
            Ti.ClipsDescendants = true
            Ti.Position = UDim2.new(0.5, 0, 0.5, 0)
            Ti.Size = UDim2.new(0, 300, 0, 33)

            Ti2.Name = "Ti2"
            Ti2.Parent = Ti
            Ti2.AnchorPoint = Vector2.new(0.5, 0.5)
            Ti2.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            Ti2.BorderSizePixel = 0
            Ti2.Position = UDim2.new(0, 0, 0.5, 0)
            Ti2.Size = UDim2.new(0, 150, 0, 1)
            Ti2.Font = Enum.Font.GothamSemibold
            Ti2.Text = ""
            Ti2.TextColor3 = Color3.fromRGB(255, 255, 255)
            Ti2.TextSize = 13.000

            Ti3.Name = "Ti3"
            Ti3.Parent = Ti
            Ti3.AnchorPoint = Vector2.new(0.5, 0.5)
            Ti3.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            Ti3.BorderSizePixel = 0
            Ti3.Position = UDim2.new(1, 0, 0.5, 0)
            Ti3.Size = UDim2.new(0, 150, 0, 1)
            Ti3.Font = Enum.Font.GothamSemibold
            Ti3.Text = ""
            Ti3.TextColor3 = Color3.fromRGB(255, 255, 255)
            Ti3.TextSize = 13.000

            TextTi.Name = "TextTi"
            TextTi.Parent = Ti
            TextTi.AnchorPoint = Vector2.new(0.5, 0.5)
            TextTi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextTi.BackgroundTransparency = 1.000
            TextTi.BorderSizePixel = 0
            TextTi.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextTi.Size = UDim2.new(0, 150, 0, 20)
            TextTi.Font = Enum.Font.GothamSemibold
            TextTi.Text = txt
            TextTi.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextTi.TextSize = 12.000
        end
        function All:CreateLabel(txt)
            local Label = Instance.new("Frame")
            local LabelText = Instance.new("TextLabel")
            Label.Name = "Label"
            Label.Parent = ScrollingFrame_
            Label.AnchorPoint = Vector2.new(0.5, 0.5)
            Label.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Label.BackgroundTransparency = 1.000
            Label.BorderSizePixel = 0
            Label.ClipsDescendants = true
            Label.Position = UDim2.new(0.436046511, 0, 0.153129384, 0)
            Label.Size = UDim2.new(0, 300, 0, 40)

            LabelText.Name = "LabelText"
            LabelText.Parent = Label
            LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelText.BackgroundTransparency = 1.000
            LabelText.BorderSizePixel = 0
            LabelText.Position = UDim2.new(0.5, 0, 0.5, 0)
            LabelText.Size = UDim2.new(0, 150, 0, 20)
            LabelText.Font = Enum.Font.GothamSemibold
            LabelText.Text = txt
            LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelText.TextSize = 14.000
        end

        function All:CreateToggle(txt, def, callback)
            callback = callback or function()
                end
            local Toggle = Instance.new("Frame")
            local ToggleText = Instance.new("TextLabel")
            local ToggleFrameIn = Instance.new("Frame")
            local UICorner_6 = Instance.new("UICorner")
            local check = Instance.new("ImageButton")
            local UICorner_7 = Instance.new("UICorner")
            local ToggleTap = Instance.new("TextButton")
            Toggle.Name = "Toggle"
            Toggle.Parent = ScrollingFrame_
            Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            Toggle.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Toggle.BackgroundTransparency = 1.000
            Toggle.BorderSizePixel = 0
            Toggle.ClipsDescendants = true
            Toggle.Position = UDim2.new(0, 152, 0, 62)
            Toggle.Size = UDim2.new(0, 300, 0, 40)

            ToggleText.Name = "ToggleText"
            ToggleText.Parent = Toggle
            ToggleText.AnchorPoint = Vector2.new(0.5, 0.5)
            ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleText.BackgroundTransparency = 1.000
            ToggleText.BorderSizePixel = 0
            ToggleText.Position = UDim2.new(0, 148, 0, 20)
            ToggleText.Size = UDim2.new(0, 154, 0, 20)
            ToggleText.Font = Enum.Font.GothamSemibold
            ToggleText.Text = txt
            ToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
            ToggleText.TextSize = 14.000
            ToggleText.TextXAlignment = Enum.TextXAlignment.Left

            ToggleFrameIn.Name = "ToggleFrameIn"
            ToggleFrameIn.Parent = Toggle
            ToggleFrameIn.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            ToggleFrameIn.Position = UDim2.new(0, 21, 0, 7)
            ToggleFrameIn.Size = UDim2.new(0, 28, 0, 28)

            UICorner_6.CornerRadius = UDim.new(0, 3)
            UICorner_6.Parent = ToggleFrameIn

            check.Name = "check"
            check.Parent = ToggleFrameIn
            check.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            check.LayoutOrder = 1
            check.Position = UDim2.new(0, 2, 0, 2)
            check.Size = UDim2.new(0, 24, 0, 24)
            check.ZIndex = 2
            check.AutoButtonColor = false
            check.Image = "rbxassetid://3926305904"
            check.ImageColor3 = Color3.fromRGB(27, 27, 27)
            check.ImageRectOffset = Vector2.new(312, 4)
            check.ImageRectSize = Vector2.new(24, 24)

            UICorner_7.CornerRadius = UDim.new(0, 3)
            UICorner_7.Parent = check

            ToggleTap.Name = "ToggleTap"
            ToggleTap.Parent = Toggle
            ToggleTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleTap.BackgroundTransparency = 1.000
            ToggleTap.Size = UDim2.new(0, 300, 0, 42)
            ToggleTap.Font = Enum.Font.SourceSans
            ToggleTap.Text = ""
            ToggleTap.TextColor3 = Color3.fromRGB(0, 0, 0)
            ToggleTap.TextSize = 14.000

            if def then
                callback(true)
                check.BackgroundTransparency = 1
            else
                callback(false)
            end
            ToggleTap.MouseButton1Click:Connect(
                function()
                    if check.BackgroundTransparency == 1 then
                        callback(false)
                        TweenService:Create(
                            check,
                            TweenInfo.new(0.15, Enum.EasingStyle.Bounce, Enum.EasingDirection.InOut),
                            {BackgroundTransparency = 0}
                        ):Play()
                    else
                        callback(true)
                        TweenService:Create(
                            check,
                            TweenInfo.new(0.15, Enum.EasingStyle.Bounce, Enum.EasingDirection.InOut),
                            {BackgroundTransparency = 1}
                        ):Play()
                    end
                end
            )
        end

        function All:CreateButton(txt, callback)
            callback = callback or function()
                end
            local Button = Instance.new("Frame")
            local ButtonTap = Instance.new("TextButton")
            local UICorner_8 = Instance.new("UICorner")
            local UIGradient = Instance.new("UIGradient")
            local TextLabel_2 = Instance.new("TextLabel")
            local UICorner_9 = Instance.new("UICorner")
            local UICorner_10 = Instance.new("UICorner")

            Button.Name = "Button"
            Button.Parent = ScrollingFrame_
            Button.AnchorPoint = Vector2.new(0.5, 0.5)
            Button.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Button.BackgroundTransparency = 1.000
            Button.BorderSizePixel = 0
            Button.ClipsDescendants = true
            Button.Position = UDim2.new(0, 150, 0, 155)
            Button.Size = UDim2.new(0, 300, 0, 42)

            ButtonTap.Name = "ButtonTap"
            ButtonTap.Parent = Button
            ButtonTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ButtonTap.AnchorPoint = Vector2.new(0, 0)
            ButtonTap.Position = UDim2.new(0, 46, 0, 6)
            ButtonTap.Size = UDim2.new(0, 219, 0, 28)
            ButtonTap.AutoButtonColor = false
            ButtonTap.Font = Enum.Font.SourceSans
            ButtonTap.Text = ""
            ButtonTap.TextColor3 = Color3.fromRGB(0, 0, 0)
            ButtonTap.TextSize = 14.000
            ButtonTap.BackgroundTransparency = 0.2

            UICorner_8.CornerRadius = UDim.new(0, 3)
            UICorner_8.Parent = ButtonTap

            UIGradient.Color =
                ColorSequence.new {
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(155, 142, 0)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(200, 28, 34))
            }
            UIGradient.Parent = ButtonTap

            TextLabel_2.Parent = ButtonTap
            TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.BackgroundTransparency = 1.000
            TextLabel_2.Position = UDim2.new(0, 24, 0, 0)
            TextLabel_2.Size = UDim2.new(0, 175, 0, 27)
            TextLabel_2.Font = Enum.Font.SourceSansBold
            TextLabel_2.Text = txt
            TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.TextSize = 15.000

            UICorner_9.CornerRadius = UDim.new(0, 4)
            UICorner_9.Name = ""
            UICorner_9.Parent = PageReal

            UICorner_10.Name = ""
            UICorner_10.Parent = PageReal
            ButtonTap.MouseEnter:Connect(
                function()
                end
            )
            ButtonTap.MouseButton1Click:Connect(
                function()
                    RippleEffect(ButtonTap)
                    pcall(callback)
                end
            )
        end

        function All:CreateDropdown(txt, list, logo, def, callback)
            local Dropdown = Instance.new("Frame")
            local DropdownIn = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local DropdownOut = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local DropdownText = Instance.new("TextLabel")
            local DropdownLogo = Instance.new("ImageLabel")

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = ScrollingFrame_
            Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown.BackgroundTransparency = 1.000
            Dropdown.Position = UDim2.new(0, 0, 0, 183)
            Dropdown.Size = UDim2.new(0, 323, 0, 47)

            DropdownIn.Name = "DropdownIn"
            DropdownIn.Parent = Dropdown
            DropdownIn.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            DropdownIn.Position = UDim2.new(0, 0, 0, 7)
            DropdownIn.Size = UDim2.new(0, 320, 0, 38)

            UICorner_2.CornerRadius = UDim.new(0, 4)
            UICorner_2.Parent = DropdownIn

            DropdownOut.Name = "DropdownOut"
            DropdownOut.Parent = DropdownIn
            DropdownOut.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            DropdownOut.Position = UDim2.new(0, 1, 0, 1)
            DropdownOut.Size = UDim2.new(0, 317, 0, 36)

            UICorner_3.CornerRadius = UDim.new(0, 4)
            UICorner_3.Parent = DropdownOut

            DropdownText.Name = "DropdownText"
            DropdownText.Parent = DropdownOut
            DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.BackgroundTransparency = 1.000
            DropdownText.Position = UDim2.new(0, 8, 0, 0)
            DropdownText.Size = UDim2.new(0, 280, 0, 33)
            DropdownText.Font = Enum.Font.SourceSansSemibold
            DropdownText.Text = txt
            DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.TextSize = 17.000
            DropdownText.TextXAlignment = Enum.TextXAlignment.Left

            local DropdownTap = Instance.new("TextButton")

            DropdownTap.Name = "DropdownTap"
            DropdownTap.Parent = DropdownIn
            DropdownTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownTap.BackgroundTransparency = 1.000
            DropdownTap.Size = UDim2.new(0, 316, 0, 36)
            DropdownTap.Font = Enum.Font.SourceSans
            DropdownTap.Text = ""
            DropdownTap.TextColor3 = Color3.fromRGB(0, 0, 0)
            DropdownTap.TextSize = 14.000

            if def then
                callback(tostring(def))
                DropdownText.Text = txt .. " : " .. tostring(def)
            end
            DropdownLogo.Name = "DropdownLogo"
            DropdownLogo.Parent = DropdownOut
            DropdownLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownLogo.BackgroundTransparency = 1.000
            DropdownLogo.Position = UDim2.new(0, 282, 0, 3)
            DropdownLogo.Size = UDim2.new(0, 32, 0, 32)
            DropdownLogo.Image = "rbxassetid://" .. tostring(logo)

            local ItemList = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")

            ItemList.Name = "ItemList"
            ItemList.Parent = ScrollingFrame_
            ItemList.Active = true
            ItemList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ItemList.BackgroundTransparency = 1.000
            ItemList.BorderColor3 = Color3.fromRGB(27, 27, 27)
            ItemList.Position = UDim2.new(0, 0, -0.0209009312, 0)
            ItemList.Size = UDim2.new(0, 321, 0, 120)
            ItemList.CanvasSize = UDim2.new(0, 0, 0, 0)
            ItemList.ScrollBarThickness = 3
            ItemList.Visible = false
            ItemList.AutomaticCanvasSize = Enum.AutomaticSize.Y

            local Dropdownz = {}
            function Dropdownz:CreateTabList(z)
                for i, v in next, z do
                    local eq = Instance.new("TextButton")
                    local UICorner = Instance.new("UICorner")
                    eq.Parent = ItemList
                    eq.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
                    eq.Size = UDim2.new(0, 316, 0, 19)
                    eq.Font = Enum.Font.SourceSansBold
                    eq.Text = v
                    eq.TextColor3 = Color3.fromRGB(255, 255, 255)
                    eq.TextSize = 17.000
                    eq.MouseButton1Click:Connect(
                        function()
                            callback(eq.Text)
                            DropdownText.Text = txt .. " : " .. eq.Text
                            TweenService:Create(
                                ItemList,
                                TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                                {Size = UDim2.new(0, 323, 0, 12)}
                            ):Play()
                            wait(.3)
                            ItemList.Visible = false
                        end
                    )
                    UICorner.CornerRadius = UDim.new(0, 4)
                    UICorner.Parent = eq
                end
            end

            UIListLayout.Parent = ItemList
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 1)

            Dropdownz:CreateTabList(list)

            DropdownTap.MouseButton1Click:Connect(
                function()
                    if ItemList.Visible == false then
                        ItemList.Visible = true
                        TweenService:Create(
                            ItemList,
                            TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                            {Size = UDim2.new(0, 323, 0, 54)}
                        ):Play()
                    else
                        TweenService:Create(
                            ItemList,
                            TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                            {Size = UDim2.new(0, 323, 0, 12)}
                        ):Play()
                        wait(.3)
                        ItemList.Visible = false
                    end
                end
            )
            function Dropdownz:Refresh(eeqeeqqe)
                for i, v in pairs(ItemList:GetChildren()) do
                    if v:IsA "TextButton" then
                        v:Destroy()
                    end
                end
                Dropdownz:CreateTabList(eeqeeqqe)
                TweenService:Create(
                    ItemList,
                    TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                    {Size = UDim2.new(0, 323, 0, 12)}
                ):Play()
                wait(.3)
                ItemList.Visible = false
            end
            return Dropdownz
        end
        function All:CreateMultiDropdown(txt, list, logo, def, callback)
            local Dropdownlistmulti = {}
            local Dropdown = Instance.new("Frame")
            local DropdownIn = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local DropdownOut = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local DropdownText = Instance.new("TextLabel")
            local DropdownLogo = Instance.new("ImageLabel")

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = ScrollingFrame_
            Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown.BackgroundTransparency = 1.000
            Dropdown.Position = UDim2.new(0, 0, 0, 183)
            Dropdown.Size = UDim2.new(0, 323, 0, 47)

            DropdownIn.Name = "DropdownIn"
            DropdownIn.Parent = Dropdown
            DropdownIn.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            DropdownIn.Position = UDim2.new(0, 0, 0, 7)
            DropdownIn.Size = UDim2.new(0, 320, 0, 38)

            UICorner_2.CornerRadius = UDim.new(0, 4)
            UICorner_2.Parent = DropdownIn

            DropdownOut.Name = "DropdownOut"
            DropdownOut.Parent = DropdownIn
            DropdownOut.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            DropdownOut.Position = UDim2.new(0, 1, 0, 1)
            DropdownOut.Size = UDim2.new(0, 317, 0, 36)

            UICorner_3.CornerRadius = UDim.new(0, 4)
            UICorner_3.Parent = DropdownOut

            DropdownText.Name = "DropdownText"
            DropdownText.Parent = DropdownOut
            DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.BackgroundTransparency = 1.000
            DropdownText.Position = UDim2.new(0, 8, 0, 0)
            DropdownText.Size = UDim2.new(0, 280, 0, 33)
            DropdownText.Font = Enum.Font.SourceSansSemibold
            DropdownText.Text = txt
            DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.TextSize = 17.000
            DropdownText.TextXAlignment = Enum.TextXAlignment.Left

            local DropdownTap = Instance.new("TextButton")

            DropdownTap.Name = "DropdownTap"
            DropdownTap.Parent = DropdownIn
            DropdownTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownTap.BackgroundTransparency = 1.000
            DropdownTap.Size = UDim2.new(0, 316, 0, 36)
            DropdownTap.Font = Enum.Font.SourceSans
            DropdownTap.Text = ""
            DropdownTap.TextColor3 = Color3.fromRGB(0, 0, 0)
            DropdownTap.TextSize = 14.000

            if def then
                callback(tostring(def))
                DropdownText.Text = txt .. " : " .. tostring(def)
            end
            DropdownLogo.Name = "DropdownLogo"
            DropdownLogo.Parent = DropdownOut
            DropdownLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownLogo.BackgroundTransparency = 1.000
            DropdownLogo.Position = UDim2.new(0, 282, 0, 3)
            DropdownLogo.Size = UDim2.new(0, 32, 0, 32)
            DropdownLogo.Image = "rbxassetid://" .. tostring(logo)

            local ItemList = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")

            ItemList.Name = "ItemList"
            ItemList.Parent = ScrollingFrame_
            ItemList.Active = true
            ItemList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ItemList.BackgroundTransparency = 1.000
            ItemList.BorderColor3 = Color3.fromRGB(27, 27, 27)
            ItemList.Position = UDim2.new(0, 0, -0.0209009312, 0)
            ItemList.Size = UDim2.new(0, 321, 0, 120)
            ItemList.CanvasSize = UDim2.new(0, 0, 0, 0)
            ItemList.ScrollBarThickness = 3
            ItemList.Visible = false
            ItemList.AutomaticCanvasSize = Enum.AutomaticSize.Y

            local Dropdownz = {}
            function Dropdownz:CreateTabList(z)
                local eq = Instance.new("TextButton")
                local UICorner = Instance.new("UICorner")
                eq.Parent = ItemList
                eq.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
                eq.Size = UDim2.new(0, 316, 0, 19)
                eq.Font = Enum.Font.SourceSansBold
                eq.Text = z
                eq.TextColor3 = Color3.fromRGB(255, 255, 255)
                eq.TextSize = 17.000
                eq.MouseButton1Click:Connect(
                    function()
                        if eq.BackgroundColor3 == Color3.fromRGB(100, 18, 22) then
                            for i, v in pairs(Dropdownlistmulti) do
                                if v == eq.Text then
                                    table.remove(Dropdownlistmulti, i)
                                end
                            end
                            TweenService:Create(
                                eq,
                                TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                                {BackgroundColor3 = Color3.fromRGB(155, 142, 0)}
                            ):Play()
                        else
                            if not table.find(Dropdownlistmulti, eq.Text) then
                                table.insert(Dropdownlistmulti, eq.Text)
                            end
                            TweenService:Create(
                                eq,
                                TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                                {BackgroundColor3 = Color3.fromRGB(100, 18, 22)}
                            ):Play()
                        end
                        DropdownText.Text = txt .. " : " .. table.concat(Dropdownlistmulti, " , ")
                        callback(Dropdownlistmulti)
                    end
                )
                UICorner.CornerRadius = UDim.new(0, 4)
                UICorner.Parent = eq
            end

            UIListLayout.Parent = ItemList
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 1)
            for i, v in next, list do
                Dropdownz:CreateTabList(v)
            end

            DropdownTap.MouseButton1Click:Connect(
                function()
                    if ItemList.Visible == false then
                        ItemList.Visible = true
                        TweenService:Create(
                            ItemList,
                            TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                            {Size = UDim2.new(0, 323, 0, 54)}
                        ):Play()
                    else
                        TweenService:Create(
                            ItemList,
                            TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                            {Size = UDim2.new(0, 323, 0, 12)}
                        ):Play()
                        wait(.3)
                        ItemList.Visible = false
                    end
                end
            )
            function Dropdownz:Refresh(eeqeeqqe)
                for i, v in pairs(ItemList:GetChildren()) do
                    if v:IsA "TextButton" then
                        v:Destroy()
                    end
                end
                for i, v in next, eeqeeqqe do
                    Dropdownz:CreateTabList(v)
                end
                TweenService:Create(
                    ItemList,
                    TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
                    {Size = UDim2.new(0, 323, 0, 12)}
                ):Play()
                wait(.3)
                ItemList.Visible = false
            end
            return Dropdownz
        end

        function All:CreateSlider(Title, min, max, default, callback)
            local Slider = Instance.new("Frame")
            local SliderFrame_ = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local SliderOut = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local SliderText = Instance.new("TextLabel")
            local SliderText1 = Instance.new("TextLabel")
            local SliderIn = Instance.new("Frame")
            local SliderBackground = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local UICorner_4 = Instance.new("UICorner")
            local TextButton = Instance.new("TextButton")

            Slider.Name = "Slider"
            Slider.Parent = ScrollingFrame_
            Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Slider.BackgroundTransparency = 1.000
            Slider.Position = UDim2.new(0, 0, 0, 244)
            Slider.Size = UDim2.new(0, 323, 0, 59)

            SliderFrame_.Name = "SliderFrame_"
            SliderFrame_.Parent = Slider
            SliderFrame_.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            SliderFrame_.Position = UDim2.new(0, 0, 0, 7)
            SliderFrame_.Size = UDim2.new(0, 320, 0, 43)

            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = SliderFrame_

            SliderOut.Name = "SliderOut"
            SliderOut.Parent = SliderFrame_
            SliderOut.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            SliderOut.Position = UDim2.new(0, 1, 0, 1)
            SliderOut.Size = UDim2.new(0, 317, 0, 40)

            UICorner_2.CornerRadius = UDim.new(0, 4)
            UICorner_2.Parent = SliderOut

            SliderText.Name = "SliderText"
            SliderText.Parent = SliderOut
            SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderText.BackgroundTransparency = 1.000
            SliderText.Position = UDim2.new(0, 8, 0, 4)
            SliderText.Size = UDim2.new(0, 262, 0, 16)
            SliderText.Font = Enum.Font.SourceSansSemibold
            SliderText.Text = Title
            SliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderText.TextSize = 14.000
            SliderText.TextXAlignment = Enum.TextXAlignment.Left

            SliderText1.Name = "SliderText1"
            SliderText1.Parent = SliderOut
            SliderText1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderText1.BackgroundTransparency = 1.000
            SliderText1.Position = UDim2.new(0, 275, 0, 4)
            SliderText1.Size = UDim2.new(0, 40, 0, 16)
            SliderText1.Font = Enum.Font.SourceSansSemibold
            SliderText1.Text = "12"
            SliderText1.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderText1.TextSize = 14.000

            SliderIn.Name = "SliderIn"
            SliderIn.Parent = SliderFrame_
            SliderIn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderIn.Position = UDim2.new(0, 8, 0, 28)
            SliderIn.Size = UDim2.new(0, 301, 0, 5)

            SliderBackground.Name = "SliderBackground"
            SliderBackground.Parent = SliderIn
            SliderBackground.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            SliderBackground.Size = UDim2.new(0, 301, 0, 5)

            UICorner_3.CornerRadius = UDim.new(0, 4)
            UICorner_3.Parent = SliderBackground

            UICorner_4.CornerRadius = UDim.new(0, 4)
            UICorner_4.Parent = SliderIn

            TextButton.Parent = SliderFrame_
            TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.Position = UDim2.new(0.0187500007, 0, 0.604651153, 0)
            TextButton.Size = UDim2.new(0, 310, 0, 10)
            TextButton.Font = Enum.Font.SourceSans
            TextButton.Text = ""
            TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton.TextSize = 14.000
            local mouse = game.Players.LocalPlayer:GetMouse()
            local uis = game:GetService("UserInputService")
            local Value
            if default then
                SliderBackground.Size = UDim2.new((default or 0) / max, 0, 0, 5)

                SliderText1.Text = default
                pcall(
                    function()
                        callback(default)
                    end
                )
            end

            TextButton.MouseButton1Down:Connect(
                function()
                    Value =
                        math.floor(
                        (((tonumber(max) - tonumber(min)) / 301) * SliderBackground.AbsoluteSize.X) + tonumber(min)
                    ) or 0
                    pcall(
                        function()
                            callback(Value)
                        end
                    )
                    SliderBackground.Size =
                        UDim2.new(0, math.clamp(mouse.X - SliderBackground.AbsolutePosition.X, 0, 301), 0, 5)
                    moveconnection =
                        mouse.Move:Connect(
                        function()
                            SliderText1.Text = Value
                            Value =
                                math.floor(
                                (((tonumber(max) - tonumber(min)) / 301) * SliderBackground.AbsoluteSize.X) +
                                    tonumber(min)
                            )
                            pcall(
                                function()
                                    callback(Value)
                                end
                            )
                            SliderBackground.Size =
                                UDim2.new(0, math.clamp(mouse.X - SliderBackground.AbsolutePosition.X, 0, 301), 0, 5)
                        end
                    )
                    releaseconnection =
                        uis.InputEnded:Connect(
                        function(Mouse)
                            if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                                Value =
                                    math.floor(
                                    (((tonumber(max) - tonumber(min)) / 301) * SliderIn.AbsoluteSize.X) + tonumber(min)
                                )
                                pcall(
                                    function()
                                        callback(Value)
                                    end
                                )
                                SliderBackground.Size =
                                    UDim2.new(
                                    0,
                                    math.clamp(mouse.X - SliderBackground.AbsolutePosition.X, 0, 301),
                                    0,
                                    5
                                )
                                moveconnection:Disconnect()
                                releaseconnection:Disconnect()
                            end
                        end
                    )
                end
            )
            function All:CreateTextbox(txt, callback)
                local Textbox = Instance.new("Frame")
                local TextBoxFrame = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local TextBox = Instance.new("TextBox")
                local UICorner_2 = Instance.new("UICorner")

                --Properties:

                Textbox.Name = "Textbox"
                Textbox.Parent = ScrollingFrame_
                Textbox.AnchorPoint = Vector2.new(0.5, 0.5)
                Textbox.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
                Textbox.BackgroundTransparency = 1.000
                Textbox.BorderSizePixel = 0
                Textbox.ClipsDescendants = true
                Textbox.Position = UDim2.new(0, 150, 0, 329)
                Textbox.Size = UDim2.new(0, 300, 0, 39)

                TextBoxFrame.Name = "TextBoxFrame"
                TextBoxFrame.Parent = Textbox
                TextBoxFrame.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
                TextBoxFrame.Position = UDim2.new(0.185000002, 0, 0.0714285746, 0)
                TextBoxFrame.Size = UDim2.new(0, 200, 0, 32)

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = TextBoxFrame

                TextBox.Parent = TextBoxFrame
                TextBox.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
                TextBox.Position = UDim2.new(-0.00499999989, 3, 0.063000001, 0)
                TextBox.Size = UDim2.new(0, 195, 0, 27)
                TextBox.Font = Enum.Font.SourceSansSemibold
                TextBox.Text = txt
                TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextBox.TextSize = 16.000

                UICorner_2.CornerRadius = UDim.new(0, 5)
                UICorner_2.Parent = TextBox
                TextBox.FocusLost:Connect(
                    function()
                        if #TextBox.Text < 1 then
                            TextBox.Text = txt
                        else
                            callback(TextBox.Text)
                        end
                    end
                )
            end
        end
        return All
    end
    return TabL
end
local UILib = {}

if game.CoreGui:FindFirstChild("Sawadd") then
    game.CoreGui:FindFirstChild("Sawadd"):Destroy()
end

local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
function RippleEffect(object)
    spawn(function()
        local ImageLabel = Instance.new("ImageLabel")
        ImageLabel.Name = "ImageLabel"
        ImageLabel.Parent = object
        ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageLabel.BackgroundTransparency = 1.000
        ImageLabel.ZIndex = 18
        ImageLabel.Image = "rbxassetid://2708891598"
        ImageLabel.ImageTransparency = 0.800
        ImageLabel.ScaleType = Enum.ScaleType.Slice
        ImageLabel.SliceCenter = Rect.new(204, 183, 220, 284)
        ImageLabel.SliceScale = 0.050
        ImageLabel.Size = UDim2.new(0,0,1,0)

        ImageLabel.Position = UDim2.new((Mouse.X - ImageLabel.AbsolutePosition.X) / object.AbsoluteSize.X, 0, (Mouse.Y - ImageLabel.AbsolutePosition.Y) / object.AbsoluteSize.Y, 0)
        TweenService:Create(ImageLabel, TweenInfo.new(.5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Position = UDim2.new(0, 0, 0, 0), Size = UDim2.new(1, 0, 1, 0)}):Play()

        wait(.5)
        TweenService:Create(ImageLabel, TweenInfo.new(.5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()

        wait(1)
        ImageLabel:Destroy()
    end)
end
function dragify(Frame)
    dragToggle = nil
    dragSpeed = .25 -- You can edit this.
    dragInput = nil
    dragStart = nil
    dragPos = nil

    function updateInput(input)
        Delta = input.Position - dragStart
        Position =
            UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
    end

    Frame.InputBegan:Connect(
        function(input)
            if
                (input.UserInputType == Enum.UserInputType.MouseButton1 or
                    input.UserInputType == Enum.UserInputType.Touch)
             then
                dragToggle = true
                dragStart = input.Position
                startPos = Frame.Position
                input.Changed:Connect(
                    function()
                        if (input.UserInputState == Enum.UserInputState.End) then
                            dragToggle = false
                        end
                    end
                )
            end
        end
    )

    Frame.InputChanged:Connect(
        function(input)
            if
                (input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch)
             then
                dragInput = input
            end
        end
    )

    game:GetService("UserInputService").InputChanged:Connect(
        function(input)
            if (input == dragInput and dragToggle) then
                updateInput(input)
            end
        end
    )
end

function UILib:CreateMain(txt, logo)
    local Sawadd = Instance.new("ScreenGui")
    local BackgroundFrame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local OntopPage = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local FIRSTNAME = Instance.new("TextLabel")
    local NAME = Instance.new("TextLabel")
    local NAME2 = Instance.new("TextLabel")
    local SmallLogo = Instance.new("ImageLabel")
    local TabBar = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local BigLogo = Instance.new("ImageLabel")
    local TabList = Instance.new("ScrollingFrame")
    local LayoutBar = Instance.new("UIListLayout")
    local PaggingBar = Instance.new("UIPadding")

    Sawadd.Name = "Sawadd"
    Sawadd.Parent = game.CoreGui
    Sawadd.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    BackgroundFrame.Name = "BackgroundFrame"
    BackgroundFrame.Parent = Sawadd
    BackgroundFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    BackgroundFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    BackgroundFrame.ClipsDescendants = true
    BackgroundFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    BackgroundFrame.Size = UDim2.new(0, 525, 0, 453)
    dragify(BackgroundFrame)
    
    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Name = ""
    UICorner.Parent = BackgroundFrame

    OntopPage.Name = "OntopPage"
    OntopPage.Parent = BackgroundFrame
    OntopPage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    OntopPage.BorderSizePixel = 0
    OntopPage.Position = UDim2.new(0.00761904754, 0, 0, 0)
    OntopPage.Size = UDim2.new(0, 525, 0, 27)

    UICorner_2.CornerRadius = UDim.new(0, 4)
    UICorner_2.Name = ""
    UICorner_2.Parent = OntopPage

    FIRSTNAME.Name = "FIRSTNAME"
    FIRSTNAME.Parent = OntopPage
    FIRSTNAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FIRSTNAME.BackgroundTransparency = 1.000
    FIRSTNAME.Position = UDim2.new(0.0933333421, 0, 0, 0)
    FIRSTNAME.Size = UDim2.new(0, 137, 0, 27)
    FIRSTNAME.Font = Enum.Font.GothamSemibold
    FIRSTNAME.Text = txt
    FIRSTNAME.TextColor3 = Color3.fromRGB(255, 255, 255)
    FIRSTNAME.TextSize = 17.000
    FIRSTNAME.TextXAlignment = Enum.TextXAlignment.Left

    NAME.Name = "NAME"
    NAME.Parent = OntopPage
    NAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NAME.BackgroundTransparency = 1.000
    NAME.Position = UDim2.new(0.171428561, 0, 0, 0)
    NAME.Size = UDim2.new(0, 137, 0, 27)
    NAME.Font = Enum.Font.GothamSemibold
    NAME.Text = "HUB"
    NAME.TextColor3 = Color3.fromRGB(155, 142, 0)
    NAME.TextSize = 17.000
    NAME.TextXAlignment = Enum.TextXAlignment.Left
    
    NAME2.Name = "NAME2"
    NAME2.Parent = OntopPage
    NAME2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NAME2.BackgroundTransparency = 1.000
    NAME2.Position = UDim2.new(0.0533333421, 0, 0, 0)
    NAME2.Size = UDim2.new(0, 137, 0, 27)
    NAME2.Font = Enum.Font.GothamSemibold
    NAME2.Text = "TA"
    NAME2.TextColor3 = Color3.fromRGB(155, 142, 0)
    NAME2.TextSize = 17.000
    NAME2.TextXAlignment = Enum.TextXAlignment.Left

    SmallLogo.Name = "SmallLogo"
    SmallLogo.Parent = OntopPage
    SmallLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SmallLogo.BackgroundTransparency = 1.000
    SmallLogo.Size = UDim2.new(0, 27, 0, 27)
    SmallLogo.Image = "rbxassetid://" .. tostring(logo)

    TabBar.Name = "TabBar"
    TabBar.Parent = BackgroundFrame
    TabBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    TabBar.Position = UDim2.new(0, 0, 0.059602648, 0)
    TabBar.Size = UDim2.new(0, 165, 0, 426)

    UICorner_3.CornerRadius = UDim.new(0, 4)
    UICorner_3.Name = ""
    UICorner_3.Parent = TabBar

    BigLogo.Name = "BigLogo"
    BigLogo.Parent = TabBar
    BigLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BigLogo.BackgroundTransparency = 1.000
    BigLogo.Position = UDim2.new(0.183452412, 0, 0, 0)
    BigLogo.Size = UDim2.new(0, 100, 0, 100)
    BigLogo.Image = "rbxassetid://" .. tostring(logo)

    TabList.Name = "TabList"
    TabList.Parent = TabBar
    TabList.Active = true
    TabList.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    TabList.BackgroundTransparency = 1.000
    TabList.BorderColor3 = Color3.fromRGB(30, 30, 30)
    TabList.Position = UDim2.new(0, 0, 0.218309864, 0)
    TabList.Size = UDim2.new(0, 160, 0, 333)
    TabList.CanvasSize = UDim2.new(0, 0, 0, 100)
    TabList.ScrollBarThickness = 4
    TabList.AutomaticCanvasSize = Enum.AutomaticSize.Y

    LayoutBar.Name = "LayoutBar"
    LayoutBar.Parent = TabList
    LayoutBar.SortOrder = Enum.SortOrder.LayoutOrder
    LayoutBar.Padding = UDim.new(0, 4)

    PaggingBar.Name = "PaggingBar"
    PaggingBar.Parent = TabList
    PaggingBar.PaddingTop = UDim.new(0, 15)
    
            local Folder_Page = Instance.new("Folder")
        
        Folder_Page.Name = "Folder_Page"
        Folder_Page.Parent = BackgroundFrame
        
    local TabL = {}
    function TabL:CreateTab(txt, logo , loadede)
        loadede = loadede or false
        local TabFrame = Instance.new("Frame")
        local Line1 = Instance.new("Frame")
        local UICorner_4 = Instance.new("UICorner")
        local Transpane = Instance.new("Frame")
        local UICorner_5 = Instance.new("UICorner")
        local TabLogo = Instance.new("ImageLabel")
        local TextLabel = Instance.new("TextLabel")
        local TabClick = Instance.new("TextButton")
        local PageMain = Instance.new("Frame")
        local PageReal = Instance.new("Frame")
        local ScrollingFrame_ = Instance.new("ScrollingFrame")
        local PaggingBar_Scol = Instance.new("UIPadding")
        local UIListLayout = Instance.new("UIListLayout")

        TabFrame.Name = "TabFrame"
        TabFrame.Parent = TabList
        TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabFrame.BackgroundTransparency = 1.000
        TabFrame.Size = UDim2.new(0, 131, 0, 42)

        Line1.Name = "Line1"
        Line1.Parent = TabFrame
        Line1.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
        Line1.Size = UDim2.new(0, 4, 0, 42)
        Line1.BackgroundTransparency = 1
        
        UICorner_4.Parent = Line1

        Transpane.Name = "Transpane"
        Transpane.Parent = TabFrame
        Transpane.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Transpane.BackgroundTransparency = 1
        Transpane.Position = UDim2.new(0.0305343512, 0, 0, 0)
        Transpane.Size = UDim2.new(0, 138, 0, 42)

        UICorner_5.CornerRadius = UDim.new(0, 4)
        UICorner_5.Parent = Transpane

        TabLogo.Name = "TabLogo"
        TabLogo.Parent = TabFrame
        TabLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabLogo.BackgroundTransparency = 1.000
        TabLogo.Position = UDim2.new(0, 13, 0, 7)
        TabLogo.Size = UDim2.new(0, 25, 0, 25)
        TabLogo.ImageColor3 = Color3.fromRGB(155, 142, 0)
        TabLogo.Image = "rbxassetid://" .. tostring(logo)
        TabLogo.ImageTransparency = 0.2
        
        TextLabel.Parent = TabFrame
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.Position = UDim2.new(0.412213743, 0, 0.142857149, 0)
        TextLabel.Size = UDim2.new(0, 104, 0, 29)
        TextLabel.Font = Enum.Font.SourceSansBold
        TextLabel.Text = txt
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 18.000
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left
        TextLabel.TextTransparency = 0.2

        TabClick.Name = "TabClick"
        TabClick.Parent = TabFrame
        TabClick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabClick.BackgroundTransparency = 1.000
        TabClick.Size = UDim2.new(0, 158, 0, 42)
        TabClick.Font = Enum.Font.SourceSans
        TabClick.Text = ""
        TabClick.TextColor3 = Color3.fromRGB(0, 0, 0)
        TabClick.TextSize = 14.000

        PageMain.Name = "PageMain"
        PageMain.Parent = Folder_Page
        PageMain.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        PageMain.BorderSizePixel = 0
        PageMain.ClipsDescendants = true
        PageMain.Position = UDim2.new(0.304761916, 0, 0.059602648, 0)
        PageMain.Size = UDim2.new(0, 365, 0, 426)
        PageMain.Visible = false
        
        PageReal.Name = "PageReal"
        PageReal.Parent = PageMain
        PageReal.BorderSizePixel = 0
        PageReal.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        PageReal.Position = UDim2.new(0.00999999978, 0, 0.00899999961, 0)
        PageReal.Size = UDim2.new(0, 365, 0, 426)

        ScrollingFrame_.Name = "ScrollingFrame_"
        ScrollingFrame_.Parent = PageReal
        ScrollingFrame_.Active = true
        ScrollingFrame_.AnchorPoint = Vector2.new(0.5, 0.5)
        ScrollingFrame_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        ScrollingFrame_.BackgroundTransparency = 1.000
        ScrollingFrame_.BorderColor3 = Color3.fromRGB(30, 30, 30)
        ScrollingFrame_.Position = UDim2.new(0.5, 0, 0.5, 0)
        ScrollingFrame_.Size = UDim2.new(0, 349, 0, 0)
        ScrollingFrame_.CanvasSize = UDim2.new(0, 0, 0, 137)
        ScrollingFrame_.ScrollBarThickness = 0
        ScrollingFrame_.AutomaticCanvasSize = Enum.AutomaticSize.Y
        
        PaggingBar_Scol.Name = "PaggingBar_Scol"
        PaggingBar_Scol.Parent = ScrollingFrame_
        PaggingBar_Scol.PaddingLeft = UDim.new(0, 5)
        PaggingBar_Scol.PaddingTop = UDim.new(0, 15)

        UIListLayout.Parent = ScrollingFrame_
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 7)
        
        if loadede then
            TweenService:Create(Line1, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
            TweenService:Create(Transpane, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.990}):Play()
            TweenService:Create(TabLogo, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 0}):Play()
            TweenService:Create(TextLabel, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
            for i,v in pairs(Folder_Page:GetDescendants()) do
                if v:IsA"ScrollingFrame" then
                    TweenService:Create(v, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0,349,0,0)}):Play()
                end
            end
            wait(0.12)
            for i,v in pairs(Folder_Page:GetChildren()) do
                if v:IsA"Frame" then
                    v.Visible = false
                end
            end
            PageMain.Visible = true
            TweenService:Create(ScrollingFrame_, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0,349,0,409)}):Play()
        end
        
        TabClick.MouseButton1Click:Connect(function()
            if PageMain.Visible == false then
            for i,v in pairs(TabList:GetDescendants()) do
                if v.Name == "Line1" then
                    v.BackgroundTransparency = 1
                end
                if v.Name == "Transpane" then
                    v.BackgroundTransparency = 1
                end
                if v.Name == "TabLogo" then
                    v.ImageTransparency = 0.2
                end
                if v.Name == "TextLabel" then
                    v.TextTransparency = 0.2
                end
            end
            TweenService:Create(Line1, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
            TweenService:Create(Transpane, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.990}):Play()
            TweenService:Create(TabLogo, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageTransparency = 0}):Play()
            TweenService:Create(TextLabel, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
            for i,v in pairs(Folder_Page:GetDescendants()) do
                if v:IsA"ScrollingFrame" then
                    TweenService:Create(v, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0,349,0,0)}):Play()
                end
            end
            wait(0.12)
            for i,v in pairs(Folder_Page:GetChildren()) do
                if v:IsA"Frame" then
                    v.Visible = false
                end
            end
            PageMain.Visible = true
            TweenService:Create(ScrollingFrame_, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0,349,0,409)}):Play()
            end
        end)
        local All = {}
        function All:CreateTi(txt)
            local Ti = Instance.new("Frame")
            local Ti2 = Instance.new("TextLabel")
            local Ti3 = Instance.new("TextLabel")
            local TextTi = Instance.new("TextLabel")
            Ti.Name = "Ti"
            Ti.Parent = ScrollingFrame_
            Ti.AnchorPoint = Vector2.new(0.5, 0.5)
            Ti.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Ti.BackgroundTransparency = 1.000
            Ti.BorderSizePixel = 0
            Ti.ClipsDescendants = true
            Ti.Position = UDim2.new(0.5, 0, 0.5, 0)
            Ti.Size = UDim2.new(0, 300, 0, 33)

            Ti2.Name = "Ti2"
            Ti2.Parent = Ti
            Ti2.AnchorPoint = Vector2.new(0.5, 0.5)
            Ti2.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            Ti2.BorderSizePixel = 0
            Ti2.Position = UDim2.new(0, 0, 0.5, 0)
            Ti2.Size = UDim2.new(0, 150, 0, 1)
            Ti2.Font = Enum.Font.GothamSemibold
            Ti2.Text = ""
            Ti2.TextColor3 = Color3.fromRGB(255, 255, 255)
            Ti2.TextSize = 13.000

            Ti3.Name = "Ti3"
            Ti3.Parent = Ti
            Ti3.AnchorPoint = Vector2.new(0.5, 0.5)
            Ti3.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            Ti3.BorderSizePixel = 0
            Ti3.Position = UDim2.new(1, 0, 0.5, 0)
            Ti3.Size = UDim2.new(0, 150, 0, 1)
            Ti3.Font = Enum.Font.GothamSemibold
            Ti3.Text = ""
            Ti3.TextColor3 = Color3.fromRGB(255, 255, 255)
            Ti3.TextSize = 13.000

            TextTi.Name = "TextTi"
            TextTi.Parent = Ti
            TextTi.AnchorPoint = Vector2.new(0.5, 0.5)
            TextTi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextTi.BackgroundTransparency = 1.000
            TextTi.BorderSizePixel = 0
            TextTi.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextTi.Size = UDim2.new(0, 150, 0, 20)
            TextTi.Font = Enum.Font.GothamSemibold
            TextTi.Text = txt
            TextTi.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextTi.TextSize = 12.000
        end
        function All:CreateLabel(txt)
            local Label = Instance.new("Frame")
            local LabelText = Instance.new("TextLabel")
            Label.Name = "Label"
            Label.Parent = ScrollingFrame_
            Label.AnchorPoint = Vector2.new(0.5, 0.5)
            Label.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Label.BackgroundTransparency = 1.000
            Label.BorderSizePixel = 0
            Label.ClipsDescendants = true
            Label.Position = UDim2.new(0.436046511, 0, 0.153129384, 0)
            Label.Size = UDim2.new(0, 300, 0, 40)

            LabelText.Name = "LabelText"
            LabelText.Parent = Label
            LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelText.BackgroundTransparency = 1.000
            LabelText.BorderSizePixel = 0
            LabelText.Position = UDim2.new(0.5, 0, 0.5, 0)
            LabelText.Size = UDim2.new(0, 150, 0, 20)
            LabelText.Font = Enum.Font.GothamSemibold
            LabelText.Text = txt
            LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelText.TextSize = 14.000
        end

        function All:CreateToggle(txt, def, callback)
            callback = callback or function() end
            local Toggle = Instance.new("Frame")
            local ToggleText = Instance.new("TextLabel")
            local ToggleFrameIn = Instance.new("Frame")
            local UICorner_6 = Instance.new("UICorner")
            local check = Instance.new("ImageButton")
            local UICorner_7 = Instance.new("UICorner")
            local ToggleTap = Instance.new("TextButton")
            Toggle.Name = "Toggle"
            Toggle.Parent = ScrollingFrame_
            Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            Toggle.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Toggle.BackgroundTransparency = 1.000
            Toggle.BorderSizePixel = 0
            Toggle.ClipsDescendants = true
            Toggle.Position = UDim2.new(0, 152, 0, 62)
            Toggle.Size = UDim2.new(0, 300, 0, 40)

            ToggleText.Name = "ToggleText"
            ToggleText.Parent = Toggle
            ToggleText.AnchorPoint = Vector2.new(0.5, 0.5)
            ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleText.BackgroundTransparency = 1.000
            ToggleText.BorderSizePixel = 0
            ToggleText.Position = UDim2.new(0, 148, 0, 20)
            ToggleText.Size = UDim2.new(0, 154, 0, 20)
            ToggleText.Font = Enum.Font.GothamSemibold
            ToggleText.Text = txt
            ToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
            ToggleText.TextSize = 14.000
            ToggleText.TextXAlignment = Enum.TextXAlignment.Left

            ToggleFrameIn.Name = "ToggleFrameIn"
            ToggleFrameIn.Parent = Toggle
            ToggleFrameIn.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            ToggleFrameIn.Position = UDim2.new(0, 21, 0, 7)
            ToggleFrameIn.Size = UDim2.new(0, 28, 0, 28)

            UICorner_6.CornerRadius = UDim.new(0, 3)
            UICorner_6.Parent = ToggleFrameIn

            check.Name = "check"
            check.Parent = ToggleFrameIn
            check.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            check.LayoutOrder = 1
            check.Position = UDim2.new(0, 2, 0, 2)
            check.Size = UDim2.new(0, 24, 0, 24)
            check.ZIndex = 2
            check.AutoButtonColor = false
            check.Image = "rbxassetid://3926305904"
            check.ImageColor3 = Color3.fromRGB(27, 27, 27)
            check.ImageRectOffset = Vector2.new(312, 4)
            check.ImageRectSize = Vector2.new(24, 24)

            UICorner_7.CornerRadius = UDim.new(0, 3)
            UICorner_7.Parent = check

            ToggleTap.Name = "ToggleTap"
            ToggleTap.Parent = Toggle
            ToggleTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleTap.BackgroundTransparency = 1.000
            ToggleTap.Size = UDim2.new(0, 300, 0, 42)
            ToggleTap.Font = Enum.Font.SourceSans
            ToggleTap.Text = ""
            ToggleTap.TextColor3 = Color3.fromRGB(0, 0, 0)
            ToggleTap.TextSize = 14.000
            
            if def then
                callback(true)
                check.BackgroundTransparency = 1
                else
                callback(false)
            end
            ToggleTap.MouseButton1Click:Connect(function()
                if check.BackgroundTransparency == 1 then
                   callback(false)
                   TweenService:Create(check, TweenInfo.new(0.15, Enum.EasingStyle.Bounce, Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
                   else
                    callback(true)
                    TweenService:Create(check, TweenInfo.new(0.15, Enum.EasingStyle.Bounce, Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()
                end
            end)
        end

        function All:CreateButton(txt, callback)
            callback = callback or function() end
            local Button = Instance.new("Frame")
            local ButtonTap = Instance.new("TextButton")
            local UICorner_8 = Instance.new("UICorner")
            local UIGradient = Instance.new("UIGradient")
            local TextLabel_2 = Instance.new("TextLabel")
            local UICorner_9 = Instance.new("UICorner")
            local UICorner_10 = Instance.new("UICorner")

            Button.Name = "Button"
            Button.Parent = ScrollingFrame_
            Button.AnchorPoint = Vector2.new(0.5, 0.5)
            Button.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Button.BackgroundTransparency = 1.000
            Button.BorderSizePixel = 0 
            Button.ClipsDescendants = true
            Button.Position = UDim2.new(0, 150, 0, 155)
            Button.Size = UDim2.new(0, 300, 0, 42)

            ButtonTap.Name = "ButtonTap"
            ButtonTap.Parent = Button
            ButtonTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ButtonTap.AnchorPoint = Vector2.new(0, 0)
            ButtonTap.Position = UDim2.new(0, 46, 0, 6)
            ButtonTap.Size = UDim2.new(0, 219, 0, 28)
            ButtonTap.AutoButtonColor = false
            ButtonTap.Font = Enum.Font.SourceSans
            ButtonTap.Text = ""
            ButtonTap.TextColor3 = Color3.fromRGB(0, 0, 0)
            ButtonTap.TextSize = 14.000
            ButtonTap.BackgroundTransparency = 0.2
            
            UICorner_8.CornerRadius = UDim.new(0, 3)
            UICorner_8.Parent = ButtonTap

            UIGradient.Color =
                ColorSequence.new {
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(155, 142, 0)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))
            }
            UIGradient.Parent = ButtonTap

            TextLabel_2.Parent = ButtonTap
            TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.BackgroundTransparency = 1.000
            TextLabel_2.Position = UDim2.new(0, 24, 0, 0)
            TextLabel_2.Size = UDim2.new(0, 175, 0, 27)
            TextLabel_2.Font = Enum.Font.SourceSansBold
            TextLabel_2.Text = txt
            TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.TextSize = 15.000

            UICorner_9.CornerRadius = UDim.new(0, 4)
            UICorner_9.Name = ""
            UICorner_9.Parent = PageReal

            UICorner_10.Name = ""
            UICorner_10.Parent = PageReal
            ButtonTap.MouseEnter:Connect(function()
                 
            end)
            ButtonTap.MouseButton1Click:Connect(
                function()
                   RippleEffect(ButtonTap)
                   pcall(callback)
                end)
        end
        
        function All:CreateDropdown(txt,list,logo,def,callback)
            
            local Dropdown = Instance.new("Frame")
            local DropdownIn = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local DropdownOut = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local DropdownText = Instance.new("TextLabel")
            local DropdownLogo = Instance.new("ImageLabel")
            
            Dropdown.Name = "Dropdown"
            Dropdown.Parent = ScrollingFrame_
            Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown.BackgroundTransparency = 1.000
            Dropdown.Position = UDim2.new(0, 0, 0, 183)
            Dropdown.Size = UDim2.new(0, 323, 0, 47)
            
            DropdownIn.Name = "DropdownIn"
            DropdownIn.Parent = Dropdown
            DropdownIn.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            DropdownIn.Position = UDim2.new(0, 0, 0, 7)
            DropdownIn.Size = UDim2.new(0, 320, 0, 38)
            
            UICorner_2.CornerRadius = UDim.new(0, 4)
            UICorner_2.Parent = DropdownIn
            
            DropdownOut.Name = "DropdownOut"
            DropdownOut.Parent = DropdownIn
            DropdownOut.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            DropdownOut.Position = UDim2.new(0, 1, 0, 1)
            DropdownOut.Size = UDim2.new(0, 317, 0, 36)
            
            UICorner_3.CornerRadius = UDim.new(0, 4)
            UICorner_3.Parent = DropdownOut
            
            DropdownText.Name = "DropdownText"
            DropdownText.Parent = DropdownOut
            DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.BackgroundTransparency = 1.000
            DropdownText.Position = UDim2.new(0, 8, 0, 0)
            DropdownText.Size = UDim2.new(0, 280, 0, 33)
            DropdownText.Font = Enum.Font.SourceSansSemibold
            DropdownText.Text = txt
            DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.TextSize = 17.000
            DropdownText.TextXAlignment = Enum.TextXAlignment.Left
            
            local DropdownTap = Instance.new("TextButton")

            DropdownTap.Name = "DropdownTap"
            DropdownTap.Parent = DropdownIn
            DropdownTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownTap.BackgroundTransparency = 1.000
            DropdownTap.Size = UDim2.new(0, 316, 0, 36)
            DropdownTap.Font = Enum.Font.SourceSans
            DropdownTap.Text = ""
            DropdownTap.TextColor3 = Color3.fromRGB(0, 0, 0)
            DropdownTap.TextSize = 14.000

            if def then
               callback(tostring(def)) 
               DropdownText.Text = txt.." : "..tostring(def)
            end
            DropdownLogo.Name = "DropdownLogo"
            DropdownLogo.Parent = DropdownOut
            DropdownLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownLogo.BackgroundTransparency = 1.000
            DropdownLogo.Position = UDim2.new(0, 282, 0, 3)
            DropdownLogo.Size = UDim2.new(0, 32, 0, 32)
            DropdownLogo.Image = "rbxassetid://"..tostring(logo)
            
            local ItemList = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")
            
            ItemList.Name = "ItemList"
            ItemList.Parent = ScrollingFrame_
            ItemList.Active = true
            ItemList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ItemList.BackgroundTransparency = 1.000
            ItemList.BorderColor3 = Color3.fromRGB(27, 27, 27)
            ItemList.Position = UDim2.new(0, 0, -0.0209009312, 0)
            ItemList.Size = UDim2.new(0, 321, 0, 120)
            ItemList.CanvasSize = UDim2.new(0, 0, 0, 0)
            ItemList.ScrollBarThickness = 3
            ItemList.Visible = false
            ItemList.AutomaticCanvasSize = Enum.AutomaticSize.Y
            
            local Dropdownz = {}
                function Dropdownz:CreateTabList(z)
                for i,v in next, z do
                     local eq = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            eq.Parent = ItemList
            eq.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            eq.Size = UDim2.new(0, 316, 0, 19)
            eq.Font = Enum.Font.SourceSansBold
            eq.Text = v
            eq.TextColor3 = Color3.fromRGB(255, 255, 255)
            eq.TextSize = 17.000
            eq.MouseButton1Click:Connect(function()
                callback(eq.Text)
                DropdownText.Text = txt.." : "..eq.Text
                TweenService:Create(ItemList, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 323, 0, 12)}):Play()
                    wait(.3)
                    ItemList.Visible = false
            end)
            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = eq
                end
            end
            
                        UIListLayout.Parent = ItemList
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 1)
            
            Dropdownz:CreateTabList(list)
            
              DropdownTap.MouseButton1Click:Connect(function()
                if ItemList.Visible == false then
                    ItemList.Visible = true
                    TweenService:Create(ItemList, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 323, 0, 54)}):Play()
                    else
                   TweenService:Create(ItemList, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 323, 0, 12)}):Play()
                    wait(.3)
                    ItemList.Visible = false
                end
              end)
             function Dropdownz:Refresh(eeqeeqqe)
                  for i,v in pairs(ItemList:GetChildren()) do
                      if v:IsA"TextButton" then
                          v:Destroy()
                      end
                  end
                  Dropdownz:CreateTabList(eeqeeqqe)
                  TweenService:Create(ItemList, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 323, 0, 12)}):Play()
                    wait(.3)
                    ItemList.Visible = false
                    end
            return Dropdownz
        end
        function All:CreateMultiDropdown(txt,list,logo,def,callback)
            local Dropdownlistmulti = {}
            local Dropdown = Instance.new("Frame")
            local DropdownIn = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local DropdownOut = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local DropdownText = Instance.new("TextLabel")
            local DropdownLogo = Instance.new("ImageLabel")
            
            Dropdown.Name = "Dropdown"
            Dropdown.Parent = ScrollingFrame_
            Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown.BackgroundTransparency = 1.000
            Dropdown.Position = UDim2.new(0, 0, 0, 183)
            Dropdown.Size = UDim2.new(0, 323, 0, 47)
            
            DropdownIn.Name = "DropdownIn"
            DropdownIn.Parent = Dropdown
            DropdownIn.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            DropdownIn.Position = UDim2.new(0, 0, 0, 7)
            DropdownIn.Size = UDim2.new(0, 320, 0, 38)
            
            UICorner_2.CornerRadius = UDim.new(0, 4)
            UICorner_2.Parent = DropdownIn
            
            DropdownOut.Name = "DropdownOut"
            DropdownOut.Parent = DropdownIn
            DropdownOut.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            DropdownOut.Position = UDim2.new(0, 1, 0, 1)
            DropdownOut.Size = UDim2.new(0, 317, 0, 36)
            
            UICorner_3.CornerRadius = UDim.new(0, 4)
            UICorner_3.Parent = DropdownOut
            
            DropdownText.Name = "DropdownText"
            DropdownText.Parent = DropdownOut
            DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.BackgroundTransparency = 1.000
            DropdownText.Position = UDim2.new(0, 8, 0, 0)
            DropdownText.Size = UDim2.new(0, 280, 0, 33)
            DropdownText.Font = Enum.Font.SourceSansSemibold
            DropdownText.Text = txt
            DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.TextSize = 17.000
            DropdownText.TextXAlignment = Enum.TextXAlignment.Left
            
            local DropdownTap = Instance.new("TextButton")

            DropdownTap.Name = "DropdownTap"
            DropdownTap.Parent = DropdownIn
            DropdownTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownTap.BackgroundTransparency = 1.000
            DropdownTap.Size = UDim2.new(0, 316, 0, 36)
            DropdownTap.Font = Enum.Font.SourceSans
            DropdownTap.Text = ""
            DropdownTap.TextColor3 = Color3.fromRGB(0, 0, 0)
            DropdownTap.TextSize = 14.000

            if def then
               callback(tostring(def)) 
               DropdownText.Text = txt.." : "..tostring(def)
            end
            DropdownLogo.Name = "DropdownLogo"
            DropdownLogo.Parent = DropdownOut
            DropdownLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownLogo.BackgroundTransparency = 1.000
            DropdownLogo.Position = UDim2.new(0, 282, 0, 3)
            DropdownLogo.Size = UDim2.new(0, 32, 0, 32)
            DropdownLogo.Image = "rbxassetid://"..tostring(logo)
            
            local ItemList = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")
            
            ItemList.Name = "ItemList"
            ItemList.Parent = ScrollingFrame_
            ItemList.Active = true
            ItemList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ItemList.BackgroundTransparency = 1.000
            ItemList.BorderColor3 = Color3.fromRGB(27, 27, 27)
            ItemList.Position = UDim2.new(0, 0, -0.0209009312, 0)
            ItemList.Size = UDim2.new(0, 321, 0, 120)
            ItemList.CanvasSize = UDim2.new(0, 0, 0, 0)
            ItemList.ScrollBarThickness = 3
            ItemList.Visible = false
            ItemList.AutomaticCanvasSize = Enum.AutomaticSize.Y
            
            local Dropdownz = {}
                function Dropdownz:CreateTabList(z)
                     local eq = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            eq.Parent = ItemList
            eq.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            eq.Size = UDim2.new(0, 316, 0, 19)
            eq.Font = Enum.Font.SourceSansBold
            eq.Text = z
            eq.TextColor3 = Color3.fromRGB(255, 255, 255)
            eq.TextSize = 17.000
            eq.MouseButton1Click:Connect(function()
                if eq.BackgroundColor3 == Color3.fromRGB(100,18,22) then
                    for i,v in pairs(Dropdownlistmulti) do
                        if v == eq.Text then
                            table.remove(Dropdownlistmulti,i)
                        end
                    end
                    TweenService:Create(eq, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(155, 142, 0)}):Play()
                else
                    if not table.find(Dropdownlistmulti,eq.Text) then
                        table.insert(Dropdownlistmulti,eq.Text)
                    end
                    TweenService:Create(eq, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(100,18,22)}):Play()
                end
                DropdownText.Text = txt.." : "..table.concat(Dropdownlistmulti," , ")
                callback(Dropdownlistmulti)
            end)
            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = eq
            end
            
                        UIListLayout.Parent = ItemList
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 1)
            for i,v in next, list do
            Dropdownz:CreateTabList(v)
            end
            
              DropdownTap.MouseButton1Click:Connect(function()
                if ItemList.Visible == false then
                    ItemList.Visible = true
                    TweenService:Create(ItemList, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 323, 0, 54)}):Play()
                    else
                   TweenService:Create(ItemList, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 323, 0, 12)}):Play()
                    wait(.3)
                    ItemList.Visible = false
                end
              end)
              function Dropdownz:Refresh(eeqeeqqe)
                  for i,v in pairs(ItemList:GetChildren()) do
                      if v:IsA"TextButton" then
                          v:Destroy()
                      end
                  end
                  for i,v in next , eeqeeqqe do
                  Dropdownz:CreateTabList(v)
                  end
                  TweenService:Create(ItemList, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 323, 0, 12)}):Play()
                    wait(.3)
                    ItemList.Visible = false
                    end
            return Dropdownz
        end
        
        function All:CreateSlider(Title, min, max, default, callback)
            
            local Slider = Instance.new("Frame")
            local SliderFrame_ = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local SliderOut = Instance.new("Frame")
            local UICorner_2 = Instance.new("UICorner")
            local SliderText = Instance.new("TextLabel")
            local SliderText1 = Instance.new("TextLabel")
            local SliderIn = Instance.new("Frame")
            local SliderBackground = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local UICorner_4 = Instance.new("UICorner")
            local TextButton = Instance.new("TextButton")
            
            Slider.Name = "Slider"
            Slider.Parent = ScrollingFrame_
            Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Slider.BackgroundTransparency = 1.000
            Slider.Position = UDim2.new(0, 0, 0, 244)
            Slider.Size = UDim2.new(0, 323, 0, 59)
            
            SliderFrame_.Name = "SliderFrame_"
            SliderFrame_.Parent = Slider
            SliderFrame_.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            SliderFrame_.Position = UDim2.new(0, 0, 0, 7)
            SliderFrame_.Size = UDim2.new(0, 320, 0, 43)
            
            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = SliderFrame_
            
            SliderOut.Name = "SliderOut"
            SliderOut.Parent = SliderFrame_
            SliderOut.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            SliderOut.Position = UDim2.new(0, 1, 0, 1)
            SliderOut.Size = UDim2.new(0, 317, 0, 40)
            
            UICorner_2.CornerRadius = UDim.new(0, 4)
            UICorner_2.Parent = SliderOut
            
            SliderText.Name = "SliderText"
            SliderText.Parent = SliderOut
            SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderText.BackgroundTransparency = 1.000
            SliderText.Position = UDim2.new(0, 8, 0, 4)
            SliderText.Size = UDim2.new(0, 262, 0, 16)
            SliderText.Font = Enum.Font.SourceSansSemibold
            SliderText.Text = Title
            SliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderText.TextSize = 14.000
            SliderText.TextXAlignment = Enum.TextXAlignment.Left
            
            SliderText1.Name = "SliderText1"
            SliderText1.Parent = SliderOut
            SliderText1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderText1.BackgroundTransparency = 1.000
            SliderText1.Position = UDim2.new(0, 275, 0, 4)
            SliderText1.Size = UDim2.new(0, 40, 0, 16)
            SliderText1.Font = Enum.Font.SourceSansSemibold
            SliderText1.Text = "12"
            SliderText1.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderText1.TextSize = 14.000
            
            SliderIn.Name = "SliderIn"
            SliderIn.Parent = SliderFrame_
            SliderIn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderIn.Position = UDim2.new(0, 8, 0, 28)
            SliderIn.Size = UDim2.new(0, 301, 0, 5)
            
            SliderBackground.Name = "SliderBackground"
            SliderBackground.Parent = SliderIn
            SliderBackground.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            SliderBackground.Size = UDim2.new(0, 301, 0, 5)
            
            UICorner_3.CornerRadius = UDim.new(0, 4)
            UICorner_3.Parent = SliderBackground
            
            UICorner_4.CornerRadius = UDim.new(0, 4)
            UICorner_4.Parent = SliderIn
            
            TextButton.Parent = SliderFrame_
            TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.BackgroundTransparency = 1.000
            TextButton.Position = UDim2.new(0.0187500007, 0, 0.604651153, 0)
            TextButton.Size = UDim2.new(0, 310, 0, 10)
            TextButton.Font = Enum.Font.SourceSans
            TextButton.Text = ""
            TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton.TextSize = 14.000
              local mouse = game.Players.LocalPlayer:GetMouse()
                local uis = game:GetService("UserInputService")
                local Value;
                if default then
                SliderBackground.Size = UDim2.new((default or 0) / max, 0, 0, 5)

                SliderText1.Text = default
                pcall(
                    function()
                        callback(default)
                    end
                )
            end
                
              TextButton.MouseButton1Down:Connect(function()
                    Value = math.floor((((tonumber(max) - tonumber(min)) / 301) * SliderBackground.AbsoluteSize.X) + tonumber(min)) or 0
                    pcall(function()
                        callback(Value)
                    end)
                    SliderBackground.Size = UDim2.new(0, math.clamp(mouse.X - SliderBackground.AbsolutePosition.X, 0, 301), 0, 5)
                    moveconnection = mouse.Move:Connect(function()
                        SliderText1.Text = Value
                        Value = math.floor((((tonumber(max) - tonumber(min)) / 301) * SliderBackground.AbsoluteSize.X) + tonumber(min))
                        pcall(function()
                            callback(Value)
                        end)
                        SliderBackground.Size = UDim2.new(0, math.clamp(mouse.X - SliderBackground.AbsolutePosition.X, 0, 301), 0, 5)
                    end)
                    releaseconnection = uis.InputEnded:Connect(function(Mouse)
                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                            Value = math.floor((((tonumber(max) - tonumber(min)) / 301) * SliderIn.AbsoluteSize.X) + tonumber(min))
                            pcall(function()
                                callback(Value)
                            end)
                            SliderBackground.Size = UDim2.new(0, math.clamp(mouse.X - SliderBackground.AbsolutePosition.X, 0, 301), 0, 5)
                            moveconnection:Disconnect()
                            releaseconnection:Disconnect()
                        end
                    end)
                end)
        function All:CreateTextbox(txt,callback)
            
            local Textbox = Instance.new("Frame")
            local TextBoxFrame = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local TextBox = Instance.new("TextBox")
            local UICorner_2 = Instance.new("UICorner")
            
            --Properties:
            
            Textbox.Name = "Textbox"
            Textbox.Parent = ScrollingFrame_
            Textbox.AnchorPoint = Vector2.new(0.5, 0.5)
            Textbox.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Textbox.BackgroundTransparency = 1.000
            Textbox.BorderSizePixel = 0
            Textbox.ClipsDescendants = true
            Textbox.Position = UDim2.new(0, 150, 0, 329)
            Textbox.Size = UDim2.new(0, 300, 0, 39)
            
            TextBoxFrame.Name = "TextBoxFrame"
            TextBoxFrame.Parent = Textbox
            TextBoxFrame.BackgroundColor3 = Color3.fromRGB(155, 142, 0)
            TextBoxFrame.Position = UDim2.new(0.185000002, 0, 0.0714285746, 0)
            TextBoxFrame.Size = UDim2.new(0, 200, 0, 32)
            
            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Parent = TextBoxFrame
            
            TextBox.Parent = TextBoxFrame
            TextBox.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            TextBox.Position = UDim2.new(-0.00499999989, 3, 0.063000001, 0)
            TextBox.Size = UDim2.new(0, 195, 0, 27)
            TextBox.Font = Enum.Font.SourceSansSemibold
            TextBox.Text = txt
            TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.TextSize = 16.000
            
            UICorner_2.CornerRadius = UDim.new(0, 5)
            UICorner_2.Parent = TextBox 
            TextBox.FocusLost:Connect(function()
                if #TextBox.Text < 1 then
                    TextBox.Text = txt
                    else
                    callback(TextBox.Text)
                end
            end)

        end
        
        end
        return All
    end
    return TabL
end
-------------UI----------

local Main = UILib:CreateMain("Kirainc Hub", )
 
 local Tab1 = Main:CreateTab("Auto Farm", 6031075938,true)
 local Stats = Main:CreateTab("Stats", 6031075938,false)
 local TPSEC = Main:CreateTab("Teleport", 6031075938,false)
 local dun = Main:CreateTab("Dungeon", 6031075938,false)
 local buy = Main:CreateTab("Buy Item", 6031075938,false)
 local misc = Main:CreateTab("Misc", 6031075938,false)
 local music = Main:CreateTab("Music", 6031075938,false)

return UILib
