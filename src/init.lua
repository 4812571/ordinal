local Ordinal = {}

function Ordinal.GetSuffix(number)
    local lastDigit = number % 10
    local lastTwoDigits = number % 100

    if lastTwoDigits >= 11 and lastTwoDigits <= 13 then
        return "th"
    end

    if lastDigit == 1 then
        return "st"
    end

    if lastDigit == 2 then
        return "nd"
    end

    if lastDigit == 3 then
        return "rd"
    end

    return "th"
end

function Ordinal.ToString(number)
    return tostring(number) .. Ordinal.GetSuffix(number)
end

return Ordinal