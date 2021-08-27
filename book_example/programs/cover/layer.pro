pro layer, color, olayer

olayer=obj_new('idlgrmodel')

block, color[*,0], olayer11
olayer11->translate,0,0,0

block, color[*,1], olayer12
olayer12->translate,1,0,0

block, color[*,2], olayer13
olayer13->translate,1,1,0

block, color[*,3], olayer14
olayer14->translate,0,1,0

block, color[*,4], olayer15
olayer15->translate,-1,1,0

block, color[*,5], olayer16
olayer16->translate,-1,0,0

block, color[*,6], olayer17
olayer17->translate,-1,-1,0

block, color[*,7], olayer18
olayer18->translate,0,-1,0

block, color[*,8], olayer19
olayer19->translate,1,-1,0

olayer->add,olayer11
olayer->add,olayer12
olayer->add,olayer13
olayer->add,olayer14
olayer->add,olayer15
olayer->add,olayer16
olayer->add,olayer17
olayer->add,olayer18
olayer->add,olayer19

return
end
