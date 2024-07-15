
#ifndef GTM_SCFG_H
#define GTM_SCFG_H

/* Includes *******************************************************************/
#include "Gtm_cfg.h"

/* Defines ********************************************************************/
#define GTM_TOM_PRIA_SR(x)			GTM_TOM0_CH8_##x.U
#define GTM_TOM_PRIB_SR(x)			GTM_TOM0_CH9_##x.U
#define GTM_TOM_PRIC_SR(x)			GTM_TOM0_CH10_##x.U
#define GTM_TOM_PRID_SR(x)			GTM_TOM0_CH11_##x.U
#define GTM_TOM_SRA_SR(x)			GTM_TOM0_CH12_##x.U
#define GTM_TOM_SRB_SR(x)			GTM_TOM0_CH13_##x.U
#define GTM_TOM_CLAMPA_SR(x)		GTM_TOM0_CH14_##x.U
#define GTM_TOM_CLAMPB_SR(x)		GTM_TOM0_CH15_##x.U
#define GTM_TOM_SYNC_SR(x)			GTM_TOM0_CH7_##x.U
#define GTM_TOM_SAUX_SR(x)			GTM_TOM1_CH5_##x.U

#define GTM_TOM_PRIA_OUTEN(x)		GTM_TOM0_TGC1_OUTEN_##x.B.OUTEN_##x##0
#define GTM_TOM_PRIB_OUTEN(x)		GTM_TOM0_TGC1_OUTEN_##x.B.OUTEN_##x##1
#define GTM_TOM_PRIC_OUTEN(x)		GTM_TOM0_TGC1_OUTEN_##x.B.OUTEN_##x##2
#define GTM_TOM_PRID_OUTEN(x)		GTM_TOM0_TGC1_OUTEN_##x.B.OUTEN_##x##3
#define GTM_TOM_SRA_OUTEN(x)		GTM_TOM0_TGC1_OUTEN_##x.B.OUTEN_##x##4
#define GTM_TOM_SRB_OUTEN(x)		GTM_TOM0_TGC1_OUTEN_##x.B.OUTEN_##x##5
#define GTM_TOM_CLAMPA_OUTEN(x)		GTM_TOM0_TGC1_OUTEN_##x.B.OUTEN_##x##6
#define GTM_TOM_CLAMPB_OUTEN(x)		GTM_TOM0_TGC1_OUTEN_##x.B.OUTEN_##x##7
#define GTM_TOM_SAUX_OUTEN(x)		GTM_TOM1_TGC0_OUTEN_##x.B.OUTEN_##x##5

#endif
