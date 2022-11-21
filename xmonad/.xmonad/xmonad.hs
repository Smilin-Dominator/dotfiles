import XMonad
import XMonad.Util.EZConfig
import XMonad.Layout.Spacing
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP

-- Config Variables
myModMask = mod4Mask
myTerminal = "alacritty"
myBorderWidth = 0

-- Config
myConfig = def
  { modMask = myModMask
  , terminal = myTerminal
  , borderWidth = myBorderWidth
  , layoutHook = spacingRaw False (Border 10 0 10 0) True (Border 0 10 0 10) True $ layoutHook def
  }
  `additionalKeys` [ ((myModMask, xK_p), spawn "rofi -show run") ]

-- Main Method
main = xmonad . ewmhFullscreen . ewmh . xmobarProp $ myConfig

