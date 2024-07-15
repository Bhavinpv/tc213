#ifndef ADC_API_H
#define ADC_API_H


/* Includes *******************************************************************/
#include "rtwtypes.h"
#include "Gtm_api.h"
/* Defines ********************************************************************/
#define GET_ADCRES(n)		(*(AdcResPt[n]))

/* Types * Enums **************************************************************/
typedef enum ADC_E_AI{
	ADC_E_Ipri = 0,
	ADC_E_Vin,
	ADC_E_Iout,
	ADC_E_Vout,
	ADC_E_VoutDiag,
	ADC_E_IproFet,
	ADC_E_Vaux,
	ADC_E_Vkl30,
	ADC_E_Vkl30C,
	ADC_E_Vcomp,
	ADC_E_VrefDiag,
	ADC_E_Vhw16V,
	ADC_E_Vhw19V,
	ADC_E_NtcPri,
	ADC_E_NtcSrA,
	ADC_E_NtcSrB,
	ADC_E_NtcWaterIn,
	ADC_E_NtcWaterOut,
	ADC_E_NtcWaterOutDiag,
} ADC_E_AI;

/* Datas **********************************************************************/
extern u16 *AdcResPt[24];


#endif
