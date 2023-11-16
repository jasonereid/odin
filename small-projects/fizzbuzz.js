let userNum = parseInt(prompt(("please enter the number you want to fizz buzz up to: ")));

console.log("you entered " + userNum);

for (let i = 1; i <= userNum; i++) {
    if (((i % 3) === 0) && ((i % 5) === 0)) {
        console.log("fizzbuzz");
    }
    else if ((i % 3) === 0) {
        console.log("fizz");
    }
    else if((i % 5) === 0) {
        console.log("buzz");
        console.log(i);
    }
    else {
        console.log(i);
    }
}