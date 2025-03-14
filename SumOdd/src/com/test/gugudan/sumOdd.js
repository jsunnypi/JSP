function sumOdd(array){
	
	let sum = 0;
	
	for(let i=0; i < array.length; i++){
		
		if(array[i]%2 ==1){
			sum += array[i]	
		}
		
	}
	
	return sum;
	
	const result = sumOdd([1,2,3,4,5]);
	console.log(result);
	
	
	
}