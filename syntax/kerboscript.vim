if !exists("main_syntax")
    if exists("b:current_syntax")
        finish
    endif
    let main_syntax = "kerboscript"
endif

syntax sync fromstart
syntax case ignore

syntax match commonOperator "\(+\|/\|=\|<>\|-\|\^\|\*\|<\|>\|>=\|<=\|\[\|\]\)"
syntax match baseDelimiter ",\|:"
syntax match endOfCommand "\."
hi link commonOperator Operator
hi link baseDelimiter Special
hi link endOfCommand Special

" Booleans
syn keyword kerboBoolean true false on off
hi def link kerboBoolean Boolean

" obvious syntax errors
syntax match MissingPoint ".*[^\.^\{^\}^\(^\,]\s*$"
hi link MissingPoint Error

" Empty lines are fine
syntax match EmptyLine "^\s*$"
hi link EmptyLine Normal

" Comments
syn match   kerboComment ".*//.*$" contains=kerboTODO
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
syn keyword kerboFunction clearscreen log rename delete edit runpath runoncepath compile reboot shutdown batch deploy
hi def link kerboFunction Function

" Keywords
syn keyword kerboKeyword set unset defined to is in lock unlock declare parameter toggle declare function choose return lazyglobal
hi def link kerboKeyword Keyword

" Operators
syn keyword kerboOperator abs ceiling floor ln log10 mod min max random randomseed round sqrt char unchar sin cos tan arcsin arccos arctan arctan2
hi def link kerboOperator Operator

" Statements
syn keyword kerboStatement wait break preserve stage run print
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
syn keyword kerboType function v r vector direction la when thentlng parameter facing up prograde retrograde steering throttle sas forevector vector topvector upvector starvector rightvector
hi def link kerboType Type

" """"""""""""""""""""
" Set attributes
" """"""""""""""""""""
" Structure attributes
syn keyword kerboStructure tostring hassuffix suffixnames isserializable typename istype inheritance
hi def link kerboStructure Label

" Part attributes
syn keyword kerboPartAttr name allmodules alltaggedparts bounds children cid controlfrom decoupledin decoupler drymass facing getmodule getmodulebyindex hasmodule hasparent hasphysics mass modules modulesnamed parent partsdubbed partsdubbedpattern partsnamed partsnamedpattern partstagged partstaggedpattern partstitled partstitledpattern position removesymmetry resources rotation separatedin separator stage symmetrycount symmetrypartner tag targetable title uid wetmass
hi def link kerboPartAttr Label

" Universal structures
syn keyword kerboUstructureAttr ship body
hi def link kerboUstructureAttr Constant

" Math attributes
syn keyword kerboMathAttr x y z mag normalized sqrtmagnitude direction vec r q heading lookdirup angleaxis rotatefromto
hi def link kerboMathAttr Label

" Geo attributes
syn keyword kerboGeoAttr lat lng distance terrainheight heading bearing position altitudeposition velocity altitudevelocity
hi def link kerboGeoAttr Label

" Resource attributes
syn keyword kerboResourceAttr name amount capacity density parts fuelflow maxfuelflow requiredfuelflow massflow maxmassflow ratio
hi def link kerboResourceAttr Label

" Kerbal attributes
syn keyword kerboKerbalAttr name gender experience trait tourist part
hi def link kerboKerbalAttr Label

" Node attributes
syn keyword kerboNodeAttr node add remove nextnode hasnode
hi def link kerboNodeAttr Label

" Docking attributes
syn keyword kerboDockingAttr acquirerange acquireforce acquiretorque reengageddistance dockedshipname nodeposition nodetype portfacing state undock partner haspartner targetable
hi def link kerboDockingAttr Label

" Engine attributes
syn keyword kerboEngineAttr activate allowrestart allowshutdown autoswitch availablethrust availablethrustat config consumedresources flameout fuelflow fuelstability gimbal hasgimbal ignition ignitions isp ispat massflow maxfuelflow maxmassflow maxthrust maxthrustat minthrottle mode modes multimode possiblethrust possiblethrustat pressurefed primarymode sealevelisp shutdown slisp throttlelock thrust thrustlimit togglemode ullage vacuumisp visp
hi def link kerboEngineAttr Label

