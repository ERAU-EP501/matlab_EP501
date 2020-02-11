%% Velocity grid and number of realizations
nbins=1000;
N=100;
v=linspace(-5e3,5e3,nbins);
M=10;
exactFs=zeros(M,nbins);


%% Generate and plot various realizations of exact PSD
for ireal=1:M
    vi=1e3*randn(1,N);
    deltavvi=delta(v,vi);
    exactFs(ireal,:)=deltavvi;
    
    if (ireal<10)
        figure(1)
        plot(v,deltavvi);
        pause;
    end %if
end %for


%% Create an ensemble average
counts=sum(exactFs,1);     %sum realizations
dv=v(2)-v(1)         %bin size
fs=counts/dv;

figure(2);
plot(v,fs);