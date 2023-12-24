#SingleInstance force

if not A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%"  ; Requires v1.0.92.01+
   ExitApp
}


SetCapsLockState, AlwaysOff  
SetStoreCapslockMode,Off

$^F2::
;$^F3::
	Reload
Return

;MsgBox, capslock_mac.ahk Reloaded
$^!q::
	Reload
Return

; for chinese input
CapsLock & i::Send, {Home}
CapsLock & `;::Send, {End}
CapsLock & [::Send, {Esc}
CapsLock & c::Send, ^{c}
$^]::Send, {Capslock}
CapsLock & w::Send, ^{w}
CapsLock & v::Send, ^{v}
CapsLock & d::Send, ^{d}
CapsLock & u::Send, ^{u}
CapsLock & n::Send, ^{n}
CapsLock & p::Send, ^{p}
CapsLock & o::Send, ^{o}
CapsLock & e::Send, ^{e}
CapsLock & a::Send, ^{a}
CapsLock & y::Send, ^{y}
CapsLock & x::Send, ^{x}
CapsLock & r::Send, ^{r}
;CapsLock & f::Send, ^{f}
CapsLock & f::Send, {PgDn}
;CapsLock & b::Send, ^{b}
CapsLock & b::Send, {PgUp}
CapsLock & z::Send, #{t}
;CapsLock & q::Send, #{t}
CapsLock & ,::Send ^{PgUp}
CapsLock & .::Send ^{PgDn}
;CapsLock & j::Send ^{j}
;CapsLock & k::Send ^{k}
;CapsLock & h::Send ^{h}
;CapsLock & l::Send ^{l}
CapsLock & j::Send {Down}
CapsLock & k::Send {Up}
CapsLock & h::Send {LEFT}   ; j SHIFT + LEFT    (Highlight per character)
CapsLock & l::Send {RIGHT}  ; l SHIFT + RIGHT   (Highlight per character)
CapsLock & space::Send #^5
CapsLock & '::Send !{Tab}
CapsLock & \::Send {|}{|}{LEFT}
CapsLock & t::Send #!{d}
CapsLock & 1::Send ^#{1}
CapsLock & 2::Send ^#{2}
CapsLock & 3::Send ^#{3}
CapsLock & 4::Send ^#{4}
CapsLock & 5::Send ^#{5}
CapsLock & 8::Send #{Left}
CapsLock & 9::Send #{Right}
CapsLock & m::Send #{UP}
CapsLock & 0::Send #+{RIGHT}
CapsLock & Backspace::Send ^{Backspace}
CapsLock & /::Send ^{/}

CapsLock & LCtrl::
    Send #^8
Return
