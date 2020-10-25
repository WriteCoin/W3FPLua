-- Automation Test

local export = {}

local t = export

---@param testType string
function t.setType(testType)
    AutomationSetTestType(testType)
end

---@param testName string
function t.start(testName)
    AutomationTestStart(testName)
end

function t.End()
    AutomationTestEnd()
end

function t.finished()
    AutomationTestingFinished()
end

return t