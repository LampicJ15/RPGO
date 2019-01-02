function val = interP(b00,b30,b02,b32,u,v)
val = (1-u)*(1-v)*b00+u*(1-v)*b30+(1-u)*v*b02+u*v*b32;

end

