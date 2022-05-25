/**
 * 
 */
 
let pAry = [];
 let p = document.getElementById('pp');
 let uid = document.getElementById('uid');
 console.log(p);
fetch('../idcheck.do')
   .then(result => result.json())
   .then(result => {
   	
 

      result.forEach(val => {
         
         for (let field in val) {
            if (field == 'Uid') {
               pAry.push(val[field]);
               console.log(val[field]);
            }
         }
		
      })
      uid.addEventListener('change', function() {
         for (let field in pAry) {
            
            let idvalue = document.getElementById('uid').value;
            if(idvalue == ''){
               p.innerHTML = '';
            }
            else if (pAry[field] == idvalue && idvalue != '') {
               p.innerHTML = '이미 존재하는 계정입니다.';
               return;
            }else if(pAry[field] != idvalue && idvalue != ''){
               p.innerHTML = '사용가능한 계정입니다.';
            }

            }
      })
   })
   .catch(error => console.log(error))
      

      
 
   