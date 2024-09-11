syms x
f = x^2;
df = diff(f,x);
hf = matlabFunction(df);
hf(2)