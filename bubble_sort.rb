def bubble_sort(anArray)
	
	(anArray.length-1).downto(1) do |i|
		
		for x in 0...i
			if anArray[x]>anArray[x+1]
				tmp=anArray[x]
				anArray[x]=anArray[x+1]
				anArray[x+1]=tmp
			end
		end
	end
	puts anArray.inspect
end


def bubble_Sort_by(anArray)
	(anArray.length-1).downto(1) do |i|
		
		for x in 0...i
			if yield(anArray[x],anArray[x+1])>0
				tmp=anArray[x]
				anArray[x]=anArray[x+1]
				anArray[x+1]=tmp
			end
		end
	end
	puts anArray.inspect
end



bubble_sort([4,3,78,2,0,2])
bubble_Sort_by(["hi","hello","hey"]) do |left,right| 
	left.length-right.length
end