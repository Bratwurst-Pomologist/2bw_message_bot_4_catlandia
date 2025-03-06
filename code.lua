core.register_chatcommand("bws", {
  description = "Run command as 2BW.",
  privs = {server=true},
  params = "[params]",
  func = function(name, param)
    local par = param:match("^(.*)$")
    local nick = "2BW_bot:"
    local cmd = "me"
    if not par then
      return false, "Invalid parameters."
    end
    local vcmd = core.chatcommands[cmd]
    if vcmd then
      vcmd.func(nick, par)
      return true, "Executed '/"..cmd.." "..par.."' as "..nick
    else
      return false, "Invalid command"
    end
  end
})