	.file	"Main_isr_cfg.c"
.section .text,"ax",@progbits
.Ltext0:
#APP
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x00
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x01
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x02
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x03
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x04
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x05
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x06
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x07
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x08
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x09
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x0A
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x0B
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x0C
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x0D
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x0E
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x0F
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x10
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x11
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x12
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x13
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x14
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x15
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x16
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x17
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x18
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x19
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x1A
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x1B
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x1C
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x1D
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x1E
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x1F
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x20
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x21
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x22
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x23
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x24
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x25
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x26
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x27
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x28
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x29
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x2A
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x2B
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x2C
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x2D
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x2E
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x2F
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry Isr_Call10ms,0,0x30
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x31
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x32
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x33
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x34
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x35
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x36
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x37
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x38
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x39
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x3A
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x3B
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x3C
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x3D
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x3E
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x3F
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry Isr_Call1ms,0,0x40
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x41
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x42
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x43
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x44
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x45
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x46
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x47
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x48
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x49
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x4A
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x4B
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x4C
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x4D
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x4E
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x4F
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry Isr_Call100us,0,0x50
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x51
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x52
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x53
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x54
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x55
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x56
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x57
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x58
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x59
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x5A
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x5B
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x5C
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x5D
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x5E
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x5F
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry Isr_Call15us,0,0x60
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x61
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x62
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x63
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x64
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x65
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x66
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x67
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x68
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x69
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x6A
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x6B
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x6C
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x6D
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x6E
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x6F
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x70
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x71
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x72
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x73
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x74
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x75
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x76
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x77
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x78
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x79
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x7A
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x7B
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x7C
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x7D
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x7E
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x7F
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x80
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x81
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x82
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x83
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x84
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x85
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x86
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x87
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x88
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x89
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x8A
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x8B
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x8C
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x8D
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x8E
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x8F
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x90
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x91
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x92
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x93
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x94
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x95
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x96
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x97
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x98
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x99
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x9A
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x9B
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x9C
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x9D
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x9E
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0x9F
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xA0
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xA1
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xA2
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xA3
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xA4
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xA5
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xA6
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xA7
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xA8
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xA9
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xAA
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xAB
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xAC
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xAD
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xAE
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xAF
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xB0
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xB1
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xB2
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xB3
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xB4
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xB5
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xB6
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xB7
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xB8
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xB9
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xBA
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xBB
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xBC
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xBD
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xBE
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xBF
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xC0
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xC1
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xC2
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xC3
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xC4
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xC5
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xC6
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xC7
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xC8
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xC9
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xCA
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xCB
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xCC
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xCD
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xCE
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xCF
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xD0
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xD1
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xD2
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xD3
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xD4
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xD5
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xD6
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xD7
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xD8
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xD9
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xDA
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xDB
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xDC
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xDD
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xDE
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xDF
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xE0
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xE1
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xE2
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xE3
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xE4
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xE5
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xE6
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xE7
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xE8
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xE9
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xEA
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xEB
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xEC
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xED
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xEE
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xEF
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xF0
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xF1
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xF2
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xF3
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xF4
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xF5
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xF6
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xF7
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xF8
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xF9
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xFA
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xFB
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xFC
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xFD
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xFE
	.ifndef .intr.entry.include                        
.altmacro                                           
.macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code 
	.pushsection .\intEntryLabel,"ax",@progbits   
	__\intEntryLabel :                              
		svlcx                                        
		movh.a  %a14, hi:\name                      
		lea     %a14, [%a14]lo:\name                
		ji      %a14                                 
	.popsection                                      
.endm                                               
.macro .int_entry.1 prio,vectabNum,u,name           
.int_entry.2 intvec_tc\vectabNum\u\prio,(name) # build the unique name 
.endm                                               
                                                    
.macro .intr.entry name,vectabNum,prio              
.int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number 
.endm                                               
.intr.entry.include:                                
.endif                                              
.intr.entry ISR_DefaultHandler,0,0xFF
.Letext0:
	.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0
	.section .debug_line,"",@progbits
.Ldebug_line0:
	.ident	"GCC: (HighTec Release v4.6.3.0) 4.6.3 build on 2013-05-17"
