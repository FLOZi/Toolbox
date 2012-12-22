UpdateTriggerCommand = UndoableCommand:extends{}
UpdateTriggerCommand.className = "UpdateTriggerCommand"

function UpdateTriggerCommand:init(trigger)
    self.className = "UpdateTriggerCommand"
    self.trigger = trigger
end

function UpdateTriggerCommand:execute()
    self.old = SCEN_EDIT.model.triggerManager:getTrigger(self.trigger.id)
    SCEN_EDIT.model.triggerManager:setTrigger(self.trigger.id, self.trigger)
end

function UpdateTriggerCommand:unexecute()
    SCEN_EDIT.model.triggerManager:setTrigger(self.trigger.id, self.old)
end
