-- LUA 5.3 MINIMUM
-- TERMI-LUA VERSION 0.0.1
-- SURFACE CALCULATION COMMING SOON


print("\n")
print("ooooooooooo                              ")
print("    888      ooooooooooo                          o88   ")
print("    888      888    88  oo oooooo  oo ooo oooo   oooo  ")
print("    888      888ooo8     888    888 888 888 888   888 ")
print("    888      888    oo   888        888 888 888   888  ")
print("   o888o    o888ooo8888 o888o      o888o888o888o o888o ")
print("-------------------------------------------------------")
print("		TYPE 'Help' TO SEE LIST OF ALL COMMAND        ")
print("			(C) 2022 ringwormGO                   ")
print("-------------------------------------------------------")

repeat
	io.write("Termi> ")

	input = io.read()

	if input == "Help" then
		print("Help -- shows list of commands")
		print("Opencalc -- opens a calculator")
		print("OpenGeocalc -- opens a geometric calculator")

	elseif input == "Opencalc" then

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

                end


	elseif input == "OpenGeocalc" then
		print("Enter what function to do (EXT)")

		GCalc = io.read()

		if GCalc == "EXT" then
			print("Enter what 2d Shape you want (SQR, TRI, REC)")

			Shape = io.read()

			if Shape == "TRI" then

				print("Enter the lenght of all sides")

				local Num1 = io.read()
				local Num2 = io.read()
				local Num3 = io.read()

				io.write("Combined size of all sides: ", Num1+Num2+Num3, "\n")

			elseif Shape == "SQR" then

                                print("Enter the lenght of all sides")

                                local Num1 = io.read()
				local Num2 = 4

                                io.write("Combined size of all sides: ", Num1*Num2, "\n")

			elseif Shape == "REC" then

				print("Enter the lenght of all sides")

				local Num1 = io.read()
				local Num2 = io.read()

				io.write("Combined size of all sides: ", Num1+Num2,"\n")

		end

	end

end

until tostring(input) == "Exit"
