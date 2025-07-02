-- Insert first user
INSERT INTO [dbo].[User] (User_Name, User_Surname, UserRole, Email, Password)
VALUES ('John', 'Doe', 'Admin', 'john.doe@example.com', 'hashedPassword1');

-- Insert second user
INSERT INTO [dbo].[User] (User_Name, User_Surname, UserRole, Email, Password)
VALUES ('Jane', 'Smith', 'User', 'jane.smith@example.com', 'hashedPassword2');