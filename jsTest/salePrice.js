/*옷가게에서 10만원 이상 사면 5%, 30만원 이상 사면 10%, 50만원 이상 사면 20%를 할인해 
     준다고 할 때  구매한 옷의 가격 price가 주어지면, 지불해야 할 금액을 return 하도록 
     solution 함수를 작성하시오. (20점)*/

     function solution(price){

        if(price > 100000){
            price = price * 0.95;
        }
        else if(price > 300000){
            price = price * 0.9;
        }
        else if(price > 500000){
            price = price * 0.8;
        }

        return price;
     }

     const result1 = solution(400000);
     console.log(result1);

     const result2 = solution(1000000);
     console.log(result2);

     const result3 = solution(150000);
     console.log(result3);