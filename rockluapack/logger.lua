local logger = {
	levels = {DEBUG = 1, INFO = 2, WARN = 3, ERROR = 4},
	currentLevel = 2
}

function Logger:log(level, message)
	if self.levels[level] >= self.currentLevel then
		local timestamp = os.date("%Y-%m-%d %H:%M:%S")
		print(string.format("[%s] [%s] %s", timestamp, level, message))
	end
end

function Logger:debug(message) self:log("DEBUG", message) end
function Logger:info(message) self:log("INFO", message) end
function Logger:warn(message) self:log("WARN", message) end
function Logger:error(message) self:log("ERROR", message) end
