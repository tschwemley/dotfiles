local settings = require("settings")

settings.webview.default_font_size = 18
settings.webview.default_monospace_font_size = 16

settings.window.search_engines["whoogle"] = "https://search.schwem.io/search?q=%s"
settings.window.default_search_engine = "whoogle"
