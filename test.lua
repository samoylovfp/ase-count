require "my-script"
Sel = {bounds= {x=4,y=6,width=4,height=5},}

function Sel:contains(x,y)
    return math.fmod(x, 2) == 0 and math.fmod(y, 3) == 0
end

print(count(Sel))