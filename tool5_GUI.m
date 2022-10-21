%this is only the code I have written, parts of code provided by MATLAB isn't attached

%this code gets executed when the button is pushed, assuming the textboxes are filled

function calculateButtonPushed(app, event)
            vi_string = (app.viEditField.Value);
            thetai_string = (app.thetaiEditField.Value);
            m_string = (app.mEditField.Value);
            D_string = (app.DEditField.Value);
            
            D = (sscanf(D_string, '%f'))';
            m = (sscanf(m_string, '%f'))';
            vi = (sscanf(vi_string, '%f'))';
            thetai = (sscanf(thetai_string, '%f'))';
            thetai_rad = thetai*(3.14/180);
            
            chosenmethodDiffEq = 1;
            if app.DropDown1.Value == "ignoring air resistance"
                chosenmethodDiffEq = 0;
            elseif app.DropDown1.Value == "including air resistance with Euler method"
                chosenmethodDiffEq = 1;
            elseif app.DropDown1.Value == "including air resistance with RK4 method"
                chosenmethodDiffEq = 4;
            end
            
            chosenmethodInteg = 1;
            if app.DropDown2.Value == "trapezoidal"
                chosenmethodInteg = 1;
            elseif app.DropDown2.Value == "simpson 1/3"
                chosenmethodInteg = 3;
            end
            
            [t, vx ,vz,v, theta] = tool4(vi,thetai_rad,D,m,chosenmethodDiffEq);
            [x,z,t] = tool3(vx,vz,t,chosenmethodInteg);
            L = tool1(x,z);
            app.LTextArea.Value = string(L);
            
            plot(app.UIAxes,x,z);
            
        end
