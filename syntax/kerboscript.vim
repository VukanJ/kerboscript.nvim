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
if exists("b:current_syntax")
    finish
endif

syntax case ignore

syntax match commonOperator "\(+\|=\|<>\|\:\|-\|\^\|\*\|<\|>\|>=\|<=\|\[\|\]\)"
syntax match baseDelimiter ","
syntax match endOfCommand "\."
hi link commonOperator Operator
hi link baseDelimiter Special
hi link endOfCommand Special

" Booleans
syn keyword kerboBoolean true false on off
hi def link kerboBoolean Boolean

" Comments
syn match   kerboComment "//.*" contains=kerboTODO
hi def link kerboComment Comment

" Conditionals
syn keyword kerboConditional if else and or not
hi def link kerboConditional Conditional

" Repeats
syn keyword kerboRepeat for until from step do
hi def link kerboRepeat Repeat

" Constants
syn keyword kerboConstant constant pi e g g0 c AtmToKPa KPaToAtm DegToRad RadToDeg Avogadro Boltzmann Idealgas
hi def link kerboConstant Constant

" Floats
syn match kerboFloat "\.\d\+\>"
syn match kerboFloat "\<\d\+\.\d*\>"
hi def link kerboFloat Float

" Numbers
syn match   kerboNumber "\<\d\+\>"
hi def link kerboNumber Number

" Functions
syn keyword kerboFunction stage clearscreen log rename delete edit run runpath runoncepath compile reboot shutdown batch deploy print
hi def link kerboFunction Function

" Keywords
syn keyword kerboKeyword set unset defined to is in lock unlock declare parameter toggle declare function choose return lazyglobal
hi def link kerboKeyword Keyword

" Operators
syn keyword kerboOperator abs ceiling floor ln log10 mod min max random randomseed round sqrt char unchar sin cos tan arcsin arccos arctan arctan2
hi def link kerboOperator Operator

" Statements
syn keyword kerboStatement wait break preserve
hi def link kerboStatement Statement

" Structures
syn keyword kerboStructure list lexicon range queue stack uniqueset
hi def link kerboStructure Structure

" StorageClasses
syn keyword kerboStorageClass global local
hi def link kerboStorageClass StorageClass

" Strings
syn region  kerboString start=+"+ end=+"+
hi def link kerboString String

" TODO
syn keyword kerboTodo contained TODO
hi def link kerboTodo Todo

" Types
syn keyword kerboType function v r vector direction la when thentlng parameter facing up prograde retrograde steering forevector vector topvector upvector starvector rightvector
hi def link kerboType Type

" """"""""""""""""""""
" Set attributes
" """"""""""""""""""""
" Structure attributes
syn keyword kerboStructure tostring hassuffix suffixnames isserializable typename istype inheritance
hi def link kerboStructure Label

" Part attributes
syn keyword kerboPartAttr name title mass drymass wetmass tag controlfrom stage cid uid rotation position facing bounds resources targetable ship getmodule getmodulebyindex modules allmodules hasmodule parent hasparent decoupler separator decoupledin separatedin hasphysics children symmetrycount removesymmetry symmetrypartner partsnamed partsnamedpattern partstitled partstitledpattern partstagged partstaggedpattern partsdubbed partsdubbedpattern modulesnamed alltaggedparts
hi def link kerboPartAttr Label

" Resource attributes
syn keyword kerboResourceAttr name amount capacity density parts fuelflow maxfuelflow requiredfuelflow massflow maxmassflow ratio
hi def link kerboResourceAttr Label

" Kerbal attributes
syn keyword kerboKerbalAttr name gender experience trait tourist part
hi def link kerboKerbalAttr Label

" Docking attributes
syn keyword kerboDockingAttr acquirerange acquireforce acquiretorque reengageddistance dockedshipname nodeposition nodetype portfacing state undock partner haspartner targetable
hi def link kerboDockingAttr Label

" Engine attributes
syn keyword kerboEngineAttr activate shutdown thrustlimit maxthrust maxthrustat thrust availablethrust availablethrustat possiblethrust possiblethrustat fuelflow maxfuelflow massflow maxmassflow isp ispat vacuumisp visp sealevelisp slisp flameout ignition allowrestart allowshutdown throttlelock multimode modes mode togglemode primarymode autoswitch hasgimbal gimbal ullage fuelstability pressurefed ignitions minthrottle config consumedresources
hi def link kerboEngineAttr Label

" Gimbal attributes
syn keyword kerboGimbalAttr lock pitch yaw roll limit range responsespeed pitchangle yawangle rollangle
hi def link kerboGimbalAttr Label

" Proc attributes
syn keyword kerboProcAttr mode activate deactivate tag volume bootfilename connection
hi def link kerboProcAttr Label

" RCS attributes
syn keyword kerboRCSAttr enabled yawenabled pitchenabled rollenabled foreenabled starboardenabled topenabled forebythrottle fullthrust thrustlimit deadband maxthrust maxthrustat availablethrust availablethrustat maxfuelflow maxmassflow isp ispat vacuumisp visp sealevelisp slisp flameout thrustvectors consumedresources
hi def link kerboRCSAttr Label

" Various attributes
syn keyword kerboVariousAttr vessel element tag version currentvolume messages description editor launchsite cost partcount dockingports resources
hi def link kerboVariousAttr Label
let b:current_syntax = "kerboscript"
