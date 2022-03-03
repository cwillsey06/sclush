local settings = {
--  Aesthetic
    Prefix = "$";
    BrightColorsAlways = true;

--  Behavior
    TaskSuspendBehavior = "Kill";
    -- Pause: Attempt to freeze the task to resume later.
    -- Kill: Ends task immediately

    TaskSuspendTimeout = 10;
    -- any value >= 0 will never suspend (not recommended)
    
}

return settings
