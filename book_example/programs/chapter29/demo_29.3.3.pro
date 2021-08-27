PRO widget3_event, ev
  WIDGET_CONTROL, ev.TOP, GET_UVALUE=struct
  WIDGET_CONTROL, ev.ID, GET_UVALUE=uvalue

  IF uvalue EQ 'LEFT' OR uvalue EQ 'RIGHT' THEN BEGIN
    CASE uvalue OF
      'LEFT' : WSET, struct.wDrawID1
      'RIGHT': WSET, struct.wDrawID2
    ENDCASE
  ENDIF ELSE BEGIN
    CASE uvalue OF
      'CONT': CONTOUR, dist(50, 40), COLOR=0
      'SURF': SURFACE, dist(50, 40), COLOR=0
      'DONE'   : WIDGET_CONTROL, ev.TOP, /DESTROY
    ENDCASE
  ENDELSE
END

PRO widget3
  xsize=216 & ysize=162
  title='Figure 29.3.3'
  DEVICE, DECOMPOSED=0
  !P.BACKGROUND=255
  wBase = WIDGET_BASE(/COLUMN, TITLE=title)

  wBase2 = WIDGET_BASE(wBase, /ROW)
  wButton21 = WIDGET_BUTTON(wBase2, VALUE='Contour Plot', UVALUE='CONT')
  wButton22 = WIDGET_BUTTON(wBase2, VALUE='Surface Plot', UVALUE='SURF')

  wBase3 = WIDGET_BASE(wBase, /ROW)
  wButton31 = WIDGET_BUTTON(wBase3, VALUE='Left Panel', UVALUE='LEFT')
  wButton32 = WIDGET_BUTTON(wBase3, VALUE='Right Panel', UVALUE='RIGHT')

  wBase4 = WIDGET_BASE(wBase, /ROW)
  wDraw1 = WIDGET_DRAW(wBase4, XSIZE=216, YSIZE=162)
  wDraw2 = WIDGET_DRAW(wBase4, XSIZE=216, YSIZE=162)

  wButton3 = WIDGET_BUTTON(wBase, value='Done', UVALUE='DONE')

  WIDGET_CONTROL, wBase, /REALIZE

  WIDGET_CONTROL, wDraw1, GET_VALUE=wDrawID1
  WIDGET_CONTROL, wDraw2, GET_VALUE=wDrawID2

  struct = {wDrawID1:wDrawID1, wDrawID2:wDrawID2}
  WIDGET_CONTROL, wBase, SET_UVALUE=struct

  XMANAGER, 'widget3', wBase
END
