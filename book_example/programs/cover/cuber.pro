pro cuber,ocuber, ay=ay, ax=ax

ocuber=obj_new('idlgrmodel')

color=[[ 'Green',  'Black',  'Black',   'Black',   'Black',  'Black'], $
       [ 'Green',    'Red',  'Black',   'Black',   'Black',  'Black'], $
       [ 'Green',    'Red',  'Black',   'Black',   'White',  'Black'], $
       [ 'Green',  'Black',  'Black',   'Black',   'White',  'Black'], $
       [ 'Green',  'Black',  'Black',  'Orange',   'White',  'Black'], $
       [ 'Green',  'Black',  'Black',  'Orange',   'Black',  'Black'], $
       [ 'Green',  'Black',  'Black',  'Orange',   'Black', 'Yellow'], $
       [ 'Green',  'Black',  'Black',   'Black',   'Black', 'Yellow'], $
       [ 'Green',    'Red',  'Black',   'Black',   'Black', 'Yellow']]
layer,color,ocube4
ocube4->translate,0,0,1

color=[[ 'Black',  'Black',  'Black',   'Black',   'Black',  'Black'], $
       [ 'Black',    'Red',  'Black',   'Black',   'Black',  'Black'], $
       [ 'Black',    'Red',  'Black',   'Black',   'White',  'Black'], $
       [ 'Black',  'Black',  'Black',   'Black',   'White',  'Black'], $
       [ 'Black',  'Black',  'Black',  'Orange',   'White',  'Black'], $
       [ 'Black',  'Black',  'Black',  'Orange',   'Black',  'Black'], $
       [ 'Black',  'Black',  'Black',  'Orange',   'Black', 'Yellow'], $
       [ 'Black',  'Black',  'Black',   'Black',   'Black', 'Yellow'], $
       [ 'Black',    'Red',  'Black',   'Black',   'Black', 'Yellow']]
layer,color,ocube5

color=[[ 'Black',  'Black',   'Blue',   'Black',   'Black',  'Black'], $
       [ 'Black',    'Red',   'Blue',   'Black',   'Black',  'Black'], $
       [ 'Black',    'Red',   'Blue',   'Black',   'White',  'Black'], $
       [ 'Black',  'Black',   'Blue',   'Black',   'White',  'Black'], $
       [ 'Black',  'Black',   'Blue',  'Orange',   'White',  'Black'], $
       [ 'Black',  'Black',   'Blue',  'Orange',   'Black',  'Black'], $
       [ 'Black',  'Black',   'Blue',  'Orange',   'Black', 'Yellow'], $
       [ 'Black',  'Black',   'Blue',   'Black',   'Black', 'Yellow'], $
       [ 'Black',    'Red',   'Blue',   'Black',   'Black', 'Yellow']]
layer,color,ocube6
ocube6->translate,0,0,-1

ocuber->add, ocube4
ocuber->add, ocube5
ocuber->add, ocube6
ocuber->rotate,[0,1,0],ay
ocuber->rotate,[1,0,0],ax

return
end
