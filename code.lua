core.register_chatcommand("bws"' {
  description = "run command as 2bw.",
  privs = {server=true},
  parsms = "<command> [params]",
  func = function(name, param)
    local cmd, par = param:match("^(%S+)%s?(.*)$")
    local nick = "2BW_bot:"
    if not (cmd and par) then
      return false, "Invalid parameters."
    end
    local vcmd = core.chatcommands[cmd]
    if vcmd then
      vcmd.func(nick,par)
      return true, "Executed '/"..cmd.." "..par.."' as "..nick
      else
        return false, "Invalid command"
        end
end})
