PRO widget1_event, ev
  IF ev.SELECT THEN WIDGET_CONTROL, ev.TOP, /DESTROY
END

PRO widget1
  title='Figure 29.3.1'
  xsize=216
  wBase = WIDGET_BASE(/COLUMN, XSIZE=xsize, TITLE=title)
  wButton = WIDGET_BUTTON(wBase, value='Done')
  WIDGET_CONTROL, wBase, /REALIZE
  XMANAGER, 'widget1', wBase
END
