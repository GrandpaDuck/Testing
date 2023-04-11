AddEventHandler('onResourceStart', function(resourceName)
  print('Arch Vehicles successfully loaded! Have fun!')
    sendToDiscord()
end)

function sendToDiscord(color, name, message, footer)
  local embed = {
        {
            ["color"] = color,
            ["title"] = "**".. name .."**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = footer,
            },
        }
    }

  PerformHttpRequest('DISCORD_URL', function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end
