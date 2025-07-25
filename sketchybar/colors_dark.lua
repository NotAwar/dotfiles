return {
    yellow = 0xfff6c177,         -- Gold
    green = 0xff9ccfd8,          -- Foam
    red = 0xffeb6f92,            -- Love
    blue = 0xff31748f,           -- Pine
    darkblue = 0xff403d52,       -- Highlight Med
    purple = 0xffc4a7e7,         -- Iris
    monotone = 0xff6e6a86,       -- Muted
    orange = 0xffebbcba,         -- Rose
    quicksilver = 0xff908caa,    -- Subtle
    pink = 0xffeb6f92,           -- Love (used again)
    magenta = 0xffc4a7e7,        -- Iris

    primary = 0xffe0def4,        -- Text
    secondary = 0xff191724,      -- Base

    black = 0xff000000,
    white = 0xffe0def4,          -- Text
    grey = 0xff6e6a86,           -- Muted

    transparent = 0x00000000,
    semi_transparent = 0x40ffffff,
    border_transparent = 0x33ffffff,

    icon = {
        grey = 0xff908caa,       -- Subtle
        primary = 0xff6e6a86,    -- Muted
        secondary = 0xff26233a,  -- Overlay
    },
    bar = {
        bg = 0xff1f1d2e,                 -- Surface
        bg2 = 0xff21202e,                -- Highlight Low
        bg_transparent = 0x991f1d2e,     -- Surface w/ transparency
        accent = 0xff524f67,             -- Highlight High
        active = 0xff9ccfd8,             -- Foam
        selected = 0xffeb6f92,           -- Love
        transparent = 0xe5191724,        -- Base w/ transparency
        border = 0xff524f67,             -- Highlight High
        secondary = 0xff403d52,          -- Highlight Med
        white_transparent = 0x0de0def4,  -- Text w/ transparency
        inactive = 0xff26233a,           -- Overlay
        icons = 0xff31748f,              -- Pine
        foreground = 0xff908caa,         -- Subtle
        foreground_hover = 0xffe0def4,   -- Text
    },
    media = {
        primary = 0xcc1f1d2e,            -- Surface
        secondary = 0xffe0def4,          -- Text
    },
    popup = {
        text = 0xffe0def4,              -- Text
        bg = 0x991f1d2e,                -- Surface
        bg_alt = 0xff403d52,            -- Highlight Med
        icons = 0xff9ccfd8,             -- Foam
        border = 0xff524f67,            -- Highlight High
        buttons = 0xffc4a7e7,           -- Iris
        blur_radius = 60,
        with_alpha = function(color, alpha)
            if alpha > 1.0 or alpha < 0.0 then return color end
            return (color and 0x001e1e1e) or (math.floor(alpha * 255.0) < 24)
        end
    }
}

