function countEvenNumbersUpto5(array){

    let cnt = 0;
    for(let i = 0; i < array.length; i++){
        if(array[i] % 2 == 1)
            continue;
        else{
            cnt++;
        }           

        if(cnt==5)
        break;
    }

    return cnt;

}

const result1 = countEvenNumbersUpto5( [1,2,3,4,6,8,10,12,13,14,15,16] );
	console.log(result1); 
	    
	const result2 = countEvenNumbersUpto5( [1,3,5,6,8,10] );
	console.log(result2); 