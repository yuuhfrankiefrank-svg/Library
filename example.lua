--[[
  idk use the script example i guess
]]

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/yuuhfrankiefrank-svg/Library/main/Library.lua"))()

--[[
  This UI uses a column-based system for sections.
  Each column defines how many sections fit side-by-side.
  Tabs can have multiple sub-tabs, and each tab can have columns and sections.
]]

local window = library:window({
    name = "nebula",
    suffix = "tech",
    gameInfo = "Milenium for Counter-Strike: Global Offensive"
})

window:seperator({ name = "General" })

local enemies, teammates, self_section = window:tab({
    name = "Example",
    tabs = { "Enemies", "Teammates", "Self" }
})

for _, tab in { enemies, teammates, self_section } do
    local column = tab:column({})
    local section = column:section({
        name = "General",
        default = true,
        toggle = false
    })

    section:label({
        name = "This is a title!",
        info = "Hello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawd\nextra info here ig"
    })

    local page = tab:sub_tab({
        order = -10000,
        size = 2
    })

    for i = 1, 2 do
        local col = page:column({})
        local sec = col:section({
            name = "General",
            default = true
        })

        sec:toggle({
            name = "Enable ESP",
            seperator = true,
            callback = function(bool) print(bool) end
        })

        sec:toggle({
            name = "Through walls",
            seperator = true
        })

        local toggle = sec:toggle({
            name = "Shared ESP",
            seperator = true
        }):colorpicker({})

        local nameToggle = sec:toggle({
            name = "Name",
            seperator = true
        })
        nameToggle:colorpicker({})

        local sub_section = nameToggle:settings({})
        sub_section:toggle({
            name = "Show Display Names",
            seperator = true
        })
        sub_section:dropdown({
            name = "Font Name",
            items = { "ProggyTiny", "MonoSpace", "Tahoma" },
            default = "MonoSpace",
            seperator = true
        })
        sub_section:colorpicker({
            name = "Another Colorpicker why not",
            seperator = true
        })
        sub_section:keybind({
            name = "Keybind",
            callback = function(bool) print(bool) end,
            info = "Hello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawd\nextra info here ig"
        })

        sec:toggle({
            name = "Weapon",
            seperator = true,
            info = "Hello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawd\nextra info here ig"
        }):colorpicker({})

        sec:dropdown({
            name = "Flags",
            items = { "Scoped", "Flashed", "Knocked", "Touched" },
            default = { "Scoped", "Flashed", "Knocked" },
            multi = true,
            seperator = true
        })

        sec:toggle({
            name = "Other Shit",
            seperator = false
        }):colorpicker({})
    end
end

local enemies2, teammates2, self_section2 = window:tab({
    name = "Example",
    tabs = { "Enemies", "Teammates", "Self" }
})

for _, tab in { enemies2, teammates2, self_section2 } do
    for i = 1, 2 do
        local column = tab:column({})
        local section = column:section({
            name = "General",
            default = true
        })

        section:toggle({
            name = "Enable ESP",
            seperator = true,
            callback = function(bool) print(bool) end
        })

        section:toggle({
            name = "Through walls",
            seperator = true
        })

        local toggle = section:toggle({
            name = "Shared ESP",
            seperator = true
        }):colorpicker({})

        local nameToggle = section:toggle({
            name = "Name",
            seperator = true
        })
        nameToggle:colorpicker({})

        local sub_section = nameToggle:settings({})
        sub_section:toggle({
            name = "Show Display Names",
            seperator = true
        })
        sub_section:dropdown({
            name = "Font Name",
            items = { "ProggyTiny", "MonoSpace", "Tahoma" },
            default = "MonoSpace",
            seperator = true
        })
        sub_section:colorpicker({
            name = "Another Colorpicker why not",
            seperator = true
        })
        sub_section:keybind({
            name = "Keybind",
            callback = function(bool) print(bool) end,
            info = "Hello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawd\nextra info here ig"
        })

        section:toggle({
            name = "Weapon",
            seperator = true,
            info = "Hello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawd\nextra info here ig"
        }):colorpicker({})

        section:dropdown({
            name = "Flags",
            items = { "Scoped", "Flashed", "Knocked", "Touched" },
            default = { "Scoped", "Flashed", "Knocked" },
            multi = true,
            seperator = true
        })

        section:toggle({
            name = "Other Shit",
            seperator = false
        }):colorpicker({})
    end
end

local enemies3, teammates3, self_section3 = window:tab({
    name = "Example",
    tabs = { "Enemies", "Teammates", "Self" }
})

for _, tab in { enemies3, teammates3, self_section3 } do
    local column = tab:column({})
    local section = column:section({
        name = "General",
        default = true
    })

    section:toggle({
        name = "Enable ESP",
        seperator = true,
        callback = function(bool) print(bool) end
    })

    section:toggle({
        name = "Through walls",
        seperator = true
    })

    local toggle = section:toggle({
        name = "Shared ESP",
        seperator = true
    }):colorpicker({})

    local nameToggle = section:toggle({
        name = "Name",
        seperator = true
    })
    nameToggle:colorpicker({})

    local sub_section = nameToggle:settings({})
    sub_section:toggle({
        name = "Show Display Names",
        seperator = true
    })
    sub_section:dropdown({
        name = "Font Name",
        items = { "ProggyTiny", "MonoSpace", "Tahoma" },
        default = "MonoSpace",
        seperator = true
    })
    sub_section:colorpicker({
        name = "Another Colorpicker why not",
        seperator = true
    })
    sub_section:keybind({
        name = "Keybind",
        callback = function(bool) print(bool) end,
        info = "Hello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawd\nextra info here ig"
    })

    section:toggle({
        name = "Weapon",
        seperator = true,
        info = "Hello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawd\nextra info here ig"
    }):colorpicker({})

    section:dropdown({
        name = "Flags",
        items = { "Scoped", "Flashed", "Knocked", "Touched" },
        default = { "Scoped", "Flashed", "Knocked" },
        multi = true,
        seperator = true
    })

    section:toggle({
        name = "Other Shit",
        seperator = false
    }):colorpicker({})
end

local enemies4, teammates4, self_section4 = window:tab({
    name = "Example",
    tabs = { "Enemies", "Teammates", "Self" }
})

for _, tab in { enemies4, teammates4, self_section4 } do
    local column = tab:column({})

    for i = 1, 2 do
        local section = column:section({
            name = "General",
            default = true,
            size = 0.5
        })

        section:toggle({
            name = "Enable ESP",
            seperator = true,
            callback = function(bool) print(bool) end
        })

        section:toggle({
            name = "Through walls",
            seperator = true
        })

        local toggle = section:toggle({
            name = "Shared ESP",
            seperator = true
        }):colorpicker({})

        local nameToggle = section:toggle({
            name = "Name",
            seperator = true
        })
        nameToggle:colorpicker({})

        local sub_section = nameToggle:settings({})
        sub_section:toggle({
            name = "Show Display Names",
            seperator = true
        })
        sub_section:dropdown({
            name = "Font Name",
            items = { "ProggyTiny", "MonoSpace", "Tahoma" },
            default = "MonoSpace",
            seperator = true
        })
        sub_section:colorpicker({
            name = "Another Colorpicker why not",
            seperator = true
        })
        sub_section:keybind({
            name = "Keybind",
            callback = function(bool) print(bool) end,
            info = "Hello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawd\nextra info here ig"
        })

        section:toggle({
            name = "Weapon",
            seperator = true,
            info = "Hello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawdHello there this is a paragraph.. adawdawdawd\nextra info here ig"
        }):colorpicker({})

        section:dropdown({
            name = "Flags",
            items = { "Scoped", "Flashed", "Knocked", "Touched" },
            default = { "Scoped", "Flashed", "Knocked" },
            multi = true,
            seperator = true
        })

        section:toggle({
            name = "Other Shit",
            seperator = false
        }):colorpicker({})
    end
end

library:init_config(window)
