GENDER = { 1 => '--', 2 => 'vrouwelijk', 3 => 'mannelijk' }
JA_NEE = {1 => '--', 2 => 'nee', 3 => 'ja'}
JA_NEE_ONBEKEND = JA_NEE.merge({ 4 => 'onbekend'})
ABSENCE_STATUS  = { 1 => 'aanwezig', 3 => 'laat met reden', 4 => 'laat' , 5 => 'afwezig met reden', 6 => 'afwezig' }
ABSENCE_COLORS  = { 1 => 'green',    3 => 'orange',         4 => 'red',  5 => 'orange', 6 => 'red' }
ABSENCE_LETTERS = { 1 => 'A',        3 => 'L',              4 => 'L',    5 => 'A',      6 => 'A' }

SLUG_REGEX = /[a-z][a-z0-9]|[a-z][a-z0-9_-]+[a-z0-9]/
USERNAME_REGEX = /[a-z][a-z0-9_-]+[a-z0-9]/
