setlocal makeprg=jslint\ --var\ --eqeq\ --white\ --forin\ --plusplus\ %
setlocal errorformat=%-P%f,
                    \%E%>\ #%n\ %m,%Z%.%#Line\ %l\\,\ Pos\ %c,
                    \%E%>\#%n\ %m,%Z%.%#Line\ %l\\,\ Pos\ %c,
                    \%-G%f\ is\ OK.,%-Q
