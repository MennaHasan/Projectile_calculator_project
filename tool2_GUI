%this is only the part I added, the code added by MATLAB isn't attached

%this code gets executed when the button is ppushed, assuming the textfields all filled 

unction CalculateButtonPushed(app, event)
            z_string = (app.zEditField.Value);
            x_string = (app.xEditField.Value);
            t_string = (app.tEditField.Value);
            
            t = (sscanf(t_string, '%f'))';
            x = (sscanf(x_string, '%f'))';
            z = (sscanf(z_string, '%f'))';
           
            choice = 1;
            if app.methodDropDown.Value == "O(h^2)"
                choice = 1;
            elseif app.methodDropDown.Value == "O(h^4)"
                choice = 2;
            end
            run('tool2.m');
            
            app.VxTextArea.Value = string(vx);
            app.VzTextArea.Value = string(vz);
            app.resultantvelocityTextArea.Value = string(v);
            app.angleTextArea.Value = string(theta);
            
            plot(app.UIAxes,t,vx);
            plot(app.UIAxes_2,t,vz);
            plot(app.UIAxes_3,t,v);
            plot(app.UIAxes_4,t,theta);
            
            
        end
