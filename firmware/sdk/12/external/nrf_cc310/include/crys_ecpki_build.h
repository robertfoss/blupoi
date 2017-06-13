//-----------------------------------------------------------------------------------
//    The confidential and proprietary information contained in this file may 
//    only be used by a person authorised under and to the extent permitted
//    by a subsisting licensing agreement from ARM Limited or its affiliates 
//    or between you and a party authorised by ARM
//
//           (C) COPYRIGHT [2016] ARM Limited or its affiliates
//               ALL RIGHT RESERVED
//
//    This entire notice must be reproduced on all copies of this file
//    and copies of this files may only be made by a person if such person is
//    permitted to do so under the terms of a subsisting license agreement
//    from ARM Limited or its affiliates or between you and a party authorised by ARM
//-----------------------------------------------------------------------------------

#ifndef CRYS_ECPKI_BUILD_H
#define CRYS_ECPKI_BUILD_H

/*!
@file
@brief This module defines functions for building key structures used in Elliptic Curves Cryptography (ECC).
*/


#include "crys_error.h"
#include "crys_ecpki_types.h"

#ifdef __cplusplus
extern "C"
{
#endif

/**********************************************************************************
 *                    CRYS_ECPKI_BuildPrivKey function                            *
 **********************************************************************************/
/*!
@brief Builds (imports) the user private key structure from an existing private key so
that this structure can be used by other EC primitives.
This function should be called before using of the private key. Input
domain structure must be initialized by EC parameters and auxiliary
values, using CRYS_ECPKI_GetDomain or CRYS_ECPKI_SetDomain functions.

@return CRYS_OK on success.
@return A non-zero value on failure as defined crys_ecpki_error.h.
*/
CIMPORT_C CRYSError_t CRYS_ECPKI_BuildPrivKey(
				     const CRYS_ECPKI_Domain_t *pDomain,            /*!< [in] The EC domain (curve). */
				     const uint8_t             *pPrivKeyIn,         /*!< [in] Pointer to private key data. */
				     uint32_t                   PrivKeySizeInBytes, /*!< [in] Size of private key data (in bytes). */
				     CRYS_ECPKI_UserPrivKey_t  *pUserPrivKey        /*!< [out] Pointer to the private key structure.
											       This structure is used as input to the ECPKI cryptographic primitives. */
				     );

/**********************************************************************************
 *	              _DX_ECPKI_BuildPublKey function                             *
 **********************************************************************************/
/*!
@brief Builds a user public key structure from an imported public key,
so it can be used by other EC primitives.
When operating the EC cryptographic algorithms with imported EC public
key, this function should be called before using of the public key.

\note The Incoming public key PublKeyIn structure is big endian bytes array, containing
concatenation of PC||X||Y, where:
<ul id="noteb"><li> PC - point control single byte, defining the type of point: 0x4 - uncompressed,
06,07 - hybrid, 2,3 - compressed. </li>
<li>X,Y - EC point coordinates of public key (y is omitted in compressed form),
size of X and Y must be equal to size of EC modulus. </li></ul>

The user may call this function by appropriate macros, according to necessary validation level [SEC1. ECC standard: 3.2, ANS X9.62]:
<ul><li>checking the input pointers and sizes only - ::CRYS_ECPKI_BuildPublKey.</li>
<li>partly checking of public key - ::CRYS_ECPKI_BuildPublKeyPartlyCheck. </li>
<li> full checking of public key - ::CRYS_ECPKI_BuildPublKeyFullCheck. </li></ul>

\note Full check mode takes long time and should be used when it is actually needed.

@return CRYS_OK on success.
@return A non-zero value on failure as defined crys_ecpki_error.h.
*/
/*
The function performs the following operations:
- Checks validity of incoming variables and pointers;
- Converts incoming key data from big endian into little endian;
- If public key is given in compressed form (i.e. byte[0] = 2 or 3 and
  coordinate Y is omitted), then the function uncompress it;
- Performs checking of input key according to CheckMode parameter.
- Initializes variables and structures.
*/
CIMPORT_C CRYSError_t _DX_ECPKI_BuildPublKey(
		    const CRYS_ECPKI_Domain_t   *pDomain,               /*!< [in]  The EC domain (curve). */
		    uint8_t                     *PublKeyIn_ptr,         /*!< [in]  Pointer to the input public key data, in compressed or
										   uncompressed or hybrid form:
										   [PC||X||Y] Big-Endian representation, structured according to
										   [IEEE1363], where:
										   <ul><li>X and Y are the public key's EC point coordinates.
										   In compressed form, Y is omitted.</li>
										   <li> The sizes of X and Y are equal to the size of the EC modulus.</li>
										   <li> PC is a one-byte point control that defines the type of point
										   compression. </li></ul>*/
		    uint32_t                     PublKeySizeInBytes,    /*!< [in]  The size of public key data (in bytes). */
		    EC_PublKeyCheckMode_t       CheckMode,             /*!< [in]  The required level of public key verification
									(higher verification level means longer verification time):
									<ul><li> 0 = preliminary validation. </li>
									<li> 1 = partial validation. </li>
									<li> 2 = full validation. </li></ul>*/
		    CRYS_ECPKI_UserPublKey_t    *pUserPublKey,          /*!< [out] Pointer to the output public key structure.
										This structure is used as input to the ECPKI cryptographic primitives. */
		    CRYS_ECPKI_BUILD_TempData_t *pTempBuff              /*!< [in]  Pointer for a temporary buffer required for the build function. */
		    );


/**********************************************************************************
 *	               CRYS_ECPKI_BuildPublKey macro                              *
 **********************************************************************************/
/*!
@brief This macro calls _DX_ECPKI_BuildPublKey function for building the public key
while checking input pointers and sizes. For a description of the parameters see ::_DX_ECPKI_BuildPublKey.
*/
#define  CRYS_ECPKI_BuildPublKey(pDomain, PublKeyIn_ptr, PublKeySizeInBytes, pUserPublKey) \
          _DX_ECPKI_BuildPublKey((pDomain), (PublKeyIn_ptr), (PublKeySizeInBytes), CheckPointersAndSizesOnly, (pUserPublKey), NULL)


/**********************************************************************************
 *	               CRYS_ECPKI_BuildPublKeyPartlyCheck macro                         *
 **********************************************************************************/
/*!
@brief This macro calls _DX_ECPKI_BuildPublKey function for building the public key with partial validation of the key [SEC1] - 3.2.3.
For a description of the parameters see ::_DX_ECPKI_BuildPublKey.
*/
#define  CRYS_ECPKI_BuildPublKeyPartlyCheck(pDomain, PublKeyIn_ptr, PublKeySizeInBytes, pUserPublKey, pTempBuff) \
          _DX_ECPKI_BuildPublKey((pDomain), (PublKeyIn_ptr), (PublKeySizeInBytes), ECpublKeyPartlyCheck, (pUserPublKey), (pTempBuff))


/**********************************************************************************
 *	               CRYS_ECPKI_BuildPublKeyFullCheck macro                     *
 **********************************************************************************/
/*!
@brief This macro calls _DX_ECPKI_BuildPublKey function for building the public key with full validation of the key [SEC1] - 3.2.2.
For a description of the parameters and return values see _DX_ECPKI_BuildPublKey.
*/
#define  CRYS_ECPKI_BuildPublKeyFullCheck(pDomain, PublKeyIn_ptr, PublKeySizeInBytes, pUserPublKey,  pTempBuff) \
   _DX_ECPKI_BuildPublKey((pDomain), (PublKeyIn_ptr), (PublKeySizeInBytes), (ECpublKeyFullCheck), (pUserPublKey),  (pTempBuff))


/***********************************************************************************
 *                     CRYS_ECPKI_ExportPublKey function                           *
 ***********************************************************************************/
/*!
@brief Converts an existing public key from internal representation to Big-Endian export representation.
The function converts the X,Y coordinates of public key EC point to big endianness,
and sets the public key as follows:
<ul><li>In case "Uncompressed" point:  PubKey = PC||X||Y, PC = 0x4 - single byte;</li>
<li>In case of "Hybrid" key PC = 0x6.</li>
<li>In case of "Compressed" key PC = 0x2.</li></ul>
\note Size of output X and Y coordinates is equal to ModSizeInBytes.
@return CRYS_OK on success.
@return A non-zero value on failure as defined crys_ecpki_error.h.
*/
CIMPORT_C CRYSError_t CRYS_ECPKI_ExportPublKey(
			      CRYS_ECPKI_UserPublKey_t      *pUserPublKey,        /*!< [in]  Pointer to the input public key structure (in Little-Endian form). */
			      CRYS_ECPKI_PointCompression_t  compression,         /*!< [in]  Compression mode: Compressed, Uncompressed or Hybrid. */
			      uint8_t                       *pExternPublKey,      /*!< [out] Pointer to the exported public key array, in compressed or uncompressed
										       or hybrid form:
											[PC||X||Y] Big-Endian representation, structured according to [IEEE1363].
											In compressed form, Y is omitted. */
			      uint32_t                      *pPublKeySizeBytes    /*!< [in/out] Pointer used for the input of the user public key buffer size
										       (in bytes), and the output of the size of the converted public key in bytes. */
			      );



#ifdef __cplusplus
}
#endif

#endif
