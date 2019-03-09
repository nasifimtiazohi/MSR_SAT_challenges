-- MSR 2019 Mining Challenge Dataset
SELECT
 Id, Title, Body, Score, ViewCount, AnswerCount, CommentCount, FavoriteCount, STRING(CreationDate) AS CreateDate, AcceptedAnswerId 
FROM
[sotorrent-org.2018_09_23.Posts]
WHERE
--AnswerCount > 0
Score >= 0
AND ViewCount > 0
AND (PostTypeId==1)
AND (Tags LIKE '%fxcop%'
OR Tags LIKE '%bandit%'
OR Tags LIKE '%brakeman%'
OR Tags LIKE '%findbug%'
OR Tags LIKE '%find-sec-bug%'
OR Tags LIKE '%flawfinder%'
OR Tags LIKE '%pmd%'
OR Tags LIKE '%prefast%'
OR Tags LIKE '%sonarqube%'
OR Tags LIKE '%spotbug%'
OR Tags LIKE '%coverity%'
OR Tags LIKE '%fortify%'
OR Tags LIKE '%klocwork%'
OR Tags LIKE '%parasoft%'
OR Tags LIKE '%pvs-studio%'
OR Tags LIKE '%veracode%'
OR Tags LIKE '%static-analysis%')
AND (Title LIKE '%warning%'
OR Title LIKE '%alert%'
OR Title LIKE '%alarm%'
OR TITLE LIKE '%positive%'
OR TITLE LIKE '%negative%'
OR Title Like '%notif%'
OR Title LIKE '%output%'
OR Title LIKE '%right%'
OR Title LIKE '%wrong%');