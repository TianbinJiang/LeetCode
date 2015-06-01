// Pow and Sqrt

double pow(double x, int n){
	if(n == 0) return 1;
	int m = n > 0 ? n : -n;
	double ret;
	double v = pow(x, m / 2);
	ret = v * v;
	if(m & 0x1) ret = x * ret;
	return n < 0 ? 1/ret : ret;
}

int sqrt(int x) {
	long long left = 0, right = x
	while(left < right) {
		long long mid = (left + right) / 2;
		if(mid * mid < x && (mid + 1) * (mid + 1) > x)
			return (int)mid;
		if(mid * mid < x)
			left = mid + 1;
		else
			right = mid - 1;
	}
}
