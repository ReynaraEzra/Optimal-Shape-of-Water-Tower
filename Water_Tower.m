clc;
clear all;
H = 2; %Nilai H adalah tinggi tangki dalam satuan meter
V = 1; %Nilai V adalah volume tangki dalam satuan meter kubik
h = 0:0.005:H; %Nilai h adalah 
n = 100; %Nilai maksimal dari mu
for mu = 0:1:n %Nilai mu kita variasikan dari 0 sampai n
    C = sqrt((V*(2*mu+1))/(pi*H^(2*mu+1)));
    f = C*h.^(mu); %Fungsi jari - jari pada ketinggian tertentu pada bentuk tangki circularly symmetric
    plot(f,h); %Membuat grafik
    xlabel('nilai f(h)');
    ylabel('nilai h');
    title('Fungsi Umum untuk Tangki Circulary Symmetric');
    hold on;
end
print -depsc myfig.eps