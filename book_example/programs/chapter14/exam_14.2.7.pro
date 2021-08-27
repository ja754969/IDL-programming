; Example 14.2.7

x = 0
CASE 1 OF
 x GE 2: PRINT, 'x > 2'
 x GE -2 AND x LT 2: PRINT, '2 > x > -2'
 x LT -2: PRINT, 'x < -2'
ENDCASE
END
