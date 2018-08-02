import sys
import os
import datetime

import pyauto
from keyhac import *

def configure(keymap):

    # --------------------------------------------------------------------
    # config.py編集用のテキストエディタの設定

    # プログラムのファイルパスを設定 (単純な使用方法)
    if 1:
        keymap.editor = "emacsclientw"

    # 呼び出し可能オブジェクトを設定 (高度な使用方法)
    if 0:
        def editor(path):
            shellExecute( None, "notepad.exe", '"%s"'% path, "" )
        keymap.editor = editor

    # --------------------------------------------------------------------
    # 表示のカスタマイズ

    # フォントの設定
    keymap.setFont( "Migu 1M", 12 )

    # テーマの設定
    keymap.setTheme("black")

    # --------------------------------------------------------------------

    # 全角/半角->Alt
    # keymap.replaceKey( "(243)", "Alt" )
    # 半角/全角->Alt
    # keymap.replaceKey( "(244)", "Alt" )

    # 変換->Shift
    # keymap.replaceKey( "(28)", "Shift" )

    # ひらがな/カタカナ -> Shift
    # keymap.replaceKey( "(242)", "Shift" )

    # SandS (Space and Shift)
    keymap_global = keymap.defineWindowKeymap()
    keymap.replaceKey("Space", "RShift")
    keymap_global["O-RShift"] = "Space"
    # keymap_global["C-RShift"] = "C-Space"

    # キーボードマウス
    keymap.defineModifier( 28, "User0" ) # 変換
    
    keymap_global["User0-s"] = keymap.MouseMoveCommand(-10,0)
    keymap_global["User0-f"] = keymap.MouseMoveCommand(10,0)
    keymap_global["User0-e"] = keymap.MouseMoveCommand(0,-10)
    keymap_global["User0-d"] = keymap.MouseMoveCommand(0,10)

    keymap_global[ "D-User0-j" ] = keymap.MouseButtonDownCommand('left')
    keymap_global[ "U-User0-j" ] = keymap.MouseButtonUpCommand('left')    
    keymap_global[ "D-User0-o" ] = keymap.MouseButtonDownCommand('right')
    keymap_global[ "U-User0-o" ] = keymap.MouseButtonUpCommand('right')

    keymap_global[ "User0-i" ] = keymap.MouseWheelCommand(1.0)
    keymap_global[ "User0-k" ] = keymap.MouseWheelCommand(-1.0)


    # キーボードカーソル
    keymap.defineModifier( 29, "User1" ) # 無変換

    keymap_global["User1-i"] = "Up"
    keymap_global["User1-j"] = "Left"
    keymap_global["User1-l"] = "Right"
    keymap_global["User1-k"] = "Down"

    keymap_global["User1-S-i"] = "S-Up"
    keymap_global["User1-S-j"] = "S-Left"
    keymap_global["User1-S-l"] = "S-Right"
    keymap_global["User1-S-k"] = "S-Down"

    keymap_global["User1-C-i"] = "C-Up"
    keymap_global["User1-C-j"] = "C-Left"
    keymap_global["User1-C-l"] = "C-Right"
    keymap_global["User1-C-k"] = "C-Down"

    keymap_global[ "User1-User0-i" ] = keymap.MouseWheelCommand(1.0)
    keymap_global[ "User1-User0-k" ] = keymap.MouseWheelCommand(-1.0)

    keymap_global["User1-Tab"] = "Alt-Tab"
    
