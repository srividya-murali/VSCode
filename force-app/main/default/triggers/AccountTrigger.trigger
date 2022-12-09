trigger AccountTrigger on Account (before update) {
    AccountTriggerHandler.displayOldNewData(trigger.old , trigger.new);
}