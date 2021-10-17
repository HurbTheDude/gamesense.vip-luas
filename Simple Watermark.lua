local surface_create_font, engine_get_screen_size, engine_get_user_name, surface_set_color, surface_draw_filled_rect, surface_set_text_color, surface_set_text_pos, surface_set_text_font, surface_draw_text, client_set_event_callback = surface.create_font, engine.get_screen_size, cheat.get_user_name, surface.set_color, surface.draw_filled_rect, surface.set_text_color, surface.set_text_pos, surface.set_text_font, surface.draw_text, cheat.set_event_callback
local font = surface_create_font("Verdana", 12, 400, 0, 144);
local screenx, screeny = engine_get_screen_size()
local username = engine_get_user_name()
r, g, b, a = config.get("menu_color")

function paint()
local stringdraw = "gamesense.vip | " ..username .." | delay: " ..math.floor(engine.get_net_channel_info():get_avg_latency() * 1000) .."ms | " ..math.floor(1 / globals.tickinterval()).."tick"

surface_set_color(17, 17, 17, 180)
surface_draw_filled_rect(screenx - surface.get_text_size(font, stringdraw) - 12, 5, screenx - 5, 23)
surface_set_color(r, g, b, a)
surface_draw_filled_rect(screenx - surface.get_text_size(font, stringdraw) - 12, 5, screenx - 5, 7)
surface_set_text_color(220, 220, 220, 220)
surface_set_text_pos(screenx - surface.get_text_size(font, stringdraw) - 8, 8)
surface_set_text_font(font);
surface_draw_text(stringdraw)
end
cheat.set_event_callback("on_paint", paint)