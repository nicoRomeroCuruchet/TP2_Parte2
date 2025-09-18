extern malloc
extern free
extern fprintf
extern printf

section .data

section .text

global strCmp
global strClone
global strDelete
global strLen
global strList

; ** String **

; int32_t strCmp(char* a, char* b)
strCmp:
	ret

; char* strClone(char* a)
strClone:
	ret

; void strDelete(char* a)
strDelete:
	ret


; uint32_t strLen(char* a)
strLen:
	ret

; struct lista strList(char** strings);
strList:
	ret
