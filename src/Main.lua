-- LUA 5.1 MINIMUM
-- TERMI-LUA VERSION 0.0.4
--------------------------

print("\n")
print("ooooooooooo                              ")
print("    888      ooooooooooo                          o88   ")
print("    888      888    88  oo oooooo  oo ooo oooo   oooo  ")
print("    888      888ooo8     888    888 888 888 888   888 ")
print("    888      888    oo   888        888 888 888   888  ")
print("   o888o    o888ooo8888 o888o      o888o888o888o o888o ")
print("-------------------------------------------------------")
print("	 Type '!help', '!credits', '!exit'")
print("-------------------------------------------------------")

repeat

	
	io.write("Termi> ")
	
	input = io.read()

	ver = "0.0.4"

	if input == "!help" then
		print("COMMANDS THAT START WITH ! :")
		print("	!help -- shows list of commands")
		print("	!credits -- prints out credits")
		print("	!ver -- prints out version of termi")
		print("	!exit -- exits Termi")
		print("Calculator commands :")
		print("	Opencalc -- opens a calculator")
		print("	OpenGeocalc -- opens a geometric calculator")
		print("Filesys commands : // WORK IN PROGRESS")
		print("	filesys -- opens filesys interface")
		print("	createf -- creates a file")
		print("	openf -- opens a file")
		print("	cd -- cds into a direcotry")
		print("	rm -- removes a file/directory")
		print("	mkdir -- creates a directory")
		print(" list -- lists files in a directory\n")
		print("|-------------------------------------------|")

	elseif input == "!credits" then
		print("* @author(s): StjepanBM1, Andrej123456789")
		print("* PROJECT: Termi (Lua version)")
		print("* Licnese: BSD 3-Clause License")
		print("* DESCRIPTION: Main file for Termi (Lua version)")

	elseif input == "!ver" then
		print(ver)

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

				else
					print("ERROR: COMMAND NOT FOUND")

                end


	elseif input == "OpenGeocalc" then
		print("Enter what function to do (EXT, SRF)")

		GCalc = io.read()

		if GCalc == "EXT" then
			print("Enter what 2d shape you want (SQR, TRI, REC)")

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

                io.write("Result: ", Num1*4, "\n")

			elseif Shape == "REC" then

				print("Enter the lenght of all sides")

				local Num1 = io.read()
				local Num2 = io.read()

				io.write("Result: ", Num1+Num2,"\n")

			else
				print("ERROR: COMMAND NOT FOUND")

			end


		else if GCalc == "SRF" then
			print("Enter what 2d shape you want (SQR, REC)")

			Shape2 = io.read()

			if Shape2 == "SQR" then

				print("Enter lenght of a side")

				local Num1 = io.read()

				io.write("Result: ", Num1*Num1,"\n")

			elseif Shape2 == "REC" then
				print("Enter two numbers")

                        local Num1 = io.read()
                        local Num2 = io.read()

                        io.write("Result: ", Num1*Num2,"\n")
			else
				print("ERROR: COMMAND NOT FOUND")

			end

		else
			print("ERROR: COMMAND NOT FOUND")

		end
	end

end

until tostring(input) == "!exit"
