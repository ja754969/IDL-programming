PRO widget2_event, ev
  WIDGET_CONTROL, ev.TOP, GET_UVALUE=textwid
  WIDGET_CONTROL, ev.ID, GET_UVALUE=uval
  CASE uval OF
    'ONE' : WIDGET_CONTROL, textwid, SET_VALUE='Button 1 Pressed'
    'TWO' : WIDGET_CONTROL, textwid, SET_VALUE='Button 2 Pressed'
    'DONE': WIDGET_CONTROL, ev.TOP, /DESTROY
  ENDCASE
END

PRO widget2 
  title='Figure 29.3.2'
  xsize=216
  wBase = WIDGET_BASE(/COLUMN, XSIZE=xsize, TITLE=title)
  wButton1 = WIDGET_BUTTON(wBase, VALUE='One', UVALUE='ONE')
  wButton2 = WIDGET_BUTTON(wBase, VALUE='Two', UVALUE='TWO')
  text = WIDGET_TEXT(wBase, XSIZE=20)
  wButton3 = WIDGET_BUTTON(wBase, VALUE='Done', UVALUE='DONE')
  WIDGET_CONTROL, wBase, /REALIZE
  WIDGET_CONTROL, wBase, SET_UVALUE=text
  XMANAGER, 'widget2', wBase
END
