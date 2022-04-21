currDate = () => {
    var curr = new Date();
    return (curr.getFullYear() + " : " + (curr.getMonth()+1) + " : " + curr.getDate());
}
console.log(currDate());