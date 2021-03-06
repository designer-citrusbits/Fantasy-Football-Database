CREATE VIEW KView AS SELECT
		PlayerGame2010.PlayerID AS 'PlayerID',
		Players.Name AS 'Name',
		Players.Position AS 'Position',
		PlayerGame2010.GameID AS 'GameID',
		Games.Date AS 'Date',
		Stadiums.Name AS 'Location',
		Stadiums.Surface AS 'Surface',
		Stadiums.Roof AS 'Roof',
		Games.Temperature AS 'Temp',
		Games.Humidity AS 'Humidity',
		Games.Wind AS 'Wind',
		PlayerGame2010.XPMade AS 'XPMade',
		PlayerGame2010.XPAtt AS 'XPAtt',
		PlayerGame2010.FGMade AS 'FGMade',
		PlayerGame2010.FGAtt AS 'FGAtt',
		PlayerGame2010.PassCmp AS 'PassCmp',
		PlayerGame2010.PassAtt AS 'PassAtt',
		PlayerGame2010.PassYds AS 'PassYds',
		PlayerGame2010.PassTd AS 'PassTD',
		PlayerGame2010.Int AS 'Int',
		PlayerGame2010.RushAtt AS 'RushAtt',
		PlayerGame2010.RushYds AS 'RushYds',
		PlayerGame2010.RushTd AS 'RushTd',
		PlayerGame2010.RushLng AS 'RushLng',
		PlayerGame2010.Fmb AS 'Fmb',
		PlayerGame2010.FL AS 'FL'
FROM PlayerGame2010, Games, Players, Stadiums
WHERE PlayerGame2010.PlayerID = Players.PlayerID AND
	  PlayerGame2010.GameID = Games.GameID AND
	  Games.StadiumID = Stadiums.StadiumID AND
	  Players.Position = 'K';