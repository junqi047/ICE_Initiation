function plot_out_for_engine(t,W_th,W_e,W_e_fg,p_im,p_em,T_im,T_em,X_r_im,X_r_em,Tq_e)
    
    subplot(5,1,1)
    plot(t,[W_th,W_e W_e_fg])
    xlabel('t, (s)')
    ylabel('mass flow, (kg/s)')
    legend('Throttle','Engine exhaust','Engine fresh gas','Location','NorthEast')
    
    subplot(5,1,2)
    plot(t,[p_im,p_em]*1e-3)
    xlabel('t, (s)')
    ylabel('Pressure, (kpa)')
    legend('Intake','Exhaust','Location','NorthEast')
    
    subplot(5,1,3)
    plot(t,[T_im,T_em])
    xlabel('t, (s)')
    ylabel('Temperature, (K)')
    legend('Intake','Exhaust','Location','NorthEast')
    
    subplot(5,1,4)
    plot(t,[X_r_im,X_r_em])
    xlabel('t, (s)')
    ylabel('X r, (-)')
    legend('Intake','Exhaust','Location','NorthEast')
    
    subplot(5,1,5)
    plot(t,Tq_e)
    xlabel('t, (s)')
    ylabel('Torque, (Nm)')
end