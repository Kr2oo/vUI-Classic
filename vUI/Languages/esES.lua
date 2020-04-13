local vUI, GUI, Language = select(2, ...):get()

if (vUI.UserLocale ~= "esES") then
	return
end

Language["General"] = "General"
Language["Welcome"] = "Bienvenido"
Language["Display Welcome Message"] = "Mostrar Mensaje de Bienvenida"
Language["Display Developer Chat Tools"] = "Mostrar Herramientas de Desarrollador"
Language["Move UI"] = "Mover UI"
Language["Toggle"] = "Cambiar"
Language["Restore"] = "Restaurar"
Language["Restore To Defaults"] = "Restaurar por defecto"
Language["Settings Window"] = "Ventana de opciones"
Language["Hide In Combat"] = "Ocultar en combate"
Language["Fade While Moving"] = "Desaparecer en movimiento"
Language["Set Faded Opacity"] = "Ajustar opacidad"
Language["Set the opacity of the settings window|n while faded"] = "Ajustar opacidad de la ventana|n mientras desaparece"
Language["Welcome to |cFF%svUI|r version |cFF%s%s|r."] = "Bienvenido a |cFF%svUI|r versión |cFF%s%s|r."
Language["Type |cFF%s/vui|r to access the settings window, or click |cFF%s|Hcommand:/vui|h[here]|h|r."] = "Escribe |cFF%s/vui|r para acceder al panel de opciones, o click |cFF%s|Hcommand:/vui|h[aqui]|h|r."
