

#ifdef PMA_QM_START_SEC_VAR_INIT
# ifdef PMA_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# define PMA_MEMMAP_SECTION_OPEN
#define START_SEC_VAR_PMA_QM_INIT
#undef MEMMAP_ERROR
# pragma section ".data.PMA_QM_VAR_INIT" aw 4 /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef PMA_QM_START_SEC_VAR_INIT
#endif

#ifdef PMA_QM_STOP_SEC_VAR_INIT
# ifndef PMA_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# undef PMA_MEMMAP_SECTION_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# ifndef START_SEC_VAR_PMA_QM_INIT
#  error Section PMA_QM_VAR_INIT is currently not opened and so cannot be closed.
# endif
# undef START_SEC_VAR_PMA_QM_INIT /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef PMA_QM_STOP_SEC_VAR_INIT
#undef MEMMAP_ERROR
#endif

#ifdef PMA_QM_START_SEC_CODE
# ifdef PMA_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# define PMA_MEMMAP_SECTION_OPEN
# define PMA_QM_CODE_OPEN
# undef MEMMAP_ERROR /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section ".text.PMA_QM_CODE" ax 4 /* PRQA S 3116 */ /* MD_MSR_Pragma */
# undef PMA_QM_START_SEC_CODE /* PRQA S 0841 */ /* MD_MSR_Undef */
#endif

#ifdef PMA_QM_STOP_SEC_CODE
# ifndef PMA_MEMMAP_SECTION_OPEN
#  error No MemMap section is currently opened.
# endif
# undef PMA_MEMMAP_SECTION_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# ifndef PMA_QM_CODE_OPEN
#  error Section PMA_QM_CODE is currently not opened and so cannot be closed.
# endif
# undef PMA_QM_CODE_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section /* PRQA S 3116 */ /* MD_MSR_Pragma */
# undef PMA_QM_STOP_SEC_CODE /* PRQA S 0841 */ /* MD_MSR_Undef */
# undef MEMMAP_ERROR /* PRQA S 0841 */ /* MD_MSR_Undef */
#endif
