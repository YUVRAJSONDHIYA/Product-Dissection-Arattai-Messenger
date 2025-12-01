-- USER
CREATE TABLE Users (
    UserID           SERIAL PRIMARY KEY,
    Username         VARCHAR(50) NOT NULL,
    Email            VARCHAR(255),
    PhoneNumber      VARCHAR(20),
    Profile_Picture  VARCHAR(255),
    Status           VARCHAR(255),
    Registration_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- CHAT
CREATE TABLE Chats (
    ChatID       SERIAL PRIMARY KEY,
    ChatType     VARCHAR(20) NOT NULL, -- '1-1' or 'Group'
    CreatedDate  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- MESSAGE
CREATE TABLE Messages (
    MessageID    SERIAL PRIMARY KEY,
    ChatID       INT NOT NULL,
    SenderID     INT NOT NULL,
    MessageType  VARCHAR(20) NOT NULL, -- Text, Image, Video, Document, etc.
    Content      TEXT,
    Timestamp    TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (ChatID)  REFERENCES Chats(ChatID),
    FOREIGN KEY (SenderID) REFERENCES Users(UserID)
);

-- GROUP
CREATE TABLE Groups (
    GroupID      SERIAL PRIMARY KEY,
    GroupName    VARCHAR(100) NOT NULL,
    AdminID      INT NOT NULL,
    CreatedDate  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (AdminID) REFERENCES Users(UserID)
);

-- GROUP MEMBER
CREATE TABLE GroupMember (
    GroupMemberID SERIAL PRIMARY KEY,
    GroupID       INT NOT NULL,
    UserID        INT NOT NULL,
    JoinDate      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (GroupID) REFERENCES Groups(GroupID),
    FOREIGN KEY (UserID)  REFERENCES Users(UserID)
);

-- CALL
CREATE TABLE Calls (
    CallID        SERIAL PRIMARY KEY,
    CallerID      INT NOT NULL,
    ReceiverID    INT NOT NULL,
    CallType      VARCHAR(20) NOT NULL,  -- Voice or Video
    CallDateTime  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Duration      INT, -- in seconds
    
    FOREIGN KEY (CallerID)   REFERENCES Users(UserID),
    FOREIGN KEY (ReceiverID) REFERENCES Users(UserID)
);

-- MEDIA
CREATE TABLE Media (
    MediaID    SERIAL PRIMARY KEY,
    MessageID  INT NOT NULL,
    MediaType  VARCHAR(20) NOT NULL, -- Image, Video, Document, Audio
    MediaURL   VARCHAR(255) NOT NULL,
    
    FOREIGN KEY (MessageID) REFERENCES Messages(MessageID)
);
