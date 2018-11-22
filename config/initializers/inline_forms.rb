GENDER = { 1 => '--', 2 => 'vrouwelijk', 3 => 'mannelijk' }
JA_NEE = {1 => '--', 2 => 'nee', 3 => 'ja'}
JA_NEE_ONBEKEND = JA_NEE.merge({ 4 => 'onbekend'})

SLUG_REGEX = /[a-z][a-z0-9]|[a-z][a-z0-9_-]+[a-z0-9]/
USERNAME_REGEX = /[a-z][a-z0-9_-]+[a-z0-9]/

MAX_LINK_NAME_LENGTH = 20
ELLIPSIS = '...'
