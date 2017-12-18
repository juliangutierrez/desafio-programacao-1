class ParseFileService
	
	def fire!(tempfile)
		lines = read(tempfile)

		purchases = []
    lines.each do |line| 
    	line_array = line.force_encoding("UTF-8").split(/\t/)
   		purchases << persist(line_array)
  	end
  	purchases	
	end

	private
		def read(file)
			lines = file.readlines.map(&:chomp)
			lines.shift
			lines
		end

		def persist(array)
			Purchase.transaction do
				purchaser = Purchaser.find_or_create_by( name: array[0])
		    merchant = Merchant.find_or_create_by(name: array[5]) do |merchant_temp|
		    	merchant_temp.address = array[4]
		    end
		    item = Item.create(description: array[1], price: array[2].to_f, merchant: merchant)
		    Purchase.create(purchaser: purchaser, item: item, count: array[3].to_i)
		  end
		end
end