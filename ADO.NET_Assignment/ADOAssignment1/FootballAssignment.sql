create database ADO_DB_ASSIGNMENT

create table FootballLeague(

MatchID int Primary key, 
TeamName1 nvarchar(50), 
TeamName2 nvarchar(50), 
MatchStatus nvarchar(50), 
WinningTeam nvarchar(50), 
Points int
);

select * from FootballLeague

create procedure insert_footballleague 
	(@MatchId int, 
	@TeamName1 nvarchar(50),  
	@TeamName2 nvarchar(50), 
	@MatchStatus nvarchar(50),  
	@WinningTeam nvarchar(50), 
	@Points int )
as 
BEGIN
insert into FootballLeague values(@MatchId, @TeamName1, @TeamName2, @MatchStatus, @WinningTeam, @Points);
END

EXEC insert_footballleague 
	@MatchId=1001, 
	@TeamName1= 'Italy',	
	@TeamName2= 'France',	
	@MatchStatus = 'Win',	
	@WinningTeam = 'France',
	@Points =  4

EXEC insert_footballleague 
	@MatchId=1002, 
	@TeamName1= 'Brazil',	
	@TeamName2= 'Portugal',	
	@MatchStatus = 'Draw',	
	@WinningTeam = 'null',
	@Points =  2

EXEC insert_footballleague 
	@MatchId=1003, 
	@TeamName1= 'England',	
	@TeamName2= 'Japan',	
	@MatchStatus = 'Win',	
	@WinningTeam = 'England',
	@Points =  4

EXEC insert_footballleague 
	@MatchId=1004, 
	@TeamName1= 'USA',	
	@TeamName2= 'Russia',	
	@MatchStatus = 'Win',	
	@WinningTeam = 'Russia',
	@Points =  4

EXEC insert_footballleague 
	@MatchId=1005, 
	@TeamName1= 'Portugal',	
	@TeamName2= 'Italy',	
	@MatchStatus = 'Draw',	
	@WinningTeam = null,
	@Points =  2


EXEC insert_footballleague 
	@MatchId=1006, 
	@TeamName1= 'Brazil',	
	@TeamName2= 'France',	
	@MatchStatus = 'Win',	
	@WinningTeam = 'Brazil',
	@Points =  4


EXEC insert_footballleague 
	@MatchId=1007, 
	@TeamName1= 'England',	
	@TeamName2= 'Russia',	
	@MatchStatus = 'Win',	
	@WinningTeam = 'Russia',
	@Points =  4
	

EXEC insert_footballleague 
	@MatchId=1008, 
	@TeamName1= 'Japan',	
	@TeamName2= 'USA',	
	@MatchStatus = 'Draw',	
	@WinningTeam = 'null',
	@Points =  2

select * from FootballLeague