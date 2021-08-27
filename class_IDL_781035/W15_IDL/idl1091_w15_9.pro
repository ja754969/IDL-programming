; Chapter 14 switch
CD,'H:\IDL_1091\class_IDL_781035\W15_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W15_IDL'
i = 2
SWITCH i of
  0: print,'i=0 ',i
  1: print,'i=1 ',i
  2: print,'i=2 ',i
  ELSE: print,'Nothing'
ENDSWITCH

help
end