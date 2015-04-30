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

    # 無変換->Alt
    keymap.replaceKey( "(29)", "Alt" )

    # 変換->Shift
    # keymap.replaceKey( "(28)", "Shift" )

    # ひらがな/カタカナ -> Shift
    # keymap.replaceKey( "(242)", "Shift" )

    # SandS (Space and Shift)
    keymap_global = keymap.defineWindowKeymap()
    keymap.replaceKey("Space", "RShift")
    keymap_global["O-RShift"] = "Space"
    # keymap_global["C-RShift"] = "C-Space"

    # ユーザモディファイアキーの定義
    keymap.defineModifier( 28, "User0" ) # 変換
    
    keymap_global["User0-s"] = keymap.command_MouseMove(-10,0)
    keymap_global["User0-f"] = keymap.command_MouseMove(10,0)
    keymap_global["User0-e"] = keymap.command_MouseMove(0,-10)
    keymap_global["User0-d"] = keymap.command_MouseMove(0,10)

    keymap_global[ "D-User0-j" ] = keymap.command_MouseButtonDown('left')
    keymap_global[ "U-User0-j" ] = keymap.command_MouseButtonUp('left')    
    keymap_global[ "D-User0-o" ] = keymap.command_MouseButtonDown('right')
    keymap_global[ "U-User0-o" ] = keymap.command_MouseButtonUp('right')

    keymap_global[ "User0-i" ] = keymap.command_MouseWheel(1.0)
    keymap_global[ "User0-k" ] = keymap.command_MouseWheel(-1.0)
