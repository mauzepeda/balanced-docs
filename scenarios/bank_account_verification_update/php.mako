<%namespace file='/_main.mako' name='main'/>
% if request is UNDEFINED:
    Balanced\Verification->save()

% else:
    ${main.php_boilerplate()}
$verification = Balanced\Verification::get("${request['uri']}");
% for k, v in payload.iteritems():
$verification.${ k } = ${ v };
% endfor
$verification->save();
% endif
