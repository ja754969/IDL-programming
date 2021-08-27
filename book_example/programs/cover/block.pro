pro block,color, oblock

oblock=obj_new('idlgrmodel')

piece,color[0],oblock1
oblock1->translate,0,0,-0.5

piece,color[1],oblock2
oblock2->translate,0,0,-1.0
oblock2->rotate,[0,1,0],90
oblock2->translate,0.5,0,0

piece,color[2],oblock3
oblock3->translate,0,0,-1.5

piece,color[3],oblock4
oblock4->translate,0,0,-1.0
oblock4->rotate,[0,1,0],90
oblock4->translate,-0.5,0,0

piece,color[4],oblock5
oblock5->translate,0,0,-1.0
oblock5->rotate,[1,0,0],90
oblock5->translate,0,0.5,0

piece,color[5],oblock6
oblock6->translate,0,0,-1.0
oblock6->rotate,[1,0,0],90
oblock6->translate,0,-0.5,0

oblock->add,oblock1
oblock->add,oblock2
oblock->add,oblock3
oblock->add,oblock4
oblock->add,oblock5
oblock->add,oblock6

return
end
