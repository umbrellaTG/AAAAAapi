do

local function run(msg, matches)
  if matches[1] == 'me' then
    if is_sudo(msg) then
    send_document(get_receiver(msg), "./plugins/sudo.webp", ok_cb, false)
      return "SUDO"
    elseif is_admin1(msg) then
    send_document(get_receiver(msg), "./plugins/admin.webp", ok_cb, false)
      return "You are My ADMIN"
    elseif is_owner(msg) then
    send_document(get_receiver(msg), "./plugins/owner.webp", ok_cb, false)
      return "You are Group Owner"
    elseif is_momod(msg) then
    send_document(get_receiver(msg), "./plugins/mod.webp", ok_cb, false)
      return "You are Group Moderator"
    else
    send_document(get_receiver(msg), "./plugins/member.webp", ok_cb, false)
      return "You are Group Member"
    end
  end
end

return {
  patterns = {
    "^[!/]([Mm]e)$",
    "^([Mm]e)$"
    },
  run = run
}
end
