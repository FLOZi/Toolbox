RemoveTriggerCommand = UndoableCommand:extends{}
RemoveTriggerCommand.className = "RemoveTriggerCommand"

function RemoveTriggerCommand:init(triggerId)
    self.className = "RemoveTriggerCommand"
    self.triggerId = triggerId
end

function RemoveTriggerCommand:execute()
    self.trigger = SCEN_EDIT.model.triggerManager:getTrigger(self.triggerId)
    SCEN_EDIT.model.triggerManager:removeTrigger(self.triggerId)
end

function RemoveTriggerCommand:unexecute()
    SCEN_EDIT.model.triggerManager:newTrigger(self.trigger)
end
