x1=imread('TTD1.bmp');    
d1=x1(1:100); 

x2=imread('TTD2.bmp');    
d2=x2(1:100); 

x3=imread('TTD3.bmp');    
d3=x3(1:100); 

x4=imread('TTD4.bmp');    
d4=x4(1:100); 

x5=imread('TTD5.bmp');    
d5=x5(1:100);

x6=imread('TTD6.bmp');    
d6=x6(1:100); 

x7=imread('TTD7.bmp');    
d7=x7(1:100); 

x8=imread('TTD8.bmp');    
d8=x8(1:100); 

x9=imread('TTD9.bmp');    
d9=x9(1:100); 

x10=imread('TTD10.bmp');    
d10=x10(1:100); 

sx1=imread('NTTD1.bmp');
sd1 =sx1(1:100);

sx2=imread('NTTD2.bmp');    
sd2 =sx2(1:100);

sx3=imread('NTTD3.bmp');    
sd3 =sx3(1:100);

sx4=imread('NTTD4.bmp');    
sd4 =sx4(1:100);

sx5=imread('NTTD5.bmp');    
sd5 =sx5(1:100);

sx6=imread('NTTD6.bmp');    
sd6 =sx6(1:100);

sx7=imread('NTTD7.bmp');    
sd7 =sx7(1:100);

sx8=imread('NTTD8.bmp');    
sd8 =sx8(1:100);

sx9=imread('NTTD9.bmp');    
sd9 =sx9(1:100);

sx10=imread('NTTD10.bmp');
sd10 =sx10(1:100);

D  =[d1 d2 d3 d4 d5 d6 d7 d8 d9 d10];
SD =[sd1 sd2 sd3 sd4 sd5 sd6 sd7 sd8 sd9 sd10];

%  PROSES TRAINING 
%   jumlah hidden layer = 1 neuron = 2
%   Jumlah output layer = 1 neuron = 1

%   pilih alpha =0.01 (learning rate)


% inisialisasi bobot awal 
W111=zeros(1,100); %bobot neuron 1 layer 1
W121=zeros(1,100); %bobot neuron 2 layer 1
W1 = [W111 ; W121];

W2=ones(1,2)  ;  %bobot neuron 3 layer 2
B1=ones(1,2)'; %bias neuron 1 2 dan 3 
B2=1;
% 
% %FORWARD PROPAGATION untuk target 1
% for x = 1: 10 
% %hitung n1
% A0 = D((100*(x-1)+1) : 100*x )';
% N1 =  W1*A0 + B1;
% a1(1)= logsig(N1(1));
% a1(2)= logsig(N1(2));
% A1=[a1(1) a1(2)]';
% 
% N2 = W2*(A1) + B2;
% A2= logsig(N2);
% 
% T = 1;
% e1 = T - A2;
% 
% %backpropagation 
% 
% S2= -2*(1-A2)*(A2)*e1;
% % tentukan matriks F1
% F1=[(1-a1(1))*a1(1) 0; 0 (1-a1(2))*a1(2)];
% S1=  F1*W2'*S2;
% 
% %update bobot dan bias 
% alpha=0.01;
% W2 = W2 - (alpha*S2*A1');
% B2 = B2 -(alpha*S2);
% 
% W1 = W1 -(alpha*S1*A0');
% B1 = B1 -(alpha*S1);
% 
% end 
%

