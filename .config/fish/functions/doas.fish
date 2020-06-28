# Defined in - @ line 1
function doas --wraps='doas -- ' --description 'alias doas doas -- '
 command doas --  $argv;
end
