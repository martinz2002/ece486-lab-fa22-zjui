% -------------------------------------------------------------%
% [Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] =
% StepResponseMetrics(y,t, yStartIndex, ssVal)
%
% DESCRIPTION:
% function StepResponseMetrics determines the overshoot, 
% rise-time, and steady-state time for a step input signal. 
%
%INPUTS:
% y : a 1 dimensional array of the response
% t : an array of the time (in seconds)
% yStartIndex : (integer) the array index when the step input begins
% ssVal : the steady state value that y approaches
%
%OUTPUTS:
%Mp : overshoot percent
%tr : rise time for the signal 10-90%
%ts : time from 
%MpIndex: index of the time array where it is maximum
%t_10index:  index of the time array where it is first at 10% of signal
%t_90index:  index of the time array where it is first at 90% of signal
%tssIndex:   index of the time array where it is at steady-state
% -------------------------------------------------------------%
function [Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(y,t, yStartIndex, ssVal)

% calculate Mp, tr, ts:
 
%Mp
% Hint:  remember that Mp is the maximum reponse -- so you can use max(y)
% to get the maximum response
[MaxResponse,MpIndex] = max(y);
% Mp is the percentage overshoot -- so if the steady state value is 5.0 and
% the maximum response is 7.5, Mp = 50%.  If the maximum response was 4.9,
% Mp is 0.
Mp = 
 
%tr
% tr is the time required for the response to rise from 10% of the
% steady-state value to 90% of the steady-state value.  The function 'find'
% is useful here.  Type "helpwin find" to see how it works.  
t_10index = find(  y > .1*ssVal, 1, 'first');
% I've done the 10% index, you do the 90%:
t_90index  = 
tr = t(t_90index )-t(t_10index );
 
 
%ts
% ts is the time it takes for the response settle between 95% and 105% of
% the steady-state value.  One way to find ts is to use a while loop,
% initialize a counter (x) to the end of the response array, and move
% forwards through the array until the response is no longer within the
% 95-105% bounds.
x = length(y); %initialize x to the end of the array
while    %PLACE YOUR CONDITIONS HERE
    x = x-1;
end
ts = t(x)-t(yStartIndex);
tssIndex = x;

% -------------------------------------------------------------%
%                  PLOTTING THE DATA                           %
% -------------------------------------------------------------%
figure  %open a new figure pane
ss = 1:1:size(t); % the final value
ss(:) = ssVal;
per105=1.05*ss;
per95=.95*ss;
per10=.10*ss;
per90=.90*ss;
 
%plot the response and the bounds for 10%, 90%, 95% and 105%
plot(t,y,'-',t,per10,':r',t,per90,':r',t,per95,'-g',t,per105,'-g',t,ss,'--')

%add a legend
legend(['Mp = ',num2str(Mp), '%'],...
       ['10% (rise time) = ',num2str(tr), 's'],...
       '90% (rise time)',...
       ['95% (settling time) = ', num2str(ts), 's'],...
       '105% ',...
       '100% (Value_{steady-state})','Location','Best')

% document Mp
if(Mp > 0)
    text(t(MpIndex),y(MpIndex),'\leftarrow M_p',...
        'HorizontalAlignment','left')
    line([t(MpIndex);t(MpIndex)],[0,y(MpIndex)],...
        'Color','k','LineWidth',0.5,'LineStyle',':')
end
%document tr
text(t(t_10index),y(t_10index),'\leftarrow 10%',...
    'HorizontalAlignment','left')
line([t(t_10index);t(t_10index)],[0,y(t_10index)],...
    'Color','k','LineWidth',0.5,'LineStyle',':')
 
text(t(t_90index),y(t_90index),'\leftarrow 90%',...
    'HorizontalAlignment','left')
line([t(t_90index);t(t_90index)],[0,y(t_90index)],...
    'Color','k','LineWidth',0.5,'LineStyle',':')
 
% YOU DOCUMENT tss IN THE SAME WAY AS tr AND Mp
% document tss
text(
line(

title({'M_p, t_r, and t_s for a transfer function _{ECE 486}';date})
% Label the axes:
ylabel(  
xlabel(

% make the plot line thicker
hold on
plot(t,y,'-','LineWidth',2)
hold off