function dateDiff(d1, d2){
    var dt1 = new Date(d1);
    var dt2 = new Date(d2);
    var tdiff = dt2.getTime()-dt1.getTime();
    var ans = tdiff/(1000*60*60*24);
    return ans;
}
console.log(dateDiff('12/02/2014', '11/04/2014'));
console.log(dateDiff('04/02/2014', '11/04/2014'));

