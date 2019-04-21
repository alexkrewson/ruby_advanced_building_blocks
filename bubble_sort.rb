def bubble_sort(inputArray)

    i = 0
    @inputArray = inputArray
    @notFinished = true

    while i < inputArray.length - 1

        if @inputArray[i] > @inputArray[i + 1]

            @notFinished = true
            @inputArray[i], @inputArray[i + 1] = @inputArray[i + 1], @inputArray[i]
        
        end

        i += 1

        if i == @inputArray.length - 1 && @notFinished == true

            i = 0
            @notFinished = false

        end

    end

end







def bubble_sort_by(inputArray)

    i = 0
    @inputArray = inputArray
    @notFinished = true

    
    while i < @inputArray.length - 1
        
        result =  yield(@inputArray[i],@inputArray[i + 1])

        if result > 0

            @notFinished = true
            @inputArray[i], @inputArray[i + 1] = @inputArray[i + 1], @inputArray[i]

        end

        i += 1

        if i == @inputArray.length - 1 && @notFinished == true

            i = 0
            @notFinished = false

        end

    end

end


bubble_sort_by(["hi", "hello", "hey"]) do |left,right|
    left.length - right.length
end
