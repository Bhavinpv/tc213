#ifndef ADC_SCB_H
#define ADC_SCB_H


/* Datas **********************************************************************/
extern s16 Adc_IoutOffset;

/* Functions ******************************************************************/
extern void Adc_Init(void);
extern void Adc_StartUp(void);
extern void Adc_ShortDetect_10ms();

#endif
