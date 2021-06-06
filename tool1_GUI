
%this is only the part I added, the code added by MATLAB isn't attached

%this code gets executed when the button is ppushed, assuming the textfields all filled 
function CalculateButtonPushed(app, event)
            t_string = (app.tEditField.Value);
            x_string = (app.xEditField.Value);
            z_string = (app.zEditField.Value);
            
            t = (sscanf(t_string, '%f'))';
            x = (sscanf(x_string, '%f'))';
            z = (sscanf(z_string, '%f'))';
           
            L =tool1(x,z);
            
            app.LengthofthepathTextArea.Value = string(L);
end