" Gimbal attributes
syn keyword kerboGimbalAttr lock pitch yaw roll limit range responsespeed pitchangle yawangle rollangle
hi def link kerboGimbalAttr Label

" Proc attributes
syn keyword kerboProcAttr mode activate deactivate tag volume bootfilename connection
hi def link kerboProcAttr Label

" RCS attributes
syn keyword kerboRCSAttr availablethrust availablethrustat consumedresources deadband enabled flameout forebythrottle foreenabled fullthrust isp ispat maxfuelflow maxmassflow maxthrust maxthrustat pitchenabled rollenabled sealevelisp slisp starboardenabled thrustlimit thrustvectors topenabled vacuumisp visp yawenabled
hi def link kerboRCSAttr Label

" Resource attributes
syn keyword kerboResourceAttr name amount density capacity toggleable enabled
hi def link kerboResourceAttr Label

" Science attributes
syn keyword kerboScienceAttr title sciencevalue transmitvalue dataamount deploy reset transmit() dump inoperable rerunnable deployed hasdata data active type display powerconsumption toggle
hi def link kerboScienceAttr Label

" Staging attributes
syn keyword kerboStageAttr ready number resources resourceslex nextdecoupler nextseparator deltav
hi def link kerboStageAttr Label

" Vessel attributes
syn keyword kerboVesselAttr acc airspeed alltaggedparts angularmomentum angularvel availablethrust availablethrustat bearing bounds burntime connection control controlpart crew crewcapacity deltav deltavasl deltavvacuum dockingports drymass dynamicpressure elements facing grav groundspeed heading isdead light loaddistance loaded mass maxthrust maxthrustat messages modulesingroup modulesnamed name parts partsdubbed partsdubbedpattern partsingroup partsnamed partsnamedpattern partstagged partstaggedpattern partstitled partstitledpattern patches pres q resources rootpart sensors shipname sizeclass stagedeltav stagenum starttracking status stoptracking temp termvelocity type unpacked verticalspeed wetmass
hi def link kerboVesselAttr Label

" Communication attributes
syn keyword kerboCommAttr isconnected delay destination sendmessage sentat receivedat sender hassender content empty length pop peek clear push
hi def link kerboCommAttr Label

" Orbit attributes
syn keyword kerboOrbitAttr altitude apoapsis argumentofperiapsis direction distance eccentricity epoch eta geoposition hasbody hasnextpatch hasobt hasorbit inclination lan latitude longitude longitudeofascendingnode meananomalyatepoch name nextpatch nextpatcheta north obt orbit patches periapsis period position prograde retrograde semimajoraxis semiminoraxis srfprograde srfretrograde transition trueanomaly up velocity
hi def link kerboOrbitAttr Label

" Planet attributes
syn keyword kerboPlanetAttr adbidx adiabaticindex altitude altitudeof altitudepressure altitudetemperature alttemp angularvel atm description exists geopositionlatlng geopositionof hasocean hassolidsurface height mass molarmass mu name orbitingchildren oxygen radius rotationangle rotationperiod scale sealevelpressure soiradius
hi def link kerboPlanetAttr Label

" Various attributes
syn keyword kerboVariousAttr vessel element tag version currentvolume messages description editor launchsite cost partcount dockingports resources highlight, rgba
hi def link kerboVariousAttr Label

" Container attributes
syn keyword kerboContainerAttr add atend case casesensitive clear copy dump empty find findlast haskey hassuffix hasvalue index indexof insert iterator join keys lastindexof length next peek pop push remove reset reverseiterator start step stop sublist suffixnames value values
hi def link kerboContainerAttr Label
"
" Celestial bodies
syn keyword kerboCelestialBody kerbin mun minmus sun moho eve gilly duna ike dres jool laythe vall tylo bop pol eeloo
hi def link kerboCelestialBody Define


let b:current_syntax = "kerboscript"
if main_syntax == "kerboscript"
    unlet main_syntax
endif
