%this is only the part I added, the code added by MATLAB isn't attached

%this code gets executed when the button is ppushed, assuming the textfields all filled 
function CalculateButtonPushed(app, event)
            vz_string = (app.zEditField.Value);
            vx_string = (app.xEditField.Value);
            t_string = (app.tEditField.Value);
            
            t = (sscanf(t_string, '%f'))';
            vx = (sscanf(vx_string, '%f'))';
            vz = (sscanf(vz_string, '%f'))';
           
            chosenmethodInteg = 1;
            if app.methodDropDown.Value == "trapezoidal"
                chosenmethodInteg = 1;
            elseif app.methodDropDown.Value == "simpson 1/3"
                chosenmethodInteg = 3;
            end
            [x,z,t] = tool3(vx,vz,t,chosenmethodInteg);
            
            app.VxTextArea.Value = string(x);
            app.VzTextArea.Value = string(z);
            
            plot(app.UIAxes,x,z);
            
end
