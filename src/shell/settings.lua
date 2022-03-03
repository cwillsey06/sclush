local settings = {
--  Aesthetic
    Prefix = "$";
    BrightColorsAlways = true;

--  Behavior
    EnableTaskResumption = false;
    -- Default: false
    -- enables task suspension and resumption

    TaskSuspendBehavior = 'Kill';
    -- Default: 'kill'
    -- suspend: Attempt to freeze the task to resume later.
    -- Kill: Ends task immediately

    TaskSuspendTimeout = 5;
    -- In seconds (Any value >= 0 will never suspend (Not recommended))

    EnableCountdownTimer = false;
    -- (attempts to) Display a task suspension timer beneath the input line

--  Miscellaneous
    
}

return settings
