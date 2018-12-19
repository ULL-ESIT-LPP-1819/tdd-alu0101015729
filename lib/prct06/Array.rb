class Array

	def orden_for
		intercambio=true
		for i in 0...(self.length-1)
			intercambio=false
			for j in 0...(self.length-i-1)
				if self[j] > self[j+1]
					self[j],self[j+1] = self[j+1],self[j]
					intercambio=true
				end
			end
			break if intercambio == false
		end
		return self
	end
	
	def orden_each
		intercambio=true
		self.each_index do |i|
			intercambio=false
			self.each_index do |j|
				if self[i] < self[j]
					self[i],self[j]=self[j],self[i]
					intercambio=true
				end
			end
			break if intercambio==false
		end
		return self
	end
end	
