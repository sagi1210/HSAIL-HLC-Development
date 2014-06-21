// University of Illinois/NCSA
// Open Source License
//
// Copyright (c) 2013, Advanced Micro Devices, Inc.
// All rights reserved.
//
// Developed by:
//
//     HSA Team
//
//     Advanced Micro Devices, Inc
//
//     www.amd.com
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of
// this software and associated documentation files (the "Software"), to deal with
// the Software without restriction, including without limitation the rights to
// use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
// of the Software, and to permit persons to whom the Software is furnished to do
// so, subject to the following conditions:
//
//     * Redistributions of source code must retain the above copyright notice,
//       this list of conditions and the following disclaimers.
//
//     * Redistributions in binary form must reproduce the above copyright notice,
//       this list of conditions and the following disclaimers in the
//       documentation and/or other materials provided with the distribution.
//
//     * Neither the names of the LLVM Team, University of Illinois at
//       Urbana-Champaign, nor the names of its contributors may be used to
//       endorse or promote products derived from this Software without specific
//       prior written permission.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
// FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
// CONTRIBUTORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS WITH THE
// SOFTWARE.
## tn: uint16_t labelCount
## tn: uint32_t instCount
## tn: BrigCompareOperation8_t compare
[0] BrigCompareOperation8_t BrigInstCmp::compare
## tn: BrigType16_t imageType
[0] BrigType16_t BrigInstImage::imageType
[0] BrigType16_t BrigInstQueryImage::imageType
## tn: uint32_t width
## tn: BrigStringOffset32_t reg
## tn: BrigSamplerCoordNormalization8_t coord
## tn: BrigDirectiveSignatureArgument args
## tn: BrigCodeOffset32_t code
## tn: BrigImageChannelOrder8_t channelOrder
## tn: uint32_t elementCount
## tn: BrigDataOffset32_t data
## tn: uint32_t line
## tn: uint16_t outArgCount
## tn: BrigPack8_t pack
[0] BrigPack8_t BrigInstCmp::pack
[0] BrigPack8_t BrigInstMod::pack
## tn: BrigMemoryModifier modifier
[0] BrigMemoryModifier BrigInstMem::modifier
## tn: BrigOperandOffset32_t values
## tn: BrigDirectiveOffset32_t firstInArg
## tn: uint16_t valueCount
## tn: BrigSegment8_t segment
[0] BrigSegment8_t BrigInstAddr::segment
[0] BrigSegment8_t BrigInstAtomic::segment
[0] BrigSegment8_t BrigInstMem::segment
[0] BrigSegment8_t BrigInstQueue::segment
[0] BrigSegment8_t BrigInstSeg::segment
[0] BrigSegment8_t BrigInstSegCvt::segment
## tn: BrigImageQuery8_t imageQuery
[0] BrigImageQuery8_t BrigInstQueryImage::imageQuery
## tn: uint64_t dim
## tn: BrigMachineModel8_t machineModel
## tn: uint32_t column
## tn: BrigExecutableModifier8_t allBits
## tn: BrigDirectiveOffset32_t images
## tn: BrigProfile8_t profile
## tn: uint16_t imageCount
## tn: BrigControlDirective16_t control
## tn: BrigSamplerFilter8_t filter
## tn: BrigRound8_t round
## tn: BrigDirectiveOffset32_t targets
## tn: uint32_t offsetHi
## tn: BrigMemoryScope8_t memoryScope
[0] BrigMemoryScope8_t BrigInstAtomic::memoryScope
[0] BrigMemoryScope8_t BrigInstMemFence::memoryScope
## tn: uint8_t equivClass
[0] uint8_t BrigInstAtomic::equivClass
[0] uint8_t BrigInstImage::equivClass
[0] uint8_t BrigInstMem::equivClass
## tn: BrigMemoryOrder8_t memoryOrder
[0] BrigMemoryOrder8_t BrigInstAtomic::memoryOrder
[0] BrigMemoryOrder8_t BrigInstMemFence::memoryOrder
[0] BrigMemoryOrder8_t BrigInstQueue::memoryOrder
[0] BrigMemoryOrder8_t BrigInstSignal::memoryOrder
## tn: uint16_t byteCount
## tn: BrigVersion32_t brigMajor
## tn: BrigStringOffset32_t filename
## tn: uint16_t inArgCount
## tn: BrigVersion32_t hsailMinor
## tn: BrigAtomicOperation8_t atomicOperation
[0] BrigAtomicOperation8_t BrigInstAtomic::atomicOperation
## tn: BrigAlignment8_t align
[0] BrigAlignment8_t BrigInstMem::align
## tn: uint16_t operandCount
## tn: BrigVersion32_t brigMinor
## tn: uint16_t samplerCount
## tn: bool isNoNull
## tn: BrigImageGeometry8_t geometry
[0] BrigImageGeometry8_t BrigInstImage::geometry
[0] BrigImageGeometry8_t BrigInstQueryImage::geometry
## tn: BrigAtomicOperation8_t signalOperation
[0] BrigAtomicOperation8_t BrigInstSignal::signalOperation
## tn: BrigSamplerQuery8_t samplerQuery
[0] BrigSamplerQuery8_t BrigInstQuerySampler::samplerQuery
## tn: BrigDirectiveOffset32_t objects
## tn: BrigDirectiveOffset32_t ref
## tn: BrigDirectiveOffset32_t symbol
## tn: BrigDirectiveOffset32_t samplers
## tn: uint64_t offset
## tn: BrigExecutableModifier modifier
## tn: BrigType16_t sourceType
[0] BrigType16_t BrigInstCmp::sourceType
[0] BrigType16_t BrigInstCvt::sourceType
[0] BrigType16_t BrigInstLane::sourceType
[0] BrigType16_t BrigInstSegCvt::sourceType
[0] BrigType16_t BrigInstSourceType::sourceType
## tn: uint32_t dimHi
## tn: bool isDeclaration
## tn: uint32_t array
## tn: BrigDirectiveOffset32_t init
## tn: bool isArray
## tn: BrigSegCvtModifier modifier
[0] BrigSegCvtModifier BrigInstSegCvt::modifier
## tn: BrigSymbolModifier modifier
## tn: bool isFlexArray
## tn: BrigStringOffset32_t string
## tn: BrigVersion32_t hsailMajor
## tn: uint8_t bytes
## tn: uint16_t elementCount
## tn: uint32_t dimLo
## tn: BrigDirectiveOffset32_t elements
## tn: BrigLinkage linkage
## tn: bool isConst
## tn: uint32_t depth
## tn: BrigStringOffset32_t name
## tn: BrigSamplerAddressing8_t addressing
## tn: BrigSymbolModifier8_t allBits
## tn: BrigType16_t signalType
[0] BrigType16_t BrigInstSignal::signalType
## tn: BrigDirectiveOffset32_t firstScopedDirective
## tn: BrigImageChannelType8_t channelType
## tn: uint32_t height
## tn: BrigAluModifier16_t allBits
## tn: bool ftz
## tn: BrigAluModifier modifier
[0] BrigAluModifier BrigInstCmp::modifier
[0] BrigAluModifier BrigInstCvt::modifier
[0] BrigAluModifier BrigInstMod::modifier
## tn: BrigSegCvtModifier8_t allBits
## tn: BrigType16_t coordType
[0] BrigType16_t BrigInstImage::coordType
## tn: BrigMemoryFenceSegments8_t segments
[0] BrigMemoryFenceSegments8_t BrigInstMemFence::segments
## tn: BrigMemoryModifier8_t allBits
## tn: uint32_t offsetLo
## tn: BrigDirectiveOffset32_t nextTopLevelDirective
## tn: BrigDataOffset32_t dataAs
## tn: BrigWidth8_t width
[0] BrigWidth8_t BrigInstBr::width
[0] BrigWidth8_t BrigInstLane::width
[0] BrigWidth8_t BrigInstMem::width
## tn: BrigDirectiveOffset32_t label
## tn: BrigDirectiveOffset32_t labels
