clc;
clear all;
% FPGA_System Sampling Time(FPGA_ST) = 20e-9: 
% Note: All Sampling Time (ST) should be Integral Multiple of  FPGA_System Sampling Time. 
%  SF : 100 MH -->  ST : 10e-9 Sec
%  SF : 50 MH  -->  ST : 20e-9 Sec
%  SF : 25 MH  -->  ST : 40e-9 Sec
%  SF : 12.5MH -->  ST : 80e-9 Sec
%  .
%  .
%  .
%  .


% General Parameters

% FPGA_System Sampling Time(FPGA_ST) = 20e-9: 
% Exp_SF:       Experimental Sampling Frequency in Hz(Exp_SF)= 1 / Exp_ST
% Exp_ST:       Experimental Sampling Time (Exp_ST) = Sampling Time of all Constants in the Program
% InPort_ST:    Inport Sampling Time (Inport_ST)= Sampling Time of all Gateway In Blocks



FPGA_ST=20e-9;

Exp_SF= 500;

Exp_ST=1/Exp_SF;

InPorts_ST=Exp_ST;


% Controller Parameters

% Cnt_CPS:  Controller Cycles Per Seconds (Cnt_CPS) = Data Sampler Frequency (Integral and Derivative Sampling)
% Kp:       Propotional_Constant ( Kp)
% Kd:       Derivative_Constant  ( Kd)
% Ki:       Integral_Constant    ( Ki)

Cnt_CPS=10;

Kp1= 0;
Kp2= 0.25;

Kd1= 0;
Kd2= 0.004;

Ki1= 0;
Ki2= 0.03;

% Integral Controller Accumulator Length ( Max of 9 Acumulation )
% Err_Acc_Len: Number of Error Accumulated 

Err_Acc_Len = 9;

Reg_En= (2^Err_Acc_Len)-1 ;


% PWM Generator Parameters
% Saw_CPS: Sawtooth Frequency

Saw_CPS=100;


% Cause Effect Timing relationship 
% RSLSn_D:  nth Right and Left Sensor Error Delay Time as a Mutiple of Exp_ST 
% RSLSn_D = m*Exp_ST

RSLS1_D=0;
RSLS2_D=10;
RSLS3_D=40;
RSLS4_D=75;

