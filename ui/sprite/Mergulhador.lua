--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:88fa5340401d39f1cf69554cc5034f9a:bbe0621de21ce4703303a8e0847e1298:dc9560f742fceadf512ba3b14ffb1bc8$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- 1
            x=7,
            y=7,
            width=400,
            height=158,

        },
        {
            -- 2
            x=421,
            y=7,
            width=400,
            height=158,

        },
        {
            -- 3
            x=835,
            y=7,
            width=400,
            height=158,

        },
    },

    sheetContentWidth = 1242,
    sheetContentHeight = 172
}

SheetInfo.frameIndex =
{

    ["1"] = 1,
    ["2"] = 2,
    ["3"] = 3,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
