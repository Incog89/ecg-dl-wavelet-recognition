function EnviarCorreoDeRecuperacionButtonPushed(app, event)
            numerover = num2str(generarNumeroAleatorio(app, 1000, 9999));
            correo = get(app.EditFieldCorreo, 'Value');
            disp(correo)
            mail = 'rengerrojo@gmail.com';
            password = 'dsuybsayemcmfpmm';
            server = 'smtp.gmail.com';

            setpref('Internet','E_mail', mail);
            setpref('Internet','SMTP_Server', server);
            setpref('Internet','SMTP_Username',mail);
            setpref('Internet','SMTP_Password',password);
            setpref('Internet','SMTP_Auth', 'true');

            props = java.lang.System.getProperties;
            props.setProperty('mail.smtp.auth','true');
            props.setProperty('mail.smtp.socketFactory.class','javax.net.ssl.SSLSocketFactory');
            props.setProperty('mail.smtp.socketFactory.port','465');
            
            % Conectar a la base de datos
            db = database('bd_Usuarios','root','');
            % Consultar la tabla de información
            selectquery = "SELECT * FROM informacion WHERE email = '" + app.EditFieldCorreo.Value + "'";
            resultados = select(db,selectquery);

            % Revisar que el query contenga información
            if ~isempty(resultados)
                sendmail(correo,'Mensaje de Recuperacion',numerover);
                app.NotiCorreo.Text = "Mensaje Correctamente enviado";
                app.NotiCorreo.Position = [232 417 179 22];
                app.EditFieldNumero.Visible = "on";
                app.VerificarButton.Visible = "on";
                app.LabelNum.Visible = "on";
            else
                app.NotiCorreo.Text = "No existe la cuenta";
                app.NotiCorreo.Position = [232 417 179 22];
            end
        end

