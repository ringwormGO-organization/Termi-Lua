print("Enter what function to do (+, -, *, /)")

    Calc = io.read()

    if Calc == "+" then

            print("Enter two numbers")

            local Num1 = io.read()
            local Num2 = io.read()

            io.write("Result: ", Num1+Num2,"\n")

    elseif Calc == "-" then

            print("Enter two numbers")

            local Num1 = io.read()
            local Num2 = io.read()

            io.write("Result: ", Num1-Num2,"\n")

    elseif Calc == "*" then

            print("Enter two numbers")

            local Num1 = io.read()
            local Num2 = io.read()

            io.write("Result: ", Num1*Num2,"\n")

    elseif Calc == "/" then

            print("Enter two numbers")

            local Num1 = io.read()
            local Num2 = io.read()

            io.write("Result: ", Num1/Num2,"\n")

    else
        print("ERROR: COMMAND NOT FOUND")

    end