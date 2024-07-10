local ox_inventory = exports.ox_inventory

lib.callback.register('drugs:sellToNPC', function(source, itemname, cnt)
    local result = ox_inventory:RemoveItem(source, itemname, cnt + 1)
    if result then
        ox_inventory:AddItem(source, 'money', Config.Price[itemname] * (cnt + 1))
    else
        lib.notify(source, {
            title = 'Bad luck',
            description = 'The buyer says get the fuck out of here!',
            type = 'error'
        })
    end
end)
