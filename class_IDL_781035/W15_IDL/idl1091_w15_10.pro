PRO switch_1,x
SWITCH x OF
  1: print,'x=',x,' one'
  2: print,'x=',x,' two'
  3: begin 
    print,'x=',x,' three'
    break
    end
  ELSE: BEGIN
    print,' you entered:',x
    print,'Please enter a value between 1 and 3'
    end
ENDSWITCH

help
end


;在控制台直接打 : IDL> switch_1,x (x隨便指定一個數字)