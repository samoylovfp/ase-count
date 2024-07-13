function init(plugin)
  pix_count_dialog = Dialog("pix sel")

  pix_count_dialog
      :label {
        id = "pix count label",
        title = "pix count",
        text = "?"
      }
      :button {
        id = "pix_recount",
        text = "Recount",
        onclick = function()
          sel = count(app.sprite.selection)
          pix_count_dialog:modify {
            id = "pix count label",
            title = "pix count",
            text = sel
          }
        end
      }
      :show { wait = false }

  plugin:newCommand {
    id = "PixCount",
    title = "Show pix count",
    group = "select_simple",
    onclick = function()
      pix_count_dialog:show { wait = false }
    end
  }
end

function count(sel)
  local count = 0
  local bounds = sel.bounds
  for x = bounds.x, bounds.x + bounds.width do
    for y = bounds.y, bounds.y + bounds.height do
      if sel:contains(x, y) then
        count = count + 1
      end
    end
  end
  return count
end

function exit(plugin)
  pix_count_dialog:close()
end
