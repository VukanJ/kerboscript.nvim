" kerboscript.nvim: Syntax highlighting for kerboscript
" Copyright (C) 2022, VukanJ
" 
" This program is free software; you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation; either version 2 of the License, or
" (at your option) any later version.
" 
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
" 
" You should have received a copy of the GNU General Public License along
" with this program; if not, write to the Free Software Foundation, Inc.,
" 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

if !exists("main_syntax")
	if exists("b:current_syntax")
	    finish
	endif
	let main_syntax = "kerboscript"
endif

syntax case ignore

" Booleans
" syn keyword ksBoolean true false on off
" hi def link ksBoolean Boolean
" 
" " Comments
" syn match   ksComment "//.*" contains=ksTODO
" hi def link ksComment Comment
" 
" " Conditionals
" syn keyword ksConditional if else and or not
" hi def link ksConditional Conditional
" 
" " Repeats and Triggers and jumps
" syn keyword ksRepeat for until from
" hi def link ksRepeat Repeat
" 
" " Constants
" syn keyword ksConstant constant pi e g g0 c AtmToKPa KPaToAtm DegToRad RadToDeg Avogadro Boltzmann Idealgas
" hi def link ksConstant Constant
" 
" " Floats
" syn match ksFloat "\.\d\+\>"
" syn match ksFloat "\<\d\+\.\d*\>"
" hi def link ksFloat Float
" 
" " Functions
" syn keyword ksFunction add remove stage clearscreen log copy rename delete edit run runpath runoncepath compile reboot shutdown batch deploy print
" hi def link ksFunction Function
" 
" " Keywords
" syn keyword ksKeyword set unset defined to is lock unlock declare parameter toggle declare function choose return lazyglobal
" hi def link ksKeyword Keyword
" 
" " Numbers
" syn match   ksNumber "\<\d\+\>"
" hi def link ksNumber Number
" 
" " Operators
" syn keyword ksOperator abs ceiling floor ln log10 mod min max random randomseed round sqrt char unchar sin cos tan arcsin arccos arctan arctan2
" hi def link ksOperator Operator
" 
" " Structure attributes
" syn keyword ksLabel ":tostring" ":hassuffix" ":suffixnames" ":isserializable" ":typename" ":istype" ":inheritance" ":mag"
" hi def link ksLabel Label
" 
" " Statements
" syn keyword ksStatement wait break preserve
" hi def link ksStatement Statement
" 
" " Structures
" syn keyword ksStructure list lexicon ship body kuniverse
" hi def link ksStructure Structure
" 
" " StorageClasses
" syn keyword ksStorageClass global local
" hi def link ksStorageClass StorageClass
" 
" " Strings
" syn region  ksString start=+"+ end=+"+
" hi def link ksString String
" 
" " TODO
" syn keyword ksTodo contained TODO
" hi def link ksTodo Todo
" 
" " Types
" syn keyword ksType function v r vector direction la when thentlng parameter facing up prograde retrograde steering pitch yaw roll forevector vector topvector upvector starvector rightvector
" hi def link ksType Type
" 
" let b:current_syntax = "kerboscript"
" Footer
