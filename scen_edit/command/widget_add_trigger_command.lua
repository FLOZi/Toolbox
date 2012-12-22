WidgetAddTriggerCommand = AbstractCommand:extends{}

function WidgetAddTriggerCommand:init(id, value)
    self.className = "WidgetAddTriggerCommand"
    self.id = id
    self.value = value
end

function WidgetAddTriggerCommand:execute()
    SCEN_EDIT.model.triggerManager:addTrigger(self.value)
end
