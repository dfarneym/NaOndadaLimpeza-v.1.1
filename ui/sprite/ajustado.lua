--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:ef9de94071e0e95a70b532348a93d46c:c5b50ad9ba810f65df0c3c7041b151f7:ea1a8eabbdf2ba1f5851bf49a120ac05$
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
            x=1,
            y=1,
            width=218,
            height=325,

        },
        {
            -- 2
            x=221,
            y=1,
            width=230,
            height=324,

        },
        {
            -- 3
            x=453,
            y=1,
            width=230,
            height=324,

        },
        {
            -- 4
            x=685,
            y=1,
            width=230,
            height=324,

        },
    },

    sheetContentWidth = 916,
    sheetContentHeight = 327
}

SheetInfo.frameIndex =
{

    ["1"] = 1,
    ["2"] = 2,
    ["3"] = 3,
    ["4"] = 4,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
