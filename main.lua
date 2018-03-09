-----------------------------------------------------------------------------------------
--
-- main.lua
-- created by Momin Ahmed
-- created on 27th march 2018
--
-----------------------------------------------------------------------------------------

local diameterOfPizzaTextField = native.newTextField( display.contentCenterX,
display.contentCenterY + 200, 450, 125 )	
diameterOfPizzaTextField.id = "length TextField"

local costOfPizzaTextField = display.newText( " Input Diameter Of Pizza ",
display.contentCenterX, display.contentCenterY - 200, native.systemFont, 75 )
costOfPizzaTextField.id = "area TextField"
costOfPizzaTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157)
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

local function calculateButtonTouch( event )

	local diameterOfPizza
	local costOfPizza

	diameterOfPizza = diameterOfPizzaTextField.text
	costOfPizza =(0.75 + 1 + ( diameterOfPizza * 0.5 )) + ((0.75 + 1 + ( diameterOfPizza * 0.5)) * 0.13)
	costOfPizzaTextField.text = "The cost is" .. costOfPizza

	return true

end

calculateButton:addEventListener( "touch", calculateButtonTouch)

