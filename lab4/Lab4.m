%
U_m=220;
f_1=50;                     
I_n=11.4;                   
Lm=0.164;                   
L1=0.169;                   
L2=0.172;                   
R1=1.32;                   
R2=0.92 ;    
J=0.2;                  
Pn=5500 ;                  
s_n=0.035;                  
z=2;                   
Mn=Pn*z/((1-s_n)*2*pi*f_1); 
i_lim=4.5;                
m_max=2;
Lls = L1-Lm;
Llr = L2-Lm;
Tn=Pn*z/((1-s_n)*2*pi*f_1);%%%%

w0=2*pi*f_1/z;
T2=L2/R2;
K1=Lm/L1;
K2=Lm/L2;
R_1=(K2^2)*R2+R1;
R_2=(K1^2)*R1+R2;
L_1=L1*(1-K1*K2);
L_2=L2*(1-K1*K2);
T_1=L_1/R_1;
T_2=L_2/R_2;


X1=2*pi*f_1*(L1-Lm);
X2k=2*pi*f_1*(L2-Lm);
Xk=X1+X2k;
sk=s_n*(m_max + sqrt(m_max*m_max-1));
sk1=R2/(sqrt(R1^2+Xk^2));
%sk=sk1;
Te = 1/(w0*sk);
%Te=T_2;
beta = 2*m_max*Mn/(w0*sk);
J_m=J;
U=220;
Tm = J/beta;

m1=3;
Um=220;
omega_1=2*pi*f_1/z;
c1=1;
x1sig=X1;
x2sig_priv=X2k;
M_max_th=m1*(Um^2)/(2*omega_1*c1*(x1sig+c1*x2sig_priv));

U_l = sqrt(3)*U_m; 
