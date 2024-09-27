CREATE DATABASE DotNetCourseDatabase
GO

USE DotNetCourseDatabase
GO

CREATE SCHEMA TutorialAppSchema
GO

CREATE TABLE TutorialAppSchema.Computer
(
    -- TableId INT IDENTITY(Starting, Increment By)
    ComputerId INT IDENTITY(1,1) PRIMARY KEY,
    -- Motherboard CHAR(10) 'x' 'x         '
    -- Motherboard VARCHAR(10) 'x' 'x'
    Motherboard NVARCHAR(50),
    CPUCores INT,
    HasWiFi BIT,
    HasLTE BIT,
    ReleaseDate DATETIME,
    Price DECIMAL (18, 4),
    VideoCard NVARCHAR(50)
)
GO

SELECT [ComputerId],
[Motherboard],
[CPUCores],
[HasWifi],
[HasLTE],
[ReleaseDate],
[Price],
[VideoCard] FROM TutorialAppSchema.Computer --WHERE 1 = 0

-- SET IDENTITY_INSERT TutorialAppSchema.Computer ON
-- SET IDENTITY_INSERT TutorialAppSchema.Computer OFF

INSERT INTO TutorialAppSchema.Computer (
[Motherboard],
[CPUCores],
[HasWifi],
[HasLTE],
[ReleaseDate],
[Price],
[VideoCard]
) VALUES (
    'Sample-Motherboard',
    4,
    1,
    0,
    '2025-01-01',
    1000,
    'Sample-Videocard'
)

DELETE FROM TutorialAppSchema.Computer WHERE ComputerId = 119

SELECT [ComputerId],
[Motherboard],
ISNULL([CPUCores], 4) AS CPUCores,
[HasWifi],
[HasLTE],
[ReleaseDate],
[Price],
[VideoCard] FROM TutorialAppSchema.Computer

UPDATE TutorialAppSchema.Computer SET CPUCores = NULL WHERE ReleaseDate > '2017-01-01'

SELECT [ComputerId],
[Motherboard],
ISNULL([CPUCores], 4) AS CPUCores,
[HasWifi],
[HasLTE],
[ReleaseDate],
[Price],
[VideoCard] FROM TutorialAppSchema.Computer
    ORDER BY HasWifi DESC, ReleaseDate DESC