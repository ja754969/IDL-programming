pro cubel, ocubel, ay=ay, ax=ax

ocubel=obj_new('idlgrmodel')

color=[[ 'Green',  'Black',  'Black',   'Black',   'Black',  'Black'], $
       ['Orange',  'Green',  'Black',   'Black',   'Black',  'Black'], $
       [ 'Green', 'Orange',  'Black',   'Black',    'Blue',  'Black'], $
       [   'Red',  'Black',  'Black',   'Black',   'White',  'Black'], $
       [  'Blue',  'Black',  'Black',     'Red',  'Yellow',  'Black'], $
       ['Yellow',  'Black',  'Black',    'Blue',   'Black',  'Black'], $
       [ 'White',  'Black',  'Black',  'Orange',   'Black',  'Green'], $
       [ 'Green',  'Black',  'Black',   'Black',   'Black',  'White'], $
       [ 'White', 'Orange',  'Black',   'Black',   'Black', 'Yellow']]
layer,color,ocube1
ocube1->translate,0,0,1
ocube1->rotate,[0,0,1],45

color=[[ 'Black',  'Black',  'Black',   'Black',   'Black',  'Black'], $
       [ 'Black',   'Blue',  'Black',   'Black',   'Black',  'Black'], $
       [ 'Black', 'Orange',  'Black',   'Black',   'White',  'Black'], $
       [ 'Black',  'Black',  'Black',   'Black',     'Red',  'Black'], $
       [ 'Black',  'Black',  'Black',   'Green',     'Red',  'Black'], $
       [ 'Black',  'Black',  'Black',   'White',   'Black',  'Black'], $
       [ 'Black',  'Black',  'Black',   'White',   'Black', 'Yellow'], $
       [ 'Black',  'Black',  'Black',   'Black',   'Black', 'Orange'], $
       [ 'Black', 'Orange',  'Black',   'Black',   'Black', 'Yellow']]
layer,color,ocube2

color=[[ 'Black',  'Black', 'Yellow',   'Black',   'Black',  'Black'], $
       [ 'Black',   'Blue', 'Orange',   'Black',   'Black',  'Black'], $
       [ 'Black',    'Red',  'Green',   'Black',    'Blue',  'Black'], $
       [ 'Black',  'Black',   'Blue',   'Black',     'Red',  'Black'], $
       [ 'Black',  'Black',  'Green',     'Red',   'White',  'Black'], $
       [ 'Black',  'Black',    'Red',  'Yellow',   'Black',  'Black'], $
       [ 'Black',  'Black', 'Yellow',     'Red',   'Black',  'White'], $
       [ 'Black',  'Black',   'Blue',   'Black',   'Black',  'Green'], $
       [ 'Black', 'Orange',   'Blue',   'Black',   'Black', 'Yellow']]
layer,color,ocube3
ocube3->translate,0,0,-1

ocubel->add, ocube1
ocubel->add, ocube2
ocubel->add, ocube3
ocubel->rotate,[0,1,0],ay
ocubel->rotate,[1,0,0],ax

return
end
