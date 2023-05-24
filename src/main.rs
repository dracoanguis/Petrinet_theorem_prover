fn main() {
    let r = gcd_vec(vec![12,6,-6,24]);
    println!("{r}")
}

fn gcd_vec(v:Vec<isize>) -> isize {

    v.into_iter()
    .reduce(|a,b| 
        gcd(a.unsigned_abs(),b.unsigned_abs()) as isize
    ).unwrap()
}

fn gcd(a:usize, b:usize) -> usize {
    if a == b {
        return a;
    }
    if a == 0{
        return b;
    }
    if b == 0 {
        return a;
    }
    if a%2 == 0 {
        if b%2 == 0{
            return gcd(a>>1,b>>1)<<1;
        }
        return gcd(a>>1,b);
    }
    if b%2 == 0 {
        return gcd(a,b>>1);
    }
    if a > b {
        return gcd(a.abs_diff(b)>>1,b);
    }
    return gcd(a,b.abs_diff(a)>>1);
}