
/***************************************  DATA sections - ASIL  ***************************************/

#ifdef MPU_ASIL_START_SEC_VAR_INIT
# ifdef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# define MPU_MEMMAP_SECTION_OPEN
#define START_SEC_VAR_ASIL_INIT
#undef MEMMAP_ERROR
# pragma section ".data.MPU_ASIL_VAR_INIT" aw 8 /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_ASIL_START_SEC_VAR_INIT
#endif

#ifdef MPU_ASIL_STOP_SEC_VAR_INIT
# ifndef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# undef MPU_MEMMAP_SECTION_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# ifndef START_SEC_VAR_ASIL_INIT
#  error Section MPU_ASIL_VAR_INIT is currently not opened and so cannot be closed.
# endif
# undef START_SEC_VAR_ASIL_INIT /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_ASIL_STOP_SEC_VAR_INIT
#undef MEMMAP_ERROR
#endif

#ifdef MPU_ASIL_START_SEC_VAR_NOINIT
# ifdef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# define MPU_MEMMAP_SECTION_OPEN
#define START_SEC_VAR_ASIL_NOINIT
#undef MEMMAP_ERROR
# pragma section ".bss.MPU_ASIL_VAR_NOINIT" awB 8 /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_ASIL_START_SEC_VAR_NOINIT
#endif

#ifdef MPU_ASIL_STOP_SEC_VAR_NOINIT
# ifndef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# undef MPU_MEMMAP_SECTION_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# ifndef START_SEC_VAR_ASIL_NOINIT
#  error Section MPU_ASIL_VAR_NOINIT is currently not opened and so cannot be closed.
# endif
# undef START_SEC_VAR_ASIL_NOINIT /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_ASIL_STOP_SEC_VAR_NOINIT
#undef MEMMAP_ERROR
#endif

#ifdef MPU_ASIL_START_SEC_CONST
# ifdef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# define MPU_MEMMAP_SECTION_OPEN
#define START_SEC_CONST_ASIL
#undef MEMMAP_ERROR
# pragma section ".rodata.MPU_ASIL_CONST" a /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_ASIL_START_SEC_CONST
#endif

#ifdef MPU_ASIL_STOP_SEC_CONST
# ifndef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# undef MPU_MEMMAP_SECTION_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# ifndef START_SEC_CONST_ASIL
#  error Section MPU_ASIL_CONST is currently not opened and so cannot be closed.
# endif
# undef START_SEC_CONST_ASIL /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_ASIL_STOP_SEC_CONST
#undef MEMMAP_ERROR
#endif

/***************************************  DATA sections - QM  ***************************************/
#ifdef MPU_QM_START_SEC_VAR_INIT
# ifdef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# define MPU_MEMMAP_SECTION_OPEN
#define START_SEC_VAR_QM_INIT
#undef MEMMAP_ERROR
# pragma section ".data.MPU_QM_VAR_INIT" aw 8 /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_QM_START_SEC_VAR_INIT
#endif

#ifdef MPU_QM_STOP_SEC_VAR_INIT
# ifndef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# undef MPU_MEMMAP_SECTION_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# ifndef START_SEC_VAR_QM_INIT
#  error Section MPU_QM_VAR_INIT is currently not opened and so cannot be closed.
# endif
# undef START_SEC_VAR_QM_INIT /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_QM_STOP_SEC_VAR_INIT
#undef MEMMAP_ERROR
#endif

#ifdef MPU_QM_START_SEC_VAR_NOINIT
# ifdef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# define MPU_MEMMAP_SECTION_OPEN
#define START_SEC_VAR_QM_NOINIT
#undef MEMMAP_ERROR
# pragma section ".bss.MPU_QM_VAR_NOINIT" awB 8 /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_QM_START_SEC_VAR_NOINIT
#endif

#ifdef MPU_QM_STOP_SEC_VAR_NOINIT
# ifndef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# undef MPU_MEMMAP_SECTION_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# ifndef START_SEC_VAR_QM_NOINIT
#  error Section MPU_QM_VAR_NOINIT is currently not opened and so cannot be closed.
# endif
# undef START_SEC_VAR_QM_NOINIT /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_QM_STOP_SEC_VAR_NOINIT
#undef MEMMAP_ERROR
#endif

#ifdef MPU_QM_START_SEC_CONST
# ifdef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# define MPU_MEMMAP_SECTION_OPEN
#define START_SEC_CONST_QM
#undef MEMMAP_ERROR
# pragma section ".rodata.MPU_QM_CONST" a /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_QM_START_SEC_CONST
#endif

#ifdef MPU_QM_STOP_SEC_CONST
# ifndef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# undef MPU_MEMMAP_SECTION_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# ifndef START_SEC_CONST_QM
#  error Section MPU_QM_CONST is currently not opened and so cannot be closed.
# endif
# undef START_SEC_CONST_QM /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_QM_STOP_SEC_CONST
#undef MEMMAP_ERROR
#endif

/***************************************  DATA sections - DEFAULT  ***************************************/
#ifdef MPU_DEFAULT_START_SEC_VAR_INIT
# ifdef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# define MPU_MEMMAP_SECTION_OPEN
#define START_SEC_VAR_DEFAULT_INIT
#undef MEMMAP_ERROR
# pragma section ".data.MPU_DEFAULT_VAR_INIT" aw 8 /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_DEFAULT_START_SEC_VAR_INIT
#endif

#ifdef MPU_DEFAULT_STOP_SEC_VAR_INIT
# ifndef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# undef MPU_MEMMAP_SECTION_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# ifndef START_SEC_VAR_DEFAULT_INIT
#  error Section MPU_DEFAULT_VAR_INIT is currently not opened and so cannot be closed.
# endif
# undef START_SEC_VAR_DEFAULT_INIT /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_DEFAULT_STOP_SEC_VAR_INIT
#undef MEMMAP_ERROR
#endif

#ifdef MPU_DEFAULT_START_SEC_VAR_NOINIT
# ifdef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# define MPU_MEMMAP_SECTION_OPEN
#define START_SEC_VAR_DEFAULT_NOINIT
#undef MEMMAP_ERROR
# pragma section ".bss.MPU_DEFAULT_VAR_NOINIT" awB 8 /* PRQA S 3116 */ /* MD_MSR_Pragma */
# pragma section ".bss" aw /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_DEFAULT_START_SEC_VAR_NOINIT
#endif

#ifdef MPU_DEFAULT_STOP_SEC_VAR_NOINIT
# ifndef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# undef MPU_MEMMAP_SECTION_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# ifndef START_SEC_VAR_DEFAULT_NOINIT
#  error Section MPU_DEFAULT_VAR_NOINIT is currently not opened and so cannot be closed.
# endif
# undef START_SEC_VAR_DEFAULT_NOINIT /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_DEFAULT_STOP_SEC_VAR_NOINIT
#undef MEMMAP_ERROR
#endif


#ifdef MPU_DEFAULT_START_SEC_CONST
# ifdef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# define MPU_MEMMAP_SECTION_OPEN
#define START_SEC_CONST_DEFAULT
#undef MEMMAP_ERROR
# pragma section ".rodata.MPU_DEFAULT_CONST" a /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_DEFAULT_START_SEC_CONST
#endif

#ifdef MPU_DEFAULT_STOP_SEC_CONST
# ifndef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# undef MPU_MEMMAP_SECTION_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# ifndef START_SEC_CONST_DEFAULT
#  error Section MPU_DEFAULT_CONST is currently not opened and so cannot be closed.
# endif
# undef START_SEC_CONST_DEFAULT /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section /* PRQA S 3116 */ /* MD_MSR_Pragma */
#undef MPU_DEFAULT_STOP_SEC_CONST
#undef MEMMAP_ERROR
#endif

/***************************************  CODE sections -ASIL  ***************************************/

#ifdef MPU_ASIL_START_SEC_CODE
# ifdef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# define MPU_MEMMAP_SECTION_OPEN
# define MPU_ASIL_CODE_OPEN
# undef MEMMAP_ERROR /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section ".text.MPU_ASIL_CODE" ax 8 /* PRQA S 3116 */ /* MD_MSR_Pragma */
# undef MPU_ASIL_START_SEC_CODE /* PRQA S 0841 */ /* MD_MSR_Undef */
#endif

#ifdef MPU_ASIL_STOP_SEC_CODE
# ifndef MPU_MEMMAP_SECTION_OPEN
#  error No MemMap section is currently opened.
# endif
# undef MPU_MEMMAP_SECTION_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# ifndef MPU_ASIL_CODE_OPEN
#  error Section MPU_ASIL_CODE is currently not opened and so cannot be closed.
# endif
# undef MPU_ASIL_CODE_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section /* PRQA S 3116 */ /* MD_MSR_Pragma */
# undef MPU_ASIL_STOP_SEC_CODE /* PRQA S 0841 */ /* MD_MSR_Undef */
# undef MEMMAP_ERROR /* PRQA S 0841 */ /* MD_MSR_Undef */
#endif


#ifdef MPU_ASIL_START_SEC_RAMCODE
# ifdef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# define MPU_MEMMAP_SECTION_OPEN
# define MPU_ASIL_RAMCODE_OPEN
# undef MEMMAP_ERROR /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section ".code_ram" ax 8 /* PRQA S 3116 */ /* MD_MSR_Pragma */
# undef MPU_ASIL_START_SEC_RAMCODE /* PRQA S 0841 */ /* MD_MSR_Undef */
#endif

#ifdef MPU_ASIL_STOP_SEC_RAMCODE
# ifndef MPU_MEMMAP_SECTION_OPEN
#  error No MemMap section is currently opened.
# endif
# undef MPU_MEMMAP_SECTION_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# ifndef MPU_ASIL_RAMCODE_OPEN
#  error Section MPU_ASIL_RAMCODE is currently not opened and so cannot be closed.
# endif
# undef MPU_ASIL_RAMCODE_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section /* PRQA S 3116 */ /* MD_MSR_Pragma */
# undef MPU_ASIL_STOP_SEC_RAMCODE /* PRQA S 0841 */ /* MD_MSR_Undef */
# undef MEMMAP_ERROR /* PRQA S 0841 */ /* MD_MSR_Undef */
#endif

/***************************************  CODE sections -QM  ***************************************/
#ifdef MPU_QM_START_SEC_CODE
# ifdef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# define MPU_MEMMAP_SECTION_OPEN
# define MPU_QM_CODE_OPEN
# undef MEMMAP_ERROR /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section ".text.MPU_QM_CODE" ax 8 /* PRQA S 3116 */ /* MD_MSR_Pragma */
# undef MPU_QM_START_SEC_CODE /* PRQA S 0841 */ /* MD_MSR_Undef */
#endif

#ifdef MPU_QM_STOP_SEC_CODE
# ifndef MPU_MEMMAP_SECTION_OPEN
#  error No MemMap section is currently opened.
# endif
# undef MPU_MEMMAP_SECTION_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# ifndef MPU_QM_CODE_OPEN
#  error Section MPU_QM_CODE is currently not opened and so cannot be closed.
# endif
# undef MPU_QM_CODE_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section /* PRQA S 3116 */ /* MD_MSR_Pragma */
# undef MPU_QM_STOP_SEC_CODE /* PRQA S 0841 */ /* MD_MSR_Undef */
# undef MEMMAP_ERROR /* PRQA S 0841 */ /* MD_MSR_Undef */
#endif

/***************************************  CODE sections -DEFAULT  ***************************************/
#ifdef MPU_DEFAULT_START_SEC_CODE
# ifdef MPU_MEMMAP_SECTION_OPEN
#  error A MemMap section is already open. Nesting is not supported.
# endif
# define MPU_MEMMAP_SECTION_OPEN
# define MPU_DEFAULT_CODE_OPEN
# undef MEMMAP_ERROR /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section ".text.MPU_DEFAULT_CODE" ax 8 /* PRQA S 3116 */ /* MD_MSR_Pragma */
# undef MPU_DEFAULT_START_SEC_CODE /* PRQA S 0841 */ /* MD_MSR_Undef */
#endif

#ifdef MPU_DEFAULT_STOP_SEC_CODE
# ifndef MPU_MEMMAP_SECTION_OPEN
#  error No MemMap section is currently opened.
# endif
# undef MPU_MEMMAP_SECTION_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# ifndef MPU_DEFAULT_CODE_OPEN
#  error Section MPU_DEFAULT_CODE is currently not opened and so cannot be closed.
# endif
# undef MPU_DEFAULT_CODE_OPEN /* PRQA S 0841 */ /* MD_MSR_Undef */
# pragma section /* PRQA S 3116 */ /* MD_MSR_Pragma */
# undef MPU_DEFAULT_STOP_SEC_CODE /* PRQA S 0841 */ /* MD_MSR_Undef */
# undef MEMMAP_ERROR /* PRQA S 0841 */ /* MD_MSR_Undef */
#endif

#ifdef MEMMAP_ERROR
    #error "MPU_MemMap.h, no valid memory mapping symbol defined."
#endif
