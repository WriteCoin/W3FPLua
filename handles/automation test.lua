AutomationTest = (function()
    local t = {}

    t.setType = AutomationSetTestType
    t.start = AutomationTestStart
    t.End = AutomationTestEnd
    t.finished = AutomationTestFinished

    return t
end)()