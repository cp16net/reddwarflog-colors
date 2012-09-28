syn match RDTimestamp "^\d\{4}-\d\{2}-\d\{2} \d\{2\}:\d\{2}:\d\{2}" nextgroup=RDLevel
syn match RDLevel " [A-Z]\+ " nextgroup=RDModule skipwhite contains=RDLevelAudit,RDLevelCritical,RDLevelDebug,RDLevelError,RDLevelInfo,RDLevelWarning
syn match RDLevelAudit "AUDIT" contained
syn match RDLevelDebug "DEBUG" contained
syn match RDLevelError "ERROR" contained
syn match RDLevelCritical "CRITICAL" contained
syn match RDLevelInfo "INFO" contained
syn match RDLevelWarning "WARNING" contained

syn match RDModule "[a-zA-Z_\-]\+\([.][a-zA-Z_\-]\+\)\+" skipwhite

syn match RDPath "[.]\?/\([a-zA-Z0-9_\-.]\+\)"
syn match RDPath "mysql://[a-zA-Z0-9:/@.]\+"
syn match RDPath "\(http://\)\?\([0-9]\{1,3}[.]\)\{3}[0-9]\{1,3}\(:[0-9]\+\)\?\(/[0-9]\+\)\?"
syn match RDPath "\(http:/\)\?/[a-zA-Z0-9\-_/.@$%=?{}]\+"

syn match RDRequest " GET " nextgroup=RDPath
syn match RDRequest " POST " nextgroup=RDPath
syn match RDRequest " DELETE " nextgroup=RDPath

syn match RDHash "[a-fA-F0-9]\{32,}"
syn match RDUUID "[a-fA-F0-9]\{8,}-[a-fA-F0-9]\{4,}-[a-fA-F0-9]\{4,}-[a-fA-F0-9]\{4,}-[a-fA-F0-9]\{12,}"

hi link RDLevelAudit PreProc
hi link RDLevelDebug Debug
hi link RDLevelError Error
hi link RDLevelCritical Error
hi link RDLevelInfo Statement
hi link RDLevelWarning Todo

hi link RDTimestamp Comment
hi link RDModule Constant
hi link RDPath Special
hi link RDRequest SpecialChar
hi link RDHash Underlined
hi link RDUUID Underlined
