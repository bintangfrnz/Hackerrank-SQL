-- Author: Bintang Fajarianto
-- Date: May 8 2024

set @current := 21; 
select repeat("* ", @current := @current - 1) 
from information_schema.tables;