x=trnData;
y=tstData;
%Plot the data
plot(x,y,'x')
grid on; 
xlabel('parameter'); ylabel('output'); title('as per data')
%DESIGN THE NETWORK
[x,y] = simplefit_dataset;
net = feedforwardnet(1000); 
net = train(net,x,y);
view(net)
y = net(x);
perf = perform(net,x,y)
