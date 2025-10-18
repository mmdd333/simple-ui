-- 空白UI脚本 - 由你的名字创建
return function(喵喵大帝)
    local Players = game:GetService("Players")
    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")

    local player = Players.
LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")

    -- 创建主屏幕GUI
    local screenGui = Instance.new("ScreenGui")
    screenGui
.Name = "SimpleBlankUI"
    screenGui
.ZIndexBehavior = Enum.ZIndexBehavior.
Sibling
    screenGui
.ResetOnSpawn = false
    screenGui
.Parent =
 playerGui

    -- 创建主窗口
    local mainFrame = Instance.new("Frame")
    mainFrame
.Name = "MainWindow"
    mainFrame
.Size = UDim2.new(0, 300, 0, 200)
    mainFrame
.Position = UDim2.new(0.5, -150, 0.5, -100)
    mainFrame
.AnchorPoint = Vector2.new(0.5, 0.5)
    mainFrame
.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    mainFrame
.BorderSizePixel = 0
    mainFrame
.Visible = false
    mainFrame
.Parent =
 screenGui

    -- 圆角
    local corner = Instance.new("UICorner")
    corner
.CornerRadius = UDim.new(0, 8)
    corner
.Parent =
 mainFrame

    -- 标题栏
    local titleBar = Instance.new("Frame")
    titleBar
.Name = "TitleBar"
    titleBar
.Size = UDim2.new(1, 0, 0, 30)
    titleBar
.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    titleBar
.BorderSizePixel = 0
    titleBar
.Parent =
 mainFrame

    -- 标题文字
    local titleLabel = Instance.new("TextLabel")
    titleLabel
.Size = UDim2.new(1, -40, 1, 0)
    titleLabel
.Position = UDim2.new(0, 10, 0, 0)
    titleLabel
.BackgroundTransparency = 1
    titleLabel
.Text = "空白界面"
    titleLabel
.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel
.TextXAlignment = Enum.TextXAlignment.
Left
    titleLabel
.Font = Enum.Font.
Gotham
    titleLabel
.TextSize = 12
    titleLabel
.Parent =
 titleBar

    -- 关闭按钮
    local closeButton = Instance.new("TextButton")
    closeButton
.Name = "CloseButton"
    closeButton
.Size = UDim2.new(0, 20, 0, 20)
    closeButton
.Position = UDim2.new(1, -25, 0, 5)
    closeButton
.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
    closeButton
.BorderSizePixel = 0
    closeButton
.Text = "X"
    closeButton
.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeButton
.Font = Enum.Font.
Gotham
    closeButton
.TextSize = 10
    closeButton
.Parent =
 titleBar

    local closeCorner = Instance.new("UICorner")
    closeCorner
.CornerRadius = UDim.new(1, 0)
    closeCorner
.Parent =
 closeButton

    -- 内容区域
    local contentFrame = Instance.new("Frame")
    contentFrame
.Name = "ContentFrame"
    contentFrame
.Size = UDim2.new(1, -20, 1, -50)
    contentFrame
.Position = UDim2.new(0, 10, 0, 40)
    contentFrame
.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    contentFrame
.BorderSizePixel = 0
    contentFrame
.Parent =
 mainFrame

    local contentCorner = Instance.new("UICorner")
    contentCorner
.CornerRadius = UDim.new(0, 6)
    contentCorner
.Parent =
 contentFrame

    -- 提示文字
    local hintText = Instance.new("TextLabel")
    hintText
.Size = UDim2.new(1, -20, 1, -20)
    hintText
.Position = UDim2.new(0, 10, 0, 10)
    hintText
.BackgroundTransparency = 1
    hintText
.Text = "这是一个空白UI界面\n\n按 F9 打开/关闭"
    hintText
.TextColor3 = Color3.fromRGB(180, 180, 180)
    hintText
.TextSize = 11
    hintText
.Font = Enum.Font.
Gotham
    hintText
.TextWrapped = true
    hintText
.TextYAlignment = Enum.TextYAlignment.
Center
    hintText
.Parent =
 contentFrame

    -- 打开按钮
    local openButton = Instance.new("TextButton")
    openButton
.Name = "OpenUIButton"
    openButton
.Size = UDim2.new(0, 40, 0, 40)
    openButton
.Position = UDim2.new(1, -50, 1, -50)
    openButton
.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
    openButton
.BorderSizePixel = 0
    openButton
.Text = "UI"
    openButton
.TextColor3 = Color3.fromRGB(255, 255, 255)
    openButton
.Font = Enum.Font.
Gotham
    openButton
.TextSize = 11
    openButton
.Visible = true
    openButton
.Parent =
 screenGui

    local openButtonCorner = Instance.new("UICorner")
    openButtonCorner
.CornerRadius = UDim.new(0, 6)
    openButtonCorner
.Parent =
 openButton

    -- 显示UI函数
    local function showUI()
        mainFrame
.Visible = true
        openButton
.Visible = false
    end

    -- 隐藏UI函数
    local function hideUI()
        mainFrame
.Visible = false
        openButton
.Visible = true
    end

    -- 按钮事件
    openButton
.MouseButton1Click:Connect(showUI)
    closeButton
.MouseButton1Click:Connect(hideUI)

    -- 键盘快捷键
    UserInputService
.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        
        if input.KeyCode == Enum.KeyCode.F9 then
            if mainFrame.Visible then
                hideUI()
            else
                showUI()
            end
        end
    end)

    -- 初始状态
    openButton
.Visible = true
    mainFrame
.Visible = false

    print("空白UI加载成功！按 F9 打开/关闭")
end
