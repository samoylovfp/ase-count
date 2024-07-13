function init(plugin)
    pix_sel_dlg = Dialog('pixel count')
    pix_sel_dlg:label{
      id = "pixsel",
      label = "Pix Sel",
      text = "0"
    }
    pix_sel_dlg.show()

end

function exit(plugin)
  pix_sel_dlg:close()
end
