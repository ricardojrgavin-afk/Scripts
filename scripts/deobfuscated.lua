local char = string.char
local byte = string.byte
local sub = string.sub
local bxor = (bit32 or bit).bxor
local concat = table.concat
local insert = table.insert
local function u7(p1, p2)
    local t1 = {}
    for i = 1, #p1 do
        local v16 = i
        insert(t1, char(bxor(byte(sub(p1, v16, v16 + 1)), byte(sub(p2, 1 + v16 % #p2, 1 + v16 % #p2 + 1))) % 256))
    end
    return concat(t1)
end
local match = string.match
local _tonumber = tonumber
local _pcall = pcall
local function u11()
    local function v17(p3)
        if p3 then
            local v19 = game:GetService(u7("\025\0291\171=\\\236", "\159IqP\210X."))
            local u20 = game:GetService(u7("\213\148\"\254\"\245\151%\206\"", "G\135\225L\173"))
            local u21 = u7("\131\031\225\177\166\205\181\003\217\185\162\207\162\014\204\182\179\192\168\008", "\168\199z\141\216\208")
            local n1 = 26
            local n2 = 24
            local vector3 = Vector3.new(10, 1, 10)
            local n3 = 95
            local n4 = 13
            local n5 = 13
            local LocalPlayer = v19.LocalPlayer
            local v29 = LocalPlayer:WaitForChild(u7(":\250\172\196\021\226_\168\003", "\221j\150\205\189p\144\024"))
            local u30 = nil
            local n6 = 0
            local n7 = 0
            local u33 = false
            local thread = nil
            local u35 = true
            local Position = nil
            local u37 = u7("-\144\171\\\023\210^_)\139\176XI\132\024\030.\202\188C\009\199\002Ow\182\179e\007\145A)", "pE\228\223,d\232q")
            local u38 = u7("\134OU\133\151W\135\206", "\230\180\127g\179\214\028")
            local u39 = nil
            local u40 = nil
            local u41 = nil
            local u42 = nil
            local u43 = nil
            local function u44()
                while 0 ~= 0 do
                end
                local n8 = 0
                repeat
                    if n8 == 1 then
                        local n9 = 0
                        while n9 ~= 1 do
                            if n9 == 0 then
                                u41 = u40:CreateTab(u7("\168\000SO\242D\242\149", "\128\236e?&\132!"), 4483362458)
                                u42 = u41:CreateParagraph({
                                    [u7("\152\160\005H\179", "\175\204\201q$\214\139")] = u7("t\2164\200\023\007\138u\239\016F\216 \207", "d'\172U\188"),
                                    [u7("\142w\183\1486\163l", "S\205\024\217\224")] = "Deliveries: 0/95\nStatus: OFF",
                                })
                                n9 = 1
                            end
                        end
                        n8 = 2
                    end
                    if n8 == 2 then
                        u43 = u41:CreateToggle({
                            [u7("\200\196\1928", "]\134\165\173")] = u7("\141\198\224\240\014\142\147U\254\214\228\238\019\248\151L\135", "\030\222\146\161\162Z\174\210"),
                            [u7("\198[b\024\224@d<\228Be\015", "j\133.\016")] = false,
                            [u7("~,r\251", " 8@\019\156:")] = u7("~\205\233_L\247\146C\252\234Q]\254\133|\196\228Q", "\224:\168\1336:\146"),
                            [u7("zWG\241w\135\132\000", "k96+\157\021\230\231")] = function(p4)
                                if p4 then
                                    if not u33 then
                                        startLoop()
                                    end
                                elseif u33 then
                                    stopLoop()
                                end
                            end,
                        })
                        pcall(function()
                            game:GetService(u7("\233\142\001\249\176\223\206\207\142\021\198\173\211\221\218\140\020", "\175\187\235q\149\217\188")):WaitForChild(u7("\014\170\140C\247|k", "\024\\\207\225,\131\025")):WaitForChild(u7("y\214\169Y\030n_\224\172M\009ia\220\186\127\030nX\218\183B", "\029+\179\216,{")):FireServer(u7("\153\220,E\171\2202U", ",ݹ@"), u7("\011\232Jor\005", "\019a\135(?"))
                        end)
                        n8 = 3
                    end
                    if n8 == 0 then
                        local n10 = 0
                        while n10 ~= 1 do
                            if n10 == 0 then
                                u39 = loadstring(game:HttpGet(u7("\166H'+<k\225\019 2=8\187O}6*?\187\019!:67\167Y??", "Q\206<S[O")))()
                                u40 = u39:CreateWindow({
                                    [u7("`\170\221w", "\196.\203\176\018O\163-")] = u7("\153\009\127\004d\243\250\186", "\143\216B\030~D\155"),
                                    [u7("\134\199\012\207\204\173\208\213\163\220\001\206", "\129\202\168m\171\165\195\183")] = u7("\003s6\194\158\028\243 ", "\134B8W\184\190t"),
                                    [u7("\016>\008\191\016\229&\006)3\029\178\013\231$", "U\\Qi\219y\139A")] = u7("\240\178T@<\221\228\243q\008f", "\191\157\2110%\028"),
                                    [u7("\252\016\250\0263\216\010\230\029.\214\016\250/;\201\022\250\027", "Z\191\127\148|")] = {
                                        [u7("]\137/\021t\130*", "w\024\231N")] = false,
                                    },
                                    [u7("\166$\182I\211R\021", "q\226M\197*\188 ")] = {
                                        [u7("\031\024\245\1836\019\240", "\213Zv\148")] = false,
                                        [u7("r \162_Y^", "-;N\2126")] = u7("\024B\151\155\149t\226\191\020_\144\136\137<\169\190\023Q\204\187\183+\175\247;`\186\174", "\144p6\227\235\230N\205"),
                                        [u7("\129-\002\249\221Y\182:%\243\217U\160", ";\211Ho\156\176")] = true,
                                    },
                                    [u7("e\130\250\030W\148\247(C", "M.\231\131")] = false,
                                })
                                n10 = 1
                            end
                        end
                        n8 = 1
                    end
                until n8 == 3
                updateGUI()
            end
            updateGUI = function(p5)
                local n11 = 0
                local v64 = nil
                local v65 = nil
                while n11 ~= 1 do
                    if n11 == 0 then
                        v64 = n6
                        v65 = p5 or (u33 and u7("b\143\239\149y\148\230", "\2190\218\161") or u7("\203WZ", "\128\132\017\028)\187/"))
                        n11 = 1
                    end
                end
                if u42 then
                    u42:Set({
                        [u7("\142]\162L\191", " \2184\214")] = u7("}\0030\188\226\240\003\026}\0030\188\228\163", ":.wQ\200\145\208%"),
                        [u7("\008\131>\184\172\179\"", "VK\236P\204\201\221")] = u7("VD{\140\232\142`Hr\150\164\203", "\235\018!\023\229\158") .. v64 .. "/95\nStatus: " .. v65,
                    })
                end
            end
            local function u45()
                if u30 then
                    while 0 ~= 0 do
                    end
                    u30:Destroy()
                    u30 = nil
                end
            end
            local function u46(p6, p7)
                local n12 = 0
                local n13 = nil
                local v70 = nil
                while n12 ~= 1 do
                    if n12 == 0 then
                        n13 = 0
                        v70 = nil
                        n12 = 1
                    end
                end
                local v71 = nil
                while n13 ~= 4 do
                    if n13 == 1 then
                        v71 = Instance.new(u7("13\020.", "=aRfZ"))
                        v71.Size = vector3
                        v71.CFrame = CFrame.new(p6 - Vector3.new(0, 3 + vector3.Y / 2, 0))
                        n13 = 2
                    end
                    if n13 == 3 then
                        local n14 = 0
                        while n14 ~= 1 do
                            if n14 == 0 then
                                v71.Parent = workspace
                                u30 = v71
                                n14 = 1
                            end
                        end
                        task.wait()
                        n13 = 4
                    end
                    if n13 == 0 then
                        local n15 = 0
                        repeat
                            if n15 == 0 then
                                v70 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(u7("\132;\166J\201X\023\013\158!\164_\247V\012\029", "i\204N\203+\1677~"))
                                if not v70 then
                                    return
                                end
                                n15 = 1
                                continue
                            end
                        until n15 == 1
                        u45()
                        n13 = 1
                    end
                    if n13 == 2 then
                        local n16 = 0
                        while n16 ~= 1 do
                            if n16 == 0 then
                                v71.Anchored = true
                                v71.CanCollide = true
                                n16 = 1
                            end
                        end
                        v71.Transparency = 1
                        n13 = 3
                    end
                end
                v70.CFrame = CFrame.new(p6 + Vector3.new(0, 4, 0))
                if p7 then
                    updateGUI(p7)
                end
            end
            local connection = nil
            local function u48()
                if connection then
                    return
                end
                connection = u20.Heartbeat:Connect(function()
                    if u33 then
                        while 0 ~= 0 do
                        end
                        local v107 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(u7("\141\191.\031\029\011\206U\151\165,\010#\005\213E", "1\197\202C~sd\167"))
                        if v107 then
                            v107.CFrame = v107.CFrame * CFrame.new(0, 0, 0.01)
                        end
                    end
                end)
            end
            local function u49()
                if connection then
                    while 0 ~= 0 do
                    end
                    connection:Disconnect()
                    connection = nil
                end
            end
            local function u50()
                local n17 = nil
                repeat
                    if n17 == 0 then
                        n17 = 1
                    end
                until n17 == 1
                while true do
                    if n17 == 2 then
                        local n18 = 0
                        while n18 ~= 1 do
                            if n18 == 0 then
                                task.wait(n4)
                                updateGUI(u7("\004^\211%\137XYw\029\159\030\129_Jw\010\140:\206\024\016", ">W;\191I\2246"))
                                n18 = 1
                            end
                        end
                        n17 = 3
                    end
                    if n17 == 1 then
                        local n19 = 0
                        while n19 ~= 1 do
                            if n19 == 0 then
                                updateGUI(u7("\213\007\249\220\247B\188\137\208\003\243\221\167S\169\218\169L\180", "\169\135b\154"))
                                if Position then
                                    u46(Position)
                                end
                                n19 = 1
                            end
                        end
                        n17 = 2
                    end
                    if n17 == 0 then
                        local n20 = 0
                        while n20 ~= 1 do
                            if n20 == 0 then
                                local v79 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(u7("\227b)U\243<\193\207E+[\233\003\201\217c", "\168\171\023D4\157S"))
                                if v79 then
                                    Position = v79.Position
                                end
                                n20 = 1
                            end
                        end
                        n17 = 1
                    end
                    if n17 == 4 then
                        break
                    end
                    if n17 == 3 then
                        local n21 = 0
                        while n21 ~= 1 do
                            if n21 == 0 then
                                local v81 = workspace:FindFirstChild(u21, true)
                                if v81 then
                                    local n22 = 0
                                    local v83 = nil
                                    while n22 ~= 1 do
                                        if n22 == 0 then
                                            local n23 = 0
                                            repeat
                                                if n23 == 0 then
                                                    local v85 = v81.CFrame or CFrame.new(v81.Position)
                                                    v83 = v85.Position + v85.LookVector * -28 + Vector3.new(0, 5, 0)
                                                    n23 = 1
                                                end
                                            until n23 == 1
                                            n22 = 1
                                        end
                                    end
                                    u46(v83)
                                end
                                n21 = 1
                            end
                        end
                        n17 = 4
                    end
                end
                task.wait(n5)
                updateGUI(u7("\198t\230\184($\137\243?\187\227", "\231\148\017\149\205EM"))
            end
            local function u51()
                local n24 = 0
                local v87 = nil
                local v88 = nil
                local v89 = nil
                local v90 = nil
                while true do
                    local n25 = 0
                    while n25 ~= 2 do
                        if n25 == 0 then
                            if n24 == 0 then
                                local n26 = 0
                                repeat
                                    if n26 == 0 then
                                        v87 = workspace:FindFirstChild(u21, true)
                                        if not v87 then
                                            return false
                                        end
                                        n26 = 1
                                        continue
                                    end
                                until n26 == 1
                                v88 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(u7("\168\178\202\250Y\240\137\163\245\244X\235\176\166\213\239", "\159\224\199\167\1557"))
                                n24 = 1
                            end
                            if n24 == 2 then
                                local n27 = 0
                                while n27 ~= 1 do
                                    if n27 == 0 then
                                        local v94 = v90.Position + v90.LookVector * v89 + Vector3.new(0, 3, 0)
                                        u46(v94, u7("\211\2460\219\225\246.\219\249\244r\156\185", "\178\151\147\\"))
                                        n27 = 1
                                    end
                                end
                                u35 = not u35
                                n24 = 3
                            end
                            n25 = 1
                        end
                        if n25 ~= 1 then
                            continue
                        end
                        if n24 == 4 then
                            return true
                        end
                        if n24 == 3 then
                            local n28 = 0
                            repeat
                                if n28 == 0 then
                                    n7 += 1
                                    if n7 % 3 == 0 then
                                        while 0 ~= 0 do
                                        end
                                        n6 += 1
                                        updateGUI()
                                    end
                                    n28 = 1
                                end
                            until n28 == 1
                            if n6 >= n3 and n7 % 3 == 0 then
                                while 0 ~= 0 do
                                end
                                while 0 ~= 0 do
                                end
                                task.wait(2)
                                u50()
                            else
                                task.wait(0.3)
                            end
                            n24 = 4
                        end
                        n25 = 2
                    end
                    if n24 == 1 then
                        local n29 = 0
                        while n29 ~= 1 do
                            if n29 ~= 0 then
                                continue
                            end
                            if not v88 then
                                return false
                            end
                            v89 = u35 and n1 or n2
                            n29 = 1
                        end
                        v90 = v87.CFrame or CFrame.new(v87.Position)
                        n24 = 2
                    end
                end
            end
            startLoop = function()
                while 0 ~= 0 do
                end
                local n30 = 0
                repeat
                    if n30 == 0 then
                        local n31 = 0
                        repeat
                            if n31 == 0 then
                                u33 = true
                                u48()
                                n31 = 1
                            end
                        until n31 == 1
                        n30 = 1
                    end
                until n30 == 1
                updateGUI(u7("\170\252_&Rau\136\248\002|\\", "\026\236\157,Rr,"))
                thread = task.spawn(function()
                    repeat
                        if not u33 then
                            return
                        end
                        while 0 ~= 0 do
                        end
                    until not u51()
                    local n32 = 0
                    repeat
                        while 0 ~= 0 do
                        end
                        if n32 == 0 then
                            local n33 = 0
                            while n33 ~= 1 do
                                if n33 == 0 then
                                    u33 = false
                                    updateGUI(u7("\011\000\246s\005\028\149u\005\026\149}\005\027\251\127", ";JN\181"))
                                    n33 = 1
                                end
                            end
                            n32 = 1
                        end
                    until n32 == 1
                    task.delay(3, function()
                        while 0 ~= 0 do
                        end
                        if u43 then
                            u43:Set(false)
                        end
                        updateGUI()
                    end)
                end)
            end
            stopLoop = function()
                while 0 ~= 0 do
                end
                local n34 = 0
                repeat
                    if n34 == 0 then
                        local n35 = 0
                        while n35 ~= 1 do
                            if n35 == 0 then
                                u33 = false
                                if thread then
                                    task.cancel(thread)
                                end
                                n35 = 1
                            end
                        end
                        n34 = 1
                    end
                    if n34 == 1 then
                        u49()
                        updateGUI()
                        n34 = 2
                    end
                until n34 == 2
                u45()
            end
            local u52 = Instance.new(u7("\022\210H_\182+\246OS", "\211E\177::"))
            u52.Name = u7("\156\224`\198\240\216\163\224t", "\171\215\133\025\149\137")
            u52.ResetOnSpawn = false
            u52.Parent = v29
            local v53 = Instance.new(u7("\199\2183\247\234", "\"\129\168R\154\143P\156"))
            v53.Size = UDim2.new(0, 300, 0, 220)
            v53.Position = UDim2.new(0.5, -150, 0.5, -110)
            v53.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
            v53.Parent = u52
            Instance.new(u7("\176\155\016\004Z@\140\151", "\233\229\210Sk(."), v53).CornerRadius = UDim.new(0, 16)
            Instance.new(u7("\244k\001\194\023\206I7", "e\161\"R\182"), v53).Color = Color3.fromRGB(255, 180, 40)
            local v54 = Instance.new(u7("\220\008A\234\247\227\128+\228", "N\136m9\158\187\130\226"))
            v54.Size = UDim2.new(1, 0, 0, 40)
            v54.BackgroundTransparency = 1
            v54.Text = u7("\031\020\185\213\027\019\208\199\027\013\192\177\021\026\192", "\145^_\153")
            v54.Font = Enum.Font.GothamBlack
            v54.TextSize = 18
            v54.TextColor3 = Color3.fromRGB(255, 215, 0)
            v54.Parent = v53
            local u55 = Instance.new(u7("\201\200\012\193l\162\233\217\027\219", "\215\157\173t\181."))
            u55.Size = UDim2.new(0.8, 0, 0, 30)
            u55.Position = UDim2.new(0.1, 0, 0, 50)
            u55.Text = u7("\022\155\187\219\255\007\244\167\215\154\025\157\174\220\154\025\155\164\198\246\020\150", "\186U\212\235\146")
            u55.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
            u55.TextColor3 = Color3.fromRGB(255, 255, 255)
            u55.Font = Enum.Font.GothamBold
            u55.TextSize = 12
            u55.Parent = v53
            Instance.new(u7("\247\1685\241+\224]\208", "8\162\225v\158Y\142"), u55).CornerRadius = UDim.new(0, 6)
            u55.MouseButton1Click:Connect(function()
                if setclipboard then
                    local n36 = 0
                    repeat
                        if n36 == 0 then
                            setclipboard(u37)
                            u55.Text = "LIEN COPIÉ ! ✓"
                            n36 = 1
                        end
                    until n36 == 1
                    task.wait(2)
                    u55.Text = u7("\127*\240\134\007\152p*\239\155\014\249~E\236\134\012\243", "\184<e\160\207B")
                else
                    u55.Text = u7("\020\144n\185$\144&\252\024\143l\179\"\145u\190=\135<\168>\194\127\179!\139y", "\220Q\226\028")
                end
            end)
            local u56 = Instance.new(u7("'\208\154\239\200\200\011", "\167s\181\226\155\138"))
            u56.Size = UDim2.new(0.8, 0, 0, 40)
            u56.Position = UDim2.new(0.1, 0, 0, 100)
            u56.PlaceholderText = u7("\231,\243Yi1\210\234'\167W~h\134\234'\245Y5?\136", "\166\130B\135<\027\017")
            u56.Text = ""
            u56.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
            u56.TextColor3 = Color3.fromRGB(255, 255, 255)
            u56.Font = Enum.Font.Gotham
            u56.TextSize = 14
            u56.Parent = v53
            Instance.new(u7("qc\237z\"JO\220", "P$*\174\021"), u56).CornerRadius = UDim.new(0, 6)
            local u57 = Instance.new(u7("z\021/nl\005#nA\030", "\026.pW"))
            u57.Size = UDim2.new(0.6, 0, 0, 35)
            u57.Position = UDim2.new(0.2, 0, 0, 160)
            u57.Text = u7("\143\002\135]\155\154w", "\212\217C\203\020\223\223%")
            u57.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
            u57.TextColor3 = Color3.fromRGB(10, 10, 15)
            u57.Font = Enum.Font.GothamBold
            u57.Parent = v53
            Instance.new(u7("\143\164\139\221\168\131\173\192", "\178\218\237\200"), u57).CornerRadius = UDim.new(0, 10)
            u57.MouseButton1Click:Connect(function()
                if u56.Text == u38 then
                    while 0 ~= 0 do
                    end
                    local n37 = 0
                    while n37 ~= 2 do
                        if n37 == 0 then
                            local n38 = 0
                            while n38 ~= 1 do
                                if n38 == 0 then
                                    u57.Text = "KEY CORRECT ✓"
                                    u57.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
                                    n38 = 1
                                end
                            end
                            n37 = 1
                        end
                        if n37 == 1 then
                            local n39 = 0
                            while n39 ~= 1 do
                                if n39 == 0 then
                                    task.wait(1)
                                    u52:Destroy()
                                    n39 = 1
                                end
                            end
                            n37 = 2
                        end
                    end
                    u44()
                else
                    local n40 = 0
                    repeat
                        if n40 == 0 then
                            u57.Text = u7("\157\144\223\144\159\155\197\255\132\135\195\243\130", "\176\214\213\134")
                            u57.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
                            n40 = 1
                        end
                        if n40 == 1 then
                            task.wait(1.5)
                            u57.Text = u7("\194\140\154\253\140sk", "9\148\205\214\180\2006")
                            n40 = 2
                        end
                    until n40 == 2
                    u57.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
                end
            end)
        else
            local _ = p3[1]
        end
    end
    if _tonumber(match(match(({
        _pcall(v17, nil),
    })[2], ":%d+:"), "%d+")) == 1 then
        return v17({})
    end
    return u11()
end
return u11()
