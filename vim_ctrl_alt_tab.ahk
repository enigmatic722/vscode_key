#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

$LAlt::Ctrl 
$LCtrl::Alt

$^F1::
	Reload
Return

$^Tab::
Send {Alt down}{Tab}
Keywait Alt
Send {Alt up}
return

; Remap Ctrl-Shift-Tab to Alt-Shift-Tab
$^+Tab::
Send {Alt down}{Shift down}{Tab}
Keywait Alt
Send {Alt up}
Send {Shift up}
return

;$RCtrl::Alt
$!tab::Send ^{Tab}
$!+tab::Send ^+{Tab}
$^'::Send ^{Tab}
$^+'::Send ^+{Tab}
$^,::Send !{LEFT}
$^.::Send !{RIGHT}
$!,::Send ^{,}
$!.::Send ^{.}
$#+9::Send {U+0028}{U+0029}{Left}

$^+h::Send +{F6}
$^+l::Send {F6}

$#,::Send <>{LEFT}
$#.::Send {space}{U+002D}>{space}
$#^.::Send {space}{=}>{space}

; Deletion
+Backspace::Send {Del}
$^+Backspace::Send ^{Del}
$^`::Send {U+0060}{U+0060}{U+0060}
LShift & 4::Send {$}{$}{Left}

; Win Key
LWin up::return
LWin & l::Send #l

$#h::Send #{DOWN}
$#+.::Send #^{RIGHT}
$#+,::Send #^{LEFT}
$#f::Send {\}frac{{}{}}{{}{}}{Left}{Left}{Left}
$#n::Send {&}
$#+n::Send {F2}
$#m::Send {F11}
$#j::Send {U+002D}
$#+j::Send {_}
$#/::Send ^{[}{:}imap{space}jk{space}<Esc>{enter}{:}nmap{space}{g}{p}{space}P{"}{_}deb{enter}{:}nmap{space}Y{space}{y}{$}{enter}{:}nmap{space}<C-q>{space}<Esc>{enter}{:}vmap{space}g{;}{space}g{$}{enter}{:}nmap{space}g{;}{space}{``}{.}{enter}
$![::Send {U+300C}{U+300D}{Left}
$#+[::Send {{}{}}{Left}
$#[::Send {[}{]}{Left}
;$^[::Send {Esc}
$#+/::Send {t}{h}{i}{s}{i}{s}{u}{n}{s}{a}{f}{e}

;;; App functional
$#'::Send {'}{'}{Left}
$#+'::Send {"}{"}{Left}
$^u::Send {6}
$+space::return
$#+p::
    Send #+{5}
return

$^;::
	If (!state) {
		Send ^+{5}
		state := 1
	}
	Else {
		Send !+{0}
		state := 0
	}
Return

$^[::
	Send !+{0}
    Send {Esc}
	state := false
return

; terminal
; App Tab Control

$#^k::Send ^{=}
$#^j::Send ^{-}


$#1::Send ^#{1}
$#2::Send ^#{2}
$#3::Send ^#{3}
$#4::Send ^#{4}
$#5::Send ^#{5}
$#e::Send ^#{4}
$#d::
   Run, "C:\Users\Chuang\Desktop"

Return

$#F1::
	Suspend on
Return

$#F2::
	Suspend Off
Return

