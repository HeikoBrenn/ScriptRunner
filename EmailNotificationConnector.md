# Configuring the Mail Notification Connector

How to configure the ScriptRunner E-mail Notification Connector to send e-mail notifications
Please note that an administrative PowerShell console at the ScriptRunner Service host is required to run the cmdlets of the ScriptRunnerSettings module.

Mail notifications are useful to inform administrators, users or groups about if and when a specific action has been executed.

You can choose if a mail is sent each time an action is executed, or only if the execution was successful or erroneous.

The e-mail notification can be configured with the ScriptRunner PowerShell module.

**Get-AsrEMailNotificationConnector**

Gets the current settings of the ScriptRunner Email Notification Connector

**Test-AsrEMailNotificationConnector**

Tests the current Email Notification Connector settings

**Set-AsrEMailNotificationConnector**

With the parameters On/Off the notifications can be activated/deactivated.
The following settings must be configured beforehand:

Host - Name of the SMTP server

Port - Port of the SMTP server

UseTLS - Use of TLS yes/no

MailboxAccount - Empty for anonymous logon else normally the email address

Password/ClearPassword - Empty for anonymous logon else the password as securestring or clear text

UseMailboxAsSender - The mailbox of the user is used. Its e-mail address is used as the sender address. Sent e-mails are stored as sent e-mails in the mailbox (system-dependent).

Sender - Sender e-mail address if UseMailboxSender=no

Restart - Restarts the ScriptRunner service to apply changes immediately

**Example:**

 Set-AsrEMailNotificationConnector -On -Host exchange.company.net -Port 587 -UseTLS yes -Sender administrator@company.net -Restart



The receivers as well as the trigger of a notification message, can be defined for each action in the action wizard. To do this, select the action and click the EDIT button in the Action Bar.

Then, select the wizard tab Set Result Options & Notifications.

The subject of the e-mail contains per default ScriptRunner 'Result of execution' and the name of the action.
The body contains a simple short report, the full PowerShell report is attached to the e-mail.
