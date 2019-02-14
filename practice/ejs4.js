function myfunc() {
        let myvar = document.getElementById('head').innerHTML = 'This is Not a Div';
        console.log(myvar);
    }

    function squarethis() {
        let number = document.getElementById('num');
        console.log(number);

        document.getElementById('result').innerHTML = number;
    }