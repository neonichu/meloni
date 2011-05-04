class UIA_Element
	def initialize(parent)
		@parent = parent
	end

	def generate(code)
		@parent.generate(code)	
	end

	def buttons(name)
		return UIA_Button.new(self)
	end

	def tableViews(name)
		return UIA_TableView.new(self)
	end

	def textFields(name)
		return UIA_TextField.new(self)
	end

	def tap
		generate("element.tap()")
	end

	def valid
	end

	def value
	end
end

class UIA<UIA_Element
	def initialize(fname)
		@out = File.open(fname, 'w')
	end

	def generate(code)
		@out.write(code)
		@out.write("\n")
	end

	def keyboard
		return UIA_Keyboard.new(self)
	end

	def navBar
		return UIA_NavBar.new(self) 
	end
end

class UIA_Button<UIA_Element
end

class UIA_Keyboard<UIA_Element
	def typeIn(text)
	end
end

class UIA_NavBar<UIA_Element
end

class UIA_TableCell<UIA_Element
	def initialize(parent, index)
		@parent = parent
		@index = index
	end
end

class UIA_TableView<UIA_Element
	def cells(index)
		return UIA_TableCell.new(self, index)
	end
end

class UIA_TextField<UIA_Element
end
