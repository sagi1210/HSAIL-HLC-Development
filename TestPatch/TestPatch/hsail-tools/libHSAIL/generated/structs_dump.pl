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
$structs = {
             'BrigDirectiveBase' => {
                                      'name' => 'BrigDirectiveBase',
                                      'align' => undef,
                                      'fields' => [
                                                    {
                                                      'type' => 'uint16_t',
                                                      'name' => 'size'
                                                    },
                                                    {
                                                      'type' => 'BrigDirectiveKinds16_t',
                                                      'name' => 'kind'
                                                    },
                                                    {
                                                      'name' => 'code',
                                                      'type' => 'BrigCodeOffset32_t'
                                                    }
                                                  ],
                                      'nowrap' => 'true'
                                    },
             'BrigDirectiveFunction' => {
                                          'name' => 'BrigDirectiveFunction',
                                          'comments' => [
                                                          '/// function directive.'
                                                        ],
                                          'enum' => 'BRIG_DIRECTIVE_FUNCTION',
                                          'wname' => 'DirectiveFunction',
                                          'parent' => 'BrigDirectiveExecutable',
                                          'align' => undef,
                                          'fields' => [
                                                        {
                                                          'name' => 'size',
                                                          'acc' => 'valRef',
                                                          'wname' => 'size',
                                                          'type' => 'uint16_t',
                                                          'wtype' => 'ValRef<uint16_t>'
                                                        },
                                                        {
                                                          'wname' => 'kind',
                                                          'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                          'enum' => 'BrigDirectiveKinds',
                                                          'name' => 'kind',
                                                          'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                          'type' => 'BrigDirectiveKinds16_t'
                                                        },
                                                        {
                                                          'wname' => 'code',
                                                          'acc' => 'itemRef<Inst>',
                                                          'name' => 'code',
                                                          'wtype' => 'ItemRef<Inst>',
                                                          'type' => 'BrigCodeOffset32_t',
                                                          'defValue' => '0'
                                                        },
                                                        {
                                                          'wname' => 'name',
                                                          'acc' => 'strRef',
                                                          'name' => 'name',
                                                          'wtype' => 'StrRef',
                                                          'type' => 'BrigStringOffset32_t',
                                                          'defValue' => '0'
                                                        },
                                                        {
                                                          'defValue' => '0',
                                                          'type' => 'uint16_t',
                                                          'wtype' => 'ValRef<uint16_t>',
                                                          'acc' => 'valRef',
                                                          'name' => 'inArgCount',
                                                          'wname' => 'inArgCount'
                                                        },
                                                        {
                                                          'wname' => 'outArgCount',
                                                          'name' => 'outArgCount',
                                                          'acc' => 'valRef',
                                                          'wtype' => 'ValRef<uint16_t>',
                                                          'type' => 'uint16_t',
                                                          'defValue' => '0'
                                                        },
                                                        {
                                                          'wname' => 'firstInArg',
                                                          'acc' => 'itemRef<Directive>',
                                                          'name' => 'firstInArg',
                                                          'wtype' => 'ItemRef<Directive>',
                                                          'type' => 'BrigDirectiveOffset32_t',
                                                          'defValue' => '0'
                                                        },
                                                        {
                                                          'defValue' => '0',
                                                          'type' => 'BrigDirectiveOffset32_t',
                                                          'wtype' => 'ItemRef<Directive>',
                                                          'name' => 'firstScopedDirective',
                                                          'acc' => 'itemRef<Directive>',
                                                          'wname' => 'firstScopedDirective'
                                                        },
                                                        {
                                                          'wname' => 'nextTopLevelDirective',
                                                          'acc' => 'itemRef<Directive>',
                                                          'name' => 'nextTopLevelDirective',
                                                          'wtype' => 'ItemRef<Directive>',
                                                          'type' => 'BrigDirectiveOffset32_t',
                                                          'defValue' => '0'
                                                        },
                                                        {
                                                          'defValue' => '0',
                                                          'type' => 'uint32_t',
                                                          'wtype' => 'ValRef<uint32_t>',
                                                          'acc' => 'valRef',
                                                          'name' => 'instCount',
                                                          'wname' => 'instCount'
                                                        },
                                                        {
                                                          'acc' => 'subItem<ExecutableModifier>',
                                                          'name' => 'modifier',
                                                          'wname' => 'modifier',
                                                          'type' => 'BrigExecutableModifier',
                                                          'wtype' => 'ExecutableModifier'
                                                        },
                                                        {
                                                          'size' => 3,
                                                          'wname' => 'reserved',
                                                          'acc' => 'valRef',
                                                          'type' => 'uint8_t',
                                                          'wtype' => 'ValRef<uint8_t>',
                                                          'skip' => 1,
                                                          'defValue' => '0',
                                                          'name' => 'reserved'
                                                        }
                                                      ]
                                        },
             'BrigDirectiveExecutable' => {
                                            'wname' => 'DirectiveExecutable',
                                            'comments' => [
                                                            '/// common ancestor class for kernel/function directives.'
                                                          ],
                                            'generic' => 'true',
                                            'fields' => [
                                                          {
                                                            'acc' => 'valRef',
                                                            'name' => 'size',
                                                            'wname' => 'size',
                                                            'type' => 'uint16_t',
                                                            'wtype' => 'ValRef<uint16_t>'
                                                          },
                                                          {
                                                            'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                            'type' => 'BrigDirectiveKinds16_t',
                                                            'wname' => 'kind',
                                                            'name' => 'kind',
                                                            'enum' => 'BrigDirectiveKinds',
                                                            'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>'
                                                          },
                                                          {
                                                            'wtype' => 'ItemRef<Inst>',
                                                            'type' => 'BrigCodeOffset32_t',
                                                            'defValue' => '0',
                                                            'wname' => 'code',
                                                            'acc' => 'itemRef<Inst>',
                                                            'name' => 'code'
                                                          },
                                                          {
                                                            'wname' => 'name',
                                                            'name' => 'name',
                                                            'acc' => 'strRef',
                                                            'type' => 'BrigStringOffset32_t',
                                                            'wtype' => 'StrRef',
                                                            'defValue' => '0'
                                                          },
                                                          {
                                                            'wname' => 'inArgCount',
                                                            'acc' => 'valRef',
                                                            'name' => 'inArgCount',
                                                            'type' => 'uint16_t',
                                                            'wtype' => 'ValRef<uint16_t>'
                                                          },
                                                          {
                                                            'type' => 'uint16_t',
                                                            'wtype' => 'ValRef<uint16_t>',
                                                            'name' => 'outArgCount',
                                                            'acc' => 'valRef',
                                                            'wname' => 'outArgCount'
                                                          },
                                                          {
                                                            'defValue' => '0',
                                                            'wtype' => 'ItemRef<Directive>',
                                                            'type' => 'BrigDirectiveOffset32_t',
                                                            'name' => 'firstInArg',
                                                            'acc' => 'itemRef<Directive>',
                                                            'wname' => 'firstInArg'
                                                          },
                                                          {
                                                            'type' => 'BrigDirectiveOffset32_t',
                                                            'wtype' => 'ItemRef<Directive>',
                                                            'defValue' => '0',
                                                            'wname' => 'firstScopedDirective',
                                                            'name' => 'firstScopedDirective',
                                                            'acc' => 'itemRef<Directive>'
                                                          },
                                                          {
                                                            'defValue' => '0',
                                                            'type' => 'BrigDirectiveOffset32_t',
                                                            'wtype' => 'ItemRef<Directive>',
                                                            'name' => 'nextTopLevelDirective',
                                                            'acc' => 'itemRef<Directive>',
                                                            'wname' => 'nextTopLevelDirective'
                                                          },
                                                          {
                                                            'name' => 'instCount',
                                                            'acc' => 'valRef',
                                                            'wname' => 'instCount',
                                                            'type' => 'uint32_t',
                                                            'wtype' => 'ValRef<uint32_t>'
                                                          },
                                                          {
                                                            'type' => 'BrigExecutableModifier',
                                                            'wtype' => 'ExecutableModifier',
                                                            'name' => 'modifier',
                                                            'acc' => 'subItem<ExecutableModifier>',
                                                            'wname' => 'modifier'
                                                          },
                                                          {
                                                            'acc' => 'valRef',
                                                            'wname' => 'reserved',
                                                            'size' => '3',
                                                            'defValue' => '0',
                                                            'skip' => 1,
                                                            'wtype' => 'ValRef<uint8_t>',
                                                            'type' => 'uint8_t',
                                                            'name' => 'reserved'
                                                          }
                                                        ],
                                            'align' => undef,
                                            'parent' => 'BrigDirectiveCallableBase',
                                            'enum' => 'BRIG_DIRECTIVE_EXECUTABLE',
                                            'children' => [
                                                            'BrigDirectiveFunction',
                                                            'BrigDirectiveKernel'
                                                          ],
                                            'name' => 'BrigDirectiveExecutable'
                                          },
             'BrigDirectiveLabel' => {
                                       'fields' => [
                                                     {
                                                       'wtype' => 'ValRef<uint16_t>',
                                                       'type' => 'uint16_t',
                                                       'wname' => 'size',
                                                       'acc' => 'valRef',
                                                       'name' => 'size'
                                                     },
                                                     {
                                                       'type' => 'BrigDirectiveKinds16_t',
                                                       'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                       'wname' => 'kind',
                                                       'name' => 'kind',
                                                       'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                       'enum' => 'BrigDirectiveKinds'
                                                     },
                                                     {
                                                       'name' => 'code',
                                                       'acc' => 'itemRef<Inst>',
                                                       'wname' => 'code',
                                                       'defValue' => '0',
                                                       'wtype' => 'ItemRef<Inst>',
                                                       'type' => 'BrigCodeOffset32_t'
                                                     },
                                                     {
                                                       'defValue' => '0',
                                                       'wtype' => 'StrRef',
                                                       'type' => 'BrigStringOffset32_t',
                                                       'name' => 'name',
                                                       'acc' => 'strRef',
                                                       'wname' => 'name'
                                                     }
                                                   ],
                                       'align' => undef,
                                       'parent' => 'BrigDirectiveCode',
                                       'wname' => 'DirectiveLabel',
                                       'name' => 'BrigDirectiveLabel',
                                       'enum' => 'BRIG_DIRECTIVE_LABEL',
                                       'comments' => [
                                                       '/// label directive'
                                                     ]
                                     },
             'BrigExecutableModifier' => {
                                           'standalone' => 'true',
                                           'fields' => [
                                                         {
                                                           'defValue' => '0',
                                                           'type' => 'BrigExecutableModifier8_t',
                                                           'wtype' => 'ValRef<uint8_t>',
                                                           'name' => 'allBits',
                                                           'acc' => 'valRef',
                                                           'wname' => 'allBits'
                                                         },
                                                         {
                                                           'acc' => 'bFValRef<Brig::BrigLinkage8_t,0,2>',
                                                           'name' => 'linkage',
                                                           'wname' => 'linkage',
                                                           'phantomof' => $structs->{'BrigExecutableModifier'}{'fields'}[0],
                                                           'wtype' => 'BFValRef<Brig::BrigLinkage8_t,0,2>',
                                                           'type' => 'BrigLinkage'
                                                         },
                                                         {
                                                           'type' => 'bool',
                                                           'wtype' => 'BitValRef<2>',
                                                           'phantomof' => $structs->{'BrigExecutableModifier'}{'fields'}[0],
                                                           'wname' => 'isDeclaration',
                                                           'acc' => 'bitValRef<2>',
                                                           'name' => 'isDeclaration'
                                                         }
                                                       ],
                                           'align' => undef,
                                           'enum' => 'BRIG_EXECUTABLE_MODIFIER',
                                           'name' => 'BrigExecutableModifier',
                                           'wname' => 'ExecutableModifier',
                                           'isroot' => 'true'
                                         },
             'BrigInstSeg' => {
                                'parent' => 'BrigInst',
                                'align' => undef,
                                'fields' => [
                                              {
                                                'wname' => 'size',
                                                'acc' => 'valRef',
                                                'name' => 'size',
                                                'type' => 'uint16_t',
                                                'wtype' => 'ValRef<uint16_t>'
                                              },
                                              {
                                                'wname' => 'kind',
                                                'name' => 'kind',
                                                'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                'enum' => 'BrigInstKinds',
                                                'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>',
                                                'type' => 'BrigInstKinds16_t'
                                              },
                                              {
                                                'enum' => 'BrigOpcode',
                                                'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                                'name' => 'opcode',
                                                'wname' => 'opcode',
                                                'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>',
                                                'type' => 'BrigOpcode16_t'
                                              },
                                              {
                                                'acc' => 'valRef',
                                                'name' => 'type',
                                                'wname' => 'type',
                                                'wtype' => 'ValRef<uint16_t>',
                                                'type' => 'BrigType16_t'
                                              },
                                              {
                                                'defValue' => '0',
                                                'wtype' => 'ItemRef<Operand>',
                                                'type' => 'BrigOperandOffset32_t',
                                                'acc' => 'itemRef<Operand>',
                                                'name' => 'operands',
                                                'wname' => 'operand',
                                                'size' => '5'
                                              },
                                              {
                                                'enum' => 'BrigSegment',
                                                'acc' => 'enumValRef<Brig::BrigSegment,uint8_t>',
                                                'name' => 'segment',
                                                'wname' => 'segment',
                                                'defValue' => '0',
                                                'wtype' => 'EnumValRef<Brig::BrigSegment,uint8_t>',
                                                'type' => 'BrigSegment8_t'
                                              },
                                              {
                                                'defValue' => '0',
                                                'wtype' => 'ValRef<uint8_t>',
                                                'type' => 'uint8_t',
                                                'skip' => 1,
                                                'acc' => 'valRef',
                                                'size' => 3,
                                                'wname' => 'reserved',
                                                'name' => 'reserved'
                                              }
                                            ],
                                'name' => 'BrigInstSeg',
                                'enum' => 'BRIG_INST_SEG',
                                'wname' => 'InstSeg'
                              },
             'BrigOperandRef' => {
                                   'children' => [
                                                   'BrigOperandSignatureRef',
                                                   'BrigOperandFbarrierRef',
                                                   'BrigOperandLabelTargetsRef',
                                                   'BrigOperandFunctionRef',
                                                   'BrigOperandLabelRef',
                                                   'BrigOperandLabelVariableRef'
                                                 ],
                                   'name' => 'BrigOperandRef',
                                   'enum' => 'BRIG_OPERAND_REF',
                                   'parent' => 'BrigOperand',
                                   'align' => undef,
                                   'fields' => [
                                                 {
                                                   'type' => 'uint16_t',
                                                   'wtype' => 'ValRef<uint16_t>',
                                                   'wname' => 'size',
                                                   'name' => 'size',
                                                   'acc' => 'valRef'
                                                 },
                                                 {
                                                   'wtype' => 'EnumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                   'type' => 'BrigOperandKinds16_t',
                                                   'wname' => 'kind',
                                                   'enum' => 'BrigOperandKinds',
                                                   'acc' => 'enumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                   'name' => 'kind'
                                                 },
                                                 {
                                                   'wname' => 'ref',
                                                   'acc' => 'itemRef<Directive>',
                                                   'name' => 'ref',
                                                   'type' => 'BrigDirectiveOffset32_t',
                                                   'wtype' => 'ItemRef<Directive>',
                                                   'defValue' => '0'
                                                 }
                                               ],
                                   'generic' => 'true',
                                   'wname' => 'OperandRef'
                                 },
             'BrigDirectiveVariableInit' => {
                                              'enum' => 'BRIG_DIRECTIVE_VARIABLE_INIT',
                                              'name' => 'BrigDirectiveVariableInit',
                                              'wname' => 'DirectiveVariableInit',
                                              'parent' => 'BrigDirectiveCode',
                                              'align' => undef,
                                              'fields' => [
                                                            {
                                                              'wname' => 'size',
                                                              'acc' => 'valRef',
                                                              'name' => 'size',
                                                              'wtype' => 'ValRef<uint16_t>',
                                                              'type' => 'uint16_t'
                                                            },
                                                            {
                                                              'enum' => 'BrigDirectiveKinds',
                                                              'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                              'name' => 'kind',
                                                              'wname' => 'kind',
                                                              'type' => 'BrigDirectiveKinds16_t',
                                                              'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>'
                                                            },
                                                            {
                                                              'wtype' => 'ItemRef<Inst>',
                                                              'type' => 'BrigCodeOffset32_t',
                                                              'defValue' => '0',
                                                              'wname' => 'code',
                                                              'name' => 'code',
                                                              'acc' => 'itemRef<Inst>'
                                                            },
                                                            {
                                                              'name' => 'data',
                                                              'acc' => 'dataItemRef',
                                                              'novisit' => 'true',
                                                              'wname' => 'data',
                                                              'type' => 'BrigDataOffset32_t',
                                                              'wtype' => 'DataItemRef'
                                                            },
                                                            {
                                                              'phantomof' => $structs->{'BrigDirectiveVariableInit'}{'fields'}[3],
                                                              'type' => 'BrigDataOffset32_t',
                                                              'wtype' => 'ValRef<uint32_t>',
                                                              'wspecial' => 'DataItemRefT',
                                                              'acc' => 'valRef',
                                                              'novisit' => 'true',
                                                              'wname' => 'dataAs',
                                                              'wspecialgeneric' => 'true',
                                                              'name' => 'dataAs'
                                                            },
                                                            {
                                                              'wname' => 'elementCount',
                                                              'name' => 'elementCount',
                                                              'acc' => 'valRef',
                                                              'wtype' => 'ValRef<uint32_t>',
                                                              'type' => 'uint32_t',
                                                              'defValue' => '0'
                                                            },
                                                            {
                                                              'wtype' => 'ValRef<uint16_t>',
                                                              'type' => 'BrigType16_t',
                                                              'acc' => 'valRef',
                                                              'name' => 'type',
                                                              'wname' => 'type'
                                                            },
                                                            {
                                                              'name' => 'reserved',
                                                              'acc' => 'valRef',
                                                              'wname' => 'reserved',
                                                              'defValue' => '0',
                                                              'wtype' => 'ValRef<uint16_t>',
                                                              'type' => 'uint16_t',
                                                              'skip' => 1
                                                            }
                                                          ]
                                            },
             'BrigOperandReg' => {
                                   'name' => 'BrigOperandReg',
                                   'enum' => 'BRIG_OPERAND_REG',
                                   'wname' => 'OperandReg',
                                   'parent' => 'BrigOperand',
                                   'fields' => [
                                                 {
                                                   'wtype' => 'ValRef<uint16_t>',
                                                   'type' => 'uint16_t',
                                                   'wname' => 'size',
                                                   'name' => 'size',
                                                   'acc' => 'valRef'
                                                 },
                                                 {
                                                   'wtype' => 'EnumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                   'type' => 'BrigOperandKinds16_t',
                                                   'wname' => 'kind',
                                                   'enum' => 'BrigOperandKinds',
                                                   'acc' => 'enumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                   'name' => 'kind'
                                                 },
                                                 {
                                                   'type' => 'BrigStringOffset32_t',
                                                   'wtype' => 'StrRef',
                                                   'defValue' => '0',
                                                   'wname' => 'reg',
                                                   'name' => 'reg',
                                                   'acc' => 'strRef'
                                                 }
                                               ],
                                   'align' => undef
                                 },
             'BrigBlockStart' => {
                                   'name' => 'BrigBlockStart',
                                   'enum' => 'BRIG_DIRECTIVE_BLOCK_START',
                                   'comments' => [
                                                   '/// start block of data.'
                                                 ],
                                   'wname' => 'BlockStart',
                                   'parent' => 'BrigDirectiveCode',
                                   'fields' => [
                                                 {
                                                   'type' => 'uint16_t',
                                                   'wtype' => 'ValRef<uint16_t>',
                                                   'acc' => 'valRef',
                                                   'name' => 'size',
                                                   'wname' => 'size'
                                                 },
                                                 {
                                                   'name' => 'kind',
                                                   'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                   'enum' => 'BrigDirectiveKinds',
                                                   'wname' => 'kind',
                                                   'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                   'type' => 'BrigDirectiveKinds16_t'
                                                 },
                                                 {
                                                   'wname' => 'code',
                                                   'name' => 'code',
                                                   'acc' => 'itemRef<Inst>',
                                                   'type' => 'BrigCodeOffset32_t',
                                                   'wtype' => 'ItemRef<Inst>',
                                                   'defValue' => '0'
                                                 },
                                                 {
                                                   'acc' => 'strRef',
                                                   'name' => 'name',
                                                   'wname' => 'name',
                                                   'defValue' => '0',
                                                   'wtype' => 'StrRef',
                                                   'type' => 'BrigStringOffset32_t'
                                                 }
                                               ],
                                   'align' => undef
                                 },
             'BrigDirectiveVariable' => {
                                          'enum' => 'BRIG_DIRECTIVE_VARIABLE',
                                          'name' => 'BrigDirectiveVariable',
                                          'wname' => 'DirectiveVariable',
                                          'parent' => 'BrigDirectiveCode',
                                          'fields' => [
                                                        {
                                                          'type' => 'uint16_t',
                                                          'wtype' => 'ValRef<uint16_t>',
                                                          'name' => 'size',
                                                          'acc' => 'valRef',
                                                          'wname' => 'size'
                                                        },
                                                        {
                                                          'type' => 'BrigDirectiveKinds16_t',
                                                          'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                          'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                          'enum' => 'BrigDirectiveKinds',
                                                          'name' => 'kind',
                                                          'wname' => 'kind'
                                                        },
                                                        {
                                                          'wname' => 'code',
                                                          'acc' => 'itemRef<Inst>',
                                                          'name' => 'code',
                                                          'type' => 'BrigCodeOffset32_t',
                                                          'wtype' => 'ItemRef<Inst>',
                                                          'defValue' => '0'
                                                        },
                                                        {
                                                          'wname' => 'name',
                                                          'acc' => 'strRef',
                                                          'name' => 'name',
                                                          'type' => 'BrigStringOffset32_t',
                                                          'wtype' => 'StrRef',
                                                          'defValue' => '0'
                                                        },
                                                        {
                                                          'acc' => 'itemRef<Directive>',
                                                          'name' => 'init',
                                                          'wname' => 'init',
                                                          'defValue' => '0',
                                                          'type' => 'BrigDirectiveOffset32_t',
                                                          'wtype' => 'ItemRef<Directive>'
                                                        },
                                                        {
                                                          'type' => 'BrigType16_t',
                                                          'wtype' => 'ValRef<uint16_t>',
                                                          'acc' => 'valRef',
                                                          'name' => 'type',
                                                          'wname' => 'type'
                                                        },
                                                        {
                                                          'name' => 'segment',
                                                          'enum' => 'BrigSegment',
                                                          'acc' => 'enumValRef<Brig::BrigSegment,uint8_t>',
                                                          'wname' => 'segment',
                                                          'defValue' => '0',
                                                          'type' => 'BrigSegment8_t',
                                                          'wtype' => 'EnumValRef<Brig::BrigSegment,uint8_t>'
                                                        },
                                                        {
                                                          'wname' => 'align',
                                                          'name' => 'align',
                                                          'acc' => 'enumValRef<Brig::BrigAlignment,uint8_t>',
                                                          'enum' => 'BrigAlignment',
                                                          'type' => 'BrigAlignment8_t',
                                                          'wtype' => 'EnumValRef<Brig::BrigAlignment,uint8_t>',
                                                          'defValue' => '0'
                                                        },
                                                        {
                                                          'defValue' => '0',
                                                          'wtype' => 'ValRef<uint32_t>',
                                                          'type' => 'uint32_t',
                                                          'acc' => 'valRef',
                                                          'name' => 'dimLo',
                                                          'wname' => 'dimLo'
                                                        },
                                                        {
                                                          'phantomof' => $structs->{'BrigDirectiveVariable'}{'fields'}[8],
                                                          'type' => 'uint64_t',
                                                          'wtype' => 'ValRef<uint64_t>',
                                                          'acc' => 'reinterpretValRef<uint64_t>',
                                                          'name' => 'dim',
                                                          'wname' => 'dim'
                                                        },
                                                        {
                                                          'defValue' => '0',
                                                          'wtype' => 'ValRef<uint32_t>',
                                                          'type' => 'uint32_t',
                                                          'name' => 'dimHi',
                                                          'acc' => 'valRef',
                                                          'wname' => 'dimHi'
                                                        },
                                                        {
                                                          'type' => 'BrigSymbolModifier',
                                                          'wtype' => 'SymbolModifier',
                                                          'wname' => 'modifier',
                                                          'acc' => 'subItem<SymbolModifier>',
                                                          'name' => 'modifier'
                                                        },
                                                        {
                                                          'name' => 'reserved',
                                                          'size' => 3,
                                                          'wname' => 'reserved',
                                                          'acc' => 'valRef',
                                                          'type' => 'uint8_t',
                                                          'wtype' => 'ValRef<uint8_t>',
                                                          'skip' => 1,
                                                          'defValue' => '0'
                                                        }
                                                      ],
                                          'align' => undef
                                        },
             'BrigDirectiveSignature' => {
                                           'parent' => 'BrigDirectiveCallableBase',
                                           'fields' => [
                                                         {
                                                           'wname' => 'size',
                                                           'name' => 'size',
                                                           'acc' => 'valRef',
                                                           'type' => 'uint16_t',
                                                           'wtype' => 'ValRef<uint16_t>'
                                                         },
                                                         {
                                                           'name' => 'kind',
                                                           'enum' => 'BrigDirectiveKinds',
                                                           'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                           'wname' => 'kind',
                                                           'type' => 'BrigDirectiveKinds16_t',
                                                           'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>'
                                                         },
                                                         {
                                                           'wname' => 'code',
                                                           'name' => 'code',
                                                           'acc' => 'itemRef<Inst>',
                                                           'type' => 'BrigCodeOffset32_t',
                                                           'wtype' => 'ItemRef<Inst>',
                                                           'defValue' => '0'
                                                         },
                                                         {
                                                           'wname' => 'name',
                                                           'acc' => 'strRef',
                                                           'name' => 'name',
                                                           'type' => 'BrigStringOffset32_t',
                                                           'wtype' => 'StrRef',
                                                           'defValue' => '0'
                                                         },
                                                         {
                                                           'name' => 'inArgCount',
                                                           'comments' => [
                                                                           '// overridden, was ValRef<uint16_t> inArgCount'
                                                                         ],
                                                           'acc' => 'valRef',
                                                           'wname' => 'inCount',
                                                           'defValue' => '0',
                                                           'wtype' => 'ValRef<uint16_t>',
                                                           'type' => 'uint16_t'
                                                         },
                                                         {
                                                           'type' => 'uint16_t',
                                                           'wtype' => 'ValRef<uint16_t>',
                                                           'defValue' => '0',
                                                           'wname' => 'outCount',
                                                           'comments' => [
                                                                           '// overridden, was ValRef<uint16_t> outArgCount'
                                                                         ],
                                                           'acc' => 'valRef',
                                                           'name' => 'outArgCount'
                                                         },
                                                         {
                                                           'name' => 'args',
                                                           'acc' => 'subItem<DirectiveSignatureArgument>',
                                                           'size' => '1',
                                                           'wname' => 'args',
                                                           'wspecial' => 'DirectiveSignatureArguments',
                                                           'wtype' => 'DirectiveSignatureArgument',
                                                           'type' => 'BrigDirectiveSignatureArgument'
                                                         }
                                                       ],
                                           'align' => undef,
                                           'enum' => 'BRIG_DIRECTIVE_SIGNATURE',
                                           'comments' => [
                                                           '/// function signature.'
                                                         ],
                                           'name' => 'BrigDirectiveSignature',
                                           'wname' => 'DirectiveSignature'
                                         },
             'BrigInstBr' => {
                               'enum' => 'BRIG_INST_BR',
                               'name' => 'BrigInstBr',
                               'wname' => 'InstBr',
                               'parent' => 'BrigInst',
                               'fields' => [
                                             {
                                               'wname' => 'size',
                                               'name' => 'size',
                                               'acc' => 'valRef',
                                               'type' => 'uint16_t',
                                               'wtype' => 'ValRef<uint16_t>'
                                             },
                                             {
                                               'type' => 'BrigInstKinds16_t',
                                               'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>',
                                               'name' => 'kind',
                                               'enum' => 'BrigInstKinds',
                                               'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                               'wname' => 'kind'
                                             },
                                             {
                                               'name' => 'opcode',
                                               'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                               'enum' => 'BrigOpcode',
                                               'wname' => 'opcode',
                                               'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>',
                                               'type' => 'BrigOpcode16_t'
                                             },
                                             {
                                               'wname' => 'type',
                                               'name' => 'type',
                                               'acc' => 'valRef',
                                               'wtype' => 'ValRef<uint16_t>',
                                               'type' => 'BrigType16_t'
                                             },
                                             {
                                               'wname' => 'operand',
                                               'size' => '5',
                                               'acc' => 'itemRef<Operand>',
                                               'name' => 'operands',
                                               'wtype' => 'ItemRef<Operand>',
                                               'type' => 'BrigOperandOffset32_t',
                                               'defValue' => '0'
                                             },
                                             {
                                               'type' => 'BrigWidth8_t',
                                               'wtype' => 'EnumValRef<Brig::BrigWidth,uint8_t>',
                                               'acc' => 'enumValRef<Brig::BrigWidth,uint8_t>',
                                               'enum' => 'BrigWidth',
                                               'name' => 'width',
                                               'wname' => 'width'
                                             },
                                             {
                                               'wname' => 'reserved',
                                               'size' => 3,
                                               'acc' => 'valRef',
                                               'skip' => 1,
                                               'type' => 'uint8_t',
                                               'wtype' => 'ValRef<uint8_t>',
                                               'defValue' => '0',
                                               'name' => 'reserved'
                                             }
                                           ],
                               'align' => undef
                             },
             'BrigDirectiveKernel' => {
                                        'comments' => [
                                                        '/// kernel directive.'
                                                      ],
                                        'enum' => 'BRIG_DIRECTIVE_KERNEL',
                                        'name' => 'BrigDirectiveKernel',
                                        'wname' => 'DirectiveKernel',
                                        'parent' => 'BrigDirectiveExecutable',
                                        'align' => undef,
                                        'fields' => [
                                                      {
                                                        'wname' => 'size',
                                                        'acc' => 'valRef',
                                                        'name' => 'size',
                                                        'wtype' => 'ValRef<uint16_t>',
                                                        'type' => 'uint16_t'
                                                      },
                                                      {
                                                        'type' => 'BrigDirectiveKinds16_t',
                                                        'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                        'wname' => 'kind',
                                                        'enum' => 'BrigDirectiveKinds',
                                                        'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                        'name' => 'kind'
                                                      },
                                                      {
                                                        'wname' => 'code',
                                                        'name' => 'code',
                                                        'acc' => 'itemRef<Inst>',
                                                        'type' => 'BrigCodeOffset32_t',
                                                        'wtype' => 'ItemRef<Inst>',
                                                        'defValue' => '0'
                                                      },
                                                      {
                                                        'name' => 'name',
                                                        'acc' => 'strRef',
                                                        'wname' => 'name',
                                                        'defValue' => '0',
                                                        'wtype' => 'StrRef',
                                                        'type' => 'BrigStringOffset32_t'
                                                      },
                                                      {
                                                        'name' => 'inArgCount',
                                                        'acc' => 'valRef',
                                                        'wname' => 'inArgCount',
                                                        'defValue' => '0',
                                                        'wtype' => 'ValRef<uint16_t>',
                                                        'type' => 'uint16_t'
                                                      },
                                                      {
                                                        'wname' => 'outArgCount',
                                                        'acc' => 'valRef',
                                                        'name' => 'outArgCount',
                                                        'wtype' => 'ValRef<uint16_t>',
                                                        'type' => 'uint16_t',
                                                        'defValue' => '0'
                                                      },
                                                      {
                                                        'name' => 'firstInArg',
                                                        'acc' => 'itemRef<Directive>',
                                                        'wname' => 'firstInArg',
                                                        'defValue' => '0',
                                                        'type' => 'BrigDirectiveOffset32_t',
                                                        'wtype' => 'ItemRef<Directive>'
                                                      },
                                                      {
                                                        'wname' => 'firstScopedDirective',
                                                        'acc' => 'itemRef<Directive>',
                                                        'name' => 'firstScopedDirective',
                                                        'type' => 'BrigDirectiveOffset32_t',
                                                        'wtype' => 'ItemRef<Directive>',
                                                        'defValue' => '0'
                                                      },
                                                      {
                                                        'wtype' => 'ItemRef<Directive>',
                                                        'type' => 'BrigDirectiveOffset32_t',
                                                        'defValue' => '0',
                                                        'wname' => 'nextTopLevelDirective',
                                                        'acc' => 'itemRef<Directive>',
                                                        'name' => 'nextTopLevelDirective'
                                                      },
                                                      {
                                                        'defValue' => '0',
                                                        'type' => 'uint32_t',
                                                        'wtype' => 'ValRef<uint32_t>',
                                                        'name' => 'instCount',
                                                        'acc' => 'valRef',
                                                        'wname' => 'instCount'
                                                      },
                                                      {
                                                        'type' => 'BrigExecutableModifier',
                                                        'wtype' => 'ExecutableModifier',
                                                        'wname' => 'modifier',
                                                        'name' => 'modifier',
                                                        'acc' => 'subItem<ExecutableModifier>'
                                                      },
                                                      {
                                                        'name' => 'reserved',
                                                        'defValue' => '0',
                                                        'wtype' => 'ValRef<uint8_t>',
                                                        'type' => 'uint8_t',
                                                        'skip' => 1,
                                                        'acc' => 'valRef',
                                                        'size' => 3,
                                                        'wname' => 'reserved'
                                                      }
                                                    ]
                                      },
             'BrigDirective' => {
                                  'comments' => [
                                                  '/// @addtogroup Directives',
                                                  '/// @{',
                                                  '/// base class for all directive items.'
                                                ],
                                  'generic' => 'true',
                                  'wname' => 'Directive',
                                  'isroot' => 'true',
                                  'fields' => [
                                                {
                                                  'name' => 'size',
                                                  'acc' => 'valRef',
                                                  'comments' => [
                                                                  '/// item size.'
                                                                ],
                                                  'wname' => 'size',
                                                  'type' => 'uint16_t',
                                                  'wtype' => 'ValRef<uint16_t>'
                                                },
                                                {
                                                  'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                  'type' => 'BrigDirectiveKinds16_t',
                                                  'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                  'comments' => [
                                                                  '/// item kind. One of BrigDirectiveKinds enum values.'
                                                                ],
                                                  'enum' => 'BrigDirectiveKinds',
                                                  'name' => 'kind',
                                                  'wname' => 'kind'
                                                }
                                              ],
                                  'align' => undef,
                                  'enum' => 'BRIG_DIRECTIVE',
                                  'name' => 'BrigDirective',
                                  'children' => [
                                                  'BrigDirectivePragma',
                                                  'BrigDirectiveLabelInit',
                                                  'BrigBlockString',
                                                  'BrigDirectiveExtension',
                                                  'BrigDirectiveLoc',
                                                  'BrigDirectiveVersion',
                                                  'BrigDirectiveSamplerProperties',
                                                  'BrigDirectiveCallableBase',
                                                  'BrigDirectiveComment',
                                                  'BrigDirectiveCode',
                                                  'BrigDirectiveKernel',
                                                  'BrigDirectiveSignature',
                                                  'BrigDirectiveImageInit',
                                                  'BrigBlockStart',
                                                  'BrigDirectiveVariable',
                                                  'BrigDirectiveLabelTargets',
                                                  'BrigDirectiveVariableInit',
                                                  'BrigBlockNumeric',
                                                  'BrigDirectiveOpaqueInit',
                                                  'BrigDirectiveSamplerInit',
                                                  'BrigDirectiveArgScopeEnd',
                                                  'BrigDirectiveImageProperties',
                                                  'BrigDirectiveLabel',
                                                  'BrigDirectiveFbarrier',
                                                  'BrigDirectiveExecutable',
                                                  'BrigDirectiveArgScopeStart',
                                                  'BrigBlockEnd',
                                                  'BrigDirectiveControl',
                                                  'BrigDirectiveFunction'
                                                ]
                                },
             'BrigDirectiveLoc' => {
                                     'enum' => 'BRIG_DIRECTIVE_LOC',
                                     'name' => 'BrigDirectiveLoc',
                                     'wname' => 'DirectiveLoc',
                                     'parent' => 'BrigDirectiveCode',
                                     'align' => undef,
                                     'fields' => [
                                                   {
                                                     'wtype' => 'ValRef<uint16_t>',
                                                     'type' => 'uint16_t',
                                                     'acc' => 'valRef',
                                                     'name' => 'size',
                                                     'wname' => 'size'
                                                   },
                                                   {
                                                     'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                     'type' => 'BrigDirectiveKinds16_t',
                                                     'wname' => 'kind',
                                                     'name' => 'kind',
                                                     'enum' => 'BrigDirectiveKinds',
                                                     'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>'
                                                   },
                                                   {
                                                     'defValue' => '0',
                                                     'wtype' => 'ItemRef<Inst>',
                                                     'type' => 'BrigCodeOffset32_t',
                                                     'name' => 'code',
                                                     'acc' => 'itemRef<Inst>',
                                                     'wname' => 'code'
                                                   },
                                                   {
                                                     'wname' => 'filename',
                                                     'acc' => 'strRef',
                                                     'name' => 'filename',
                                                     'type' => 'BrigStringOffset32_t',
                                                     'wtype' => 'StrRef',
                                                     'defValue' => '0'
                                                   },
                                                   {
                                                     'acc' => 'valRef',
                                                     'name' => 'line',
                                                     'wname' => 'line',
                                                     'wtype' => 'ValRef<uint32_t>',
                                                     'type' => 'uint32_t'
                                                   },
                                                   {
                                                     'wname' => 'column',
                                                     'name' => 'column',
                                                     'acc' => 'valRef',
                                                     'type' => 'uint32_t',
                                                     'wtype' => 'ValRef<uint32_t>',
                                                     'defValue' => '1'
                                                   }
                                                 ]
                                   },
             'BrigInstNone' => {
                                 'enum' => 'BRIG_INST_NONE',
                                 'name' => 'BrigInstNone',
                                 'wname' => 'InstNone',
                                 'isroot' => 'true',
                                 'standalone' => 'true',
                                 'fields' => [
                                               {
                                                 'wtype' => 'ValRef<uint16_t>',
                                                 'type' => 'uint16_t',
                                                 'wname' => 'size',
                                                 'name' => 'size',
                                                 'acc' => 'valRef'
                                               },
                                               {
                                                 'wname' => 'kind',
                                                 'name' => 'kind',
                                                 'enum' => 'BrigInstKinds',
                                                 'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                 'type' => 'BrigInstKinds16_t',
                                                 'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>'
                                               }
                                             ],
                                 'align' => undef
                               },
             'BrigInstSegCvt' => {
                                   'enum' => 'BRIG_INST_SEG_CVT',
                                   'name' => 'BrigInstSegCvt',
                                   'wname' => 'InstSegCvt',
                                   'parent' => 'BrigInst',
                                   'align' => undef,
                                   'fields' => [
                                                 {
                                                   'type' => 'uint16_t',
                                                   'wtype' => 'ValRef<uint16_t>',
                                                   'name' => 'size',
                                                   'acc' => 'valRef',
                                                   'wname' => 'size'
                                                 },
                                                 {
                                                   'wname' => 'kind',
                                                   'name' => 'kind',
                                                   'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                   'enum' => 'BrigInstKinds',
                                                   'type' => 'BrigInstKinds16_t',
                                                   'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>'
                                                 },
                                                 {
                                                   'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>',
                                                   'type' => 'BrigOpcode16_t',
                                                   'wname' => 'opcode',
                                                   'name' => 'opcode',
                                                   'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                                   'enum' => 'BrigOpcode'
                                                 },
                                                 {
                                                   'wtype' => 'ValRef<uint16_t>',
                                                   'type' => 'BrigType16_t',
                                                   'wname' => 'type',
                                                   'acc' => 'valRef',
                                                   'name' => 'type'
                                                 },
                                                 {
                                                   'acc' => 'itemRef<Operand>',
                                                   'comments' => [
                                                                   '// overridden, was ItemRef<Operand> operand'
                                                                 ],
                                                   'wname' => 'operands',
                                                   'size' => '5',
                                                   'defValue' => '0',
                                                   'wtype' => 'ItemRef<Operand>',
                                                   'type' => 'BrigOperandOffset32_t',
                                                   'name' => 'operands'
                                                 },
                                                 {
                                                   'wtype' => 'ValRef<uint16_t>',
                                                   'type' => 'BrigType16_t',
                                                   'name' => 'sourceType',
                                                   'acc' => 'valRef',
                                                   'wname' => 'sourceType'
                                                 },
                                                 {
                                                   'type' => 'BrigSegment8_t',
                                                   'wtype' => 'EnumValRef<Brig::BrigSegment,uint8_t>',
                                                   'defValue' => '0',
                                                   'wname' => 'segment',
                                                   'name' => 'segment',
                                                   'enum' => 'BrigSegment',
                                                   'acc' => 'enumValRef<Brig::BrigSegment,uint8_t>'
                                                 },
                                                 {
                                                   'acc' => 'subItem<SegCvtModifier>',
                                                   'name' => 'modifier',
                                                   'wname' => 'modifier',
                                                   'type' => 'BrigSegCvtModifier',
                                                   'wtype' => 'SegCvtModifier'
                                                 }
                                               ]
                                 },
             'BrigInstAtomic' => {
                                   'wname' => 'InstAtomic',
                                   'name' => 'BrigInstAtomic',
                                   'enum' => 'BRIG_INST_ATOMIC',
                                   'align' => undef,
                                   'fields' => [
                                                 {
                                                   'wtype' => 'ValRef<uint16_t>',
                                                   'type' => 'uint16_t',
                                                   'wname' => 'size',
                                                   'acc' => 'valRef',
                                                   'name' => 'size'
                                                 },
                                                 {
                                                   'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>',
                                                   'type' => 'BrigInstKinds16_t',
                                                   'wname' => 'kind',
                                                   'name' => 'kind',
                                                   'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                   'enum' => 'BrigInstKinds'
                                                 },
                                                 {
                                                   'wname' => 'opcode',
                                                   'name' => 'opcode',
                                                   'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                                   'enum' => 'BrigOpcode',
                                                   'type' => 'BrigOpcode16_t',
                                                   'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>'
                                                 },
                                                 {
                                                   'wname' => 'type',
                                                   'acc' => 'valRef',
                                                   'name' => 'type',
                                                   'type' => 'BrigType16_t',
                                                   'wtype' => 'ValRef<uint16_t>'
                                                 },
                                                 {
                                                   'type' => 'BrigOperandOffset32_t',
                                                   'wtype' => 'ItemRef<Operand>',
                                                   'defValue' => '0',
                                                   'wname' => 'operand',
                                                   'size' => '5',
                                                   'acc' => 'itemRef<Operand>',
                                                   'name' => 'operands'
                                                 },
                                                 {
                                                   'name' => 'segment',
                                                   'enum' => 'BrigSegment',
                                                   'acc' => 'enumValRef<Brig::BrigSegment,uint8_t>',
                                                   'wname' => 'segment',
                                                   'defValue' => '0',
                                                   'type' => 'BrigSegment8_t',
                                                   'wtype' => 'EnumValRef<Brig::BrigSegment,uint8_t>'
                                                 },
                                                 {
                                                   'wtype' => 'EnumValRef<Brig::BrigMemoryOrder,uint8_t>',
                                                   'type' => 'BrigMemoryOrder8_t',
                                                   'defValue' => 'Brig::BRIG_MEMORY_ORDER_RELAXED',
                                                   'wname' => 'memoryOrder',
                                                   'name' => 'memoryOrder',
                                                   'enum' => 'BrigMemoryOrder',
                                                   'acc' => 'enumValRef<Brig::BrigMemoryOrder,uint8_t>'
                                                 },
                                                 {
                                                   'enum' => 'BrigMemoryScope',
                                                   'acc' => 'enumValRef<Brig::BrigMemoryScope,uint8_t>',
                                                   'name' => 'memoryScope',
                                                   'wname' => 'memoryScope',
                                                   'defValue' => 'Brig::BRIG_MEMORY_SCOPE_SYSTEM',
                                                   'wtype' => 'EnumValRef<Brig::BrigMemoryScope,uint8_t>',
                                                   'type' => 'BrigMemoryScope8_t'
                                                 },
                                                 {
                                                   'acc' => 'enumValRef<Brig::BrigAtomicOperation,uint8_t>',
                                                   'enum' => 'BrigAtomicOperation',
                                                   'name' => 'atomicOperation',
                                                   'wname' => 'atomicOperation',
                                                   'type' => 'BrigAtomicOperation8_t',
                                                   'wtype' => 'EnumValRef<Brig::BrigAtomicOperation,uint8_t>'
                                                 },
                                                 {
                                                   'type' => 'uint8_t',
                                                   'wtype' => 'ValRef<uint8_t>',
                                                   'acc' => 'valRef',
                                                   'name' => 'equivClass',
                                                   'wname' => 'equivClass'
                                                 },
                                                 {
                                                   'size' => 3,
                                                   'wname' => 'reserved',
                                                   'acc' => 'valRef',
                                                   'wtype' => 'ValRef<uint8_t>',
                                                   'type' => 'uint8_t',
                                                   'skip' => 1,
                                                   'defValue' => '0',
                                                   'name' => 'reserved'
                                                 }
                                               ],
                                   'parent' => 'BrigInst'
                                 },
             'BrigInstBasic' => {
                                  'fields' => [
                                                {
                                                  'wname' => 'size',
                                                  'name' => 'size',
                                                  'acc' => 'valRef',
                                                  'type' => 'uint16_t',
                                                  'wtype' => 'ValRef<uint16_t>'
                                                },
                                                {
                                                  'wname' => 'kind',
                                                  'name' => 'kind',
                                                  'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                  'enum' => 'BrigInstKinds',
                                                  'type' => 'BrigInstKinds16_t',
                                                  'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>'
                                                },
                                                {
                                                  'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>',
                                                  'type' => 'BrigOpcode16_t',
                                                  'wname' => 'opcode',
                                                  'name' => 'opcode',
                                                  'enum' => 'BrigOpcode',
                                                  'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>'
                                                },
                                                {
                                                  'type' => 'BrigType16_t',
                                                  'wtype' => 'ValRef<uint16_t>',
                                                  'wname' => 'type',
                                                  'acc' => 'valRef',
                                                  'name' => 'type'
                                                },
                                                {
                                                  'acc' => 'itemRef<Operand>',
                                                  'name' => 'operands',
                                                  'wname' => 'operand',
                                                  'size' => '5',
                                                  'defValue' => '0',
                                                  'wtype' => 'ItemRef<Operand>',
                                                  'type' => 'BrigOperandOffset32_t'
                                                }
                                              ],
                                  'align' => undef,
                                  'parent' => 'BrigInst',
                                  'wname' => 'InstBasic',
                                  'enum' => 'BRIG_INST_BASIC',
                                  'name' => 'BrigInstBasic'
                                },
             'BrigInst' => {
                             'enum' => 'BRIG_INST',
                             'name' => 'BrigInst',
                             'children' => [
                                             'BrigInstSeg',
                                             'BrigInstSignal',
                                             'BrigInstLane',
                                             'BrigInstImage',
                                             'BrigInstAddr',
                                             'BrigInstCvt',
                                             'BrigInstBasic',
                                             'BrigInstSourceType',
                                             'BrigInstQueue',
                                             'BrigInstAtomic',
                                             'BrigInstQueryImage',
                                             'BrigInstSegCvt',
                                             'BrigInstQuerySampler',
                                             'BrigInstCmp',
                                             'BrigInstMemFence',
                                             'BrigInstMem',
                                             'BrigInstMod',
                                             'BrigInstBr'
                                           ],
                             'fields' => [
                                           {
                                             'wname' => 'size',
                                             'name' => 'size',
                                             'acc' => 'valRef',
                                             'wtype' => 'ValRef<uint16_t>',
                                             'type' => 'uint16_t'
                                           },
                                           {
                                             'wname' => 'kind',
                                             'enum' => 'BrigInstKinds',
                                             'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                             'name' => 'kind',
                                             'type' => 'BrigInstKinds16_t',
                                             'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>'
                                           },
                                           {
                                             'name' => 'opcode',
                                             'enum' => 'BrigOpcode',
                                             'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                             'wname' => 'opcode',
                                             'type' => 'BrigOpcode16_t',
                                             'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>'
                                           },
                                           {
                                             'type' => 'BrigType16_t',
                                             'wtype' => 'ValRef<uint16_t>',
                                             'name' => 'type',
                                             'acc' => 'valRef',
                                             'wname' => 'type'
                                           },
                                           {
                                             'wname' => 'operand',
                                             'size' => '5',
                                             'acc' => 'itemRef<Operand>',
                                             'name' => 'operands',
                                             'wtype' => 'ItemRef<Operand>',
                                             'type' => 'BrigOperandOffset32_t',
                                             'defValue' => '0'
                                           }
                                         ],
                             'align' => undef,
                             'generic' => 'true',
                             'wname' => 'Inst',
                             'isroot' => 'true'
                           },
             'BrigDirectiveArgScopeStart' => {
                                               'parent' => 'BrigDirectiveCode',
                                               'align' => undef,
                                               'fields' => [
                                                             {
                                                               'wtype' => 'ValRef<uint16_t>',
                                                               'type' => 'uint16_t',
                                                               'acc' => 'valRef',
                                                               'name' => 'size',
                                                               'wname' => 'size'
                                                             },
                                                             {
                                                               'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                               'type' => 'BrigDirectiveKinds16_t',
                                                               'name' => 'kind',
                                                               'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                               'enum' => 'BrigDirectiveKinds',
                                                               'wname' => 'kind'
                                                             },
                                                             {
                                                               'type' => 'BrigCodeOffset32_t',
                                                               'wtype' => 'ItemRef<Inst>',
                                                               'defValue' => '0',
                                                               'wname' => 'code',
                                                               'name' => 'code',
                                                               'acc' => 'itemRef<Inst>'
                                                             }
                                                           ],
                                               'name' => 'BrigDirectiveArgScopeStart',
                                               'enum' => 'BRIG_DIRECTIVE_ARG_SCOPE_START',
                                               'wname' => 'DirectiveArgScopeStart'
                                             },
             'BrigOperandSignatureRef' => {
                                            'align' => undef,
                                            'fields' => [
                                                          {
                                                            'acc' => 'valRef',
                                                            'name' => 'size',
                                                            'wname' => 'size',
                                                            'wtype' => 'ValRef<uint16_t>',
                                                            'type' => 'uint16_t'
                                                          },
                                                          {
                                                            'name' => 'kind',
                                                            'enum' => 'BrigOperandKinds',
                                                            'acc' => 'enumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                            'wname' => 'kind',
                                                            'wtype' => 'EnumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                            'type' => 'BrigOperandKinds16_t'
                                                          },
                                                          {
                                                            'acc' => 'itemRef<DirectiveCallableBase>',
                                                            'comments' => [
                                                                            '// overridden, was ItemRef<Directive> ref'
                                                                          ],
                                                            'name' => 'ref',
                                                            'wname' => 'sig',
                                                            'defValue' => '0',
                                                            'type' => 'BrigDirectiveOffset32_t',
                                                            'wtype' => 'ItemRef<DirectiveCallableBase>'
                                                          }
                                                        ],
                                            'parent' => 'BrigOperandRef',
                                            'wname' => 'OperandSignatureRef',
                                            'enum' => 'BRIG_OPERAND_SIGNATURE_REF',
                                            'name' => 'BrigOperandSignatureRef'
                                          },
             'BrigInstCvt' => {
                                'name' => 'BrigInstCvt',
                                'enum' => 'BRIG_INST_CVT',
                                'wname' => 'InstCvt',
                                'parent' => 'BrigInst',
                                'align' => undef,
                                'fields' => [
                                              {
                                                'name' => 'size',
                                                'acc' => 'valRef',
                                                'wname' => 'size',
                                                'type' => 'uint16_t',
                                                'wtype' => 'ValRef<uint16_t>'
                                              },
                                              {
                                                'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>',
                                                'type' => 'BrigInstKinds16_t',
                                                'name' => 'kind',
                                                'enum' => 'BrigInstKinds',
                                                'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                'wname' => 'kind'
                                              },
                                              {
                                                'type' => 'BrigOpcode16_t',
                                                'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>',
                                                'name' => 'opcode',
                                                'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                                'enum' => 'BrigOpcode',
                                                'wname' => 'opcode'
                                              },
                                              {
                                                'wname' => 'type',
                                                'name' => 'type',
                                                'acc' => 'valRef',
                                                'type' => 'BrigType16_t',
                                                'wtype' => 'ValRef<uint16_t>'
                                              },
                                              {
                                                'size' => '5',
                                                'wname' => 'operand',
                                                'name' => 'operands',
                                                'acc' => 'itemRef<Operand>',
                                                'type' => 'BrigOperandOffset32_t',
                                                'wtype' => 'ItemRef<Operand>',
                                                'defValue' => '0'
                                              },
                                              {
                                                'type' => 'BrigType16_t',
                                                'wtype' => 'ValRef<uint16_t>',
                                                'acc' => 'valRef',
                                                'name' => 'sourceType',
                                                'wname' => 'sourceType'
                                              },
                                              {
                                                'type' => 'BrigAluModifier',
                                                'wtype' => 'AluModifier',
                                                'name' => 'modifier',
                                                'acc' => 'subItem<AluModifier>',
                                                'wname' => 'modifier'
                                              }
                                            ]
                              },
             'BrigInstBase' => {
                                 'nowrap' => 'true',
                                 'align' => undef,
                                 'fields' => [
                                               {
                                                 'name' => 'size',
                                                 'type' => 'uint16_t'
                                               },
                                               {
                                                 'type' => 'BrigInstKinds16_t',
                                                 'name' => 'kind'
                                               },
                                               {
                                                 'name' => 'opcode',
                                                 'type' => 'BrigOpcode16_t'
                                               },
                                               {
                                                 'name' => 'type',
                                                 'type' => 'BrigType16_t'
                                               },
                                               {
                                                 'type' => 'BrigOperandOffset32_t',
                                                 'name' => 'operands',
                                                 'size' => '5'
                                               }
                                             ],
                                 'name' => 'BrigInstBase'
                               },
             'BrigDirectiveFbarrier' => {
                                          'name' => 'BrigDirectiveFbarrier',
                                          'enum' => 'BRIG_DIRECTIVE_FBARRIER',
                                          'wname' => 'DirectiveFbarrier',
                                          'parent' => 'BrigDirectiveCode',
                                          'align' => undef,
                                          'fields' => [
                                                        {
                                                          'wname' => 'size',
                                                          'name' => 'size',
                                                          'acc' => 'valRef',
                                                          'wtype' => 'ValRef<uint16_t>',
                                                          'type' => 'uint16_t'
                                                        },
                                                        {
                                                          'name' => 'kind',
                                                          'enum' => 'BrigDirectiveKinds',
                                                          'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                          'wname' => 'kind',
                                                          'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                          'type' => 'BrigDirectiveKinds16_t'
                                                        },
                                                        {
                                                          'defValue' => '0',
                                                          'wtype' => 'ItemRef<Inst>',
                                                          'type' => 'BrigCodeOffset32_t',
                                                          'acc' => 'itemRef<Inst>',
                                                          'name' => 'code',
                                                          'wname' => 'code'
                                                        },
                                                        {
                                                          'type' => 'BrigStringOffset32_t',
                                                          'wtype' => 'StrRef',
                                                          'defValue' => '0',
                                                          'wname' => 'name',
                                                          'name' => 'name',
                                                          'acc' => 'strRef'
                                                        }
                                                      ]
                                        },
             'BrigDirectiveImageProperties' => {
                                                 'name' => 'BrigDirectiveImageProperties',
                                                 'enum' => 'BRIG_DIRECTIVE_IMAGE_PROPERTIES',
                                                 'wname' => 'DirectiveImageProperties',
                                                 'parent' => 'BrigDirectiveCode',
                                                 'fields' => [
                                                               {
                                                                 'wname' => 'size',
                                                                 'name' => 'size',
                                                                 'acc' => 'valRef',
                                                                 'wtype' => 'ValRef<uint16_t>',
                                                                 'type' => 'uint16_t'
                                                               },
                                                               {
                                                                 'enum' => 'BrigDirectiveKinds',
                                                                 'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                                 'name' => 'kind',
                                                                 'wname' => 'kind',
                                                                 'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                                 'type' => 'BrigDirectiveKinds16_t'
                                                               },
                                                               {
                                                                 'defValue' => '0',
                                                                 'type' => 'BrigCodeOffset32_t',
                                                                 'wtype' => 'ItemRef<Inst>',
                                                                 'name' => 'code',
                                                                 'acc' => 'itemRef<Inst>',
                                                                 'wname' => 'code'
                                                               },
                                                               {
                                                                 'defValue' => '0',
                                                                 'wtype' => 'ValRef<uint32_t>',
                                                                 'type' => 'uint32_t',
                                                                 'acc' => 'valRef',
                                                                 'name' => 'width',
                                                                 'wname' => 'width'
                                                               },
                                                               {
                                                                 'defValue' => '0',
                                                                 'type' => 'uint32_t',
                                                                 'wtype' => 'ValRef<uint32_t>',
                                                                 'name' => 'height',
                                                                 'acc' => 'valRef',
                                                                 'wname' => 'height'
                                                               },
                                                               {
                                                                 'acc' => 'valRef',
                                                                 'name' => 'depth',
                                                                 'wname' => 'depth',
                                                                 'defValue' => '0',
                                                                 'wtype' => 'ValRef<uint32_t>',
                                                                 'type' => 'uint32_t'
                                                               },
                                                               {
                                                                 'name' => 'array',
                                                                 'acc' => 'valRef',
                                                                 'wname' => 'array',
                                                                 'defValue' => '0',
                                                                 'type' => 'uint32_t',
                                                                 'wtype' => 'ValRef<uint32_t>'
                                                               },
                                                               {
                                                                 'defValue' => 'Brig::BRIG_GEOMETRY_UNKNOWN',
                                                                 'type' => 'BrigImageGeometry8_t',
                                                                 'wtype' => 'EnumValRef<Brig::BrigImageGeometry,uint8_t>',
                                                                 'name' => 'geometry',
                                                                 'acc' => 'enumValRef<Brig::BrigImageGeometry,uint8_t>',
                                                                 'enum' => 'BrigImageGeometry',
                                                                 'wname' => 'geometry'
                                                               },
                                                               {
                                                                 'type' => 'BrigImageChannelOrder8_t',
                                                                 'wtype' => 'EnumValRef<Brig::BrigImageChannelOrder,uint8_t>',
                                                                 'defValue' => 'Brig::BRIG_CHANNEL_ORDER_UNKNOWN',
                                                                 'wname' => 'channelOrder',
                                                                 'name' => 'channelOrder',
                                                                 'acc' => 'enumValRef<Brig::BrigImageChannelOrder,uint8_t>',
                                                                 'enum' => 'BrigImageChannelOrder'
                                                               },
                                                               {
                                                                 'type' => 'BrigImageChannelType8_t',
                                                                 'wtype' => 'EnumValRef<Brig::BrigImageChannelType,uint8_t>',
                                                                 'defValue' => 'Brig::BRIG_CHANNEL_TYPE_UNKNOWN',
                                                                 'wname' => 'channelType',
                                                                 'name' => 'channelType',
                                                                 'enum' => 'BrigImageChannelType',
                                                                 'acc' => 'enumValRef<Brig::BrigImageChannelType,uint8_t>'
                                                               },
                                                               {
                                                                 'wname' => 'reserved',
                                                                 'name' => 'reserved',
                                                                 'acc' => 'valRef',
                                                                 'type' => 'uint8_t',
                                                                 'wtype' => 'ValRef<uint8_t>',
                                                                 'skip' => 1,
                                                                 'defValue' => '0'
                                                               }
                                                             ],
                                                 'align' => undef
                                               },
             'BrigMemoryModifier' => {
                                       'isroot' => 'true',
                                       'wname' => 'MemoryModifier',
                                       'name' => 'BrigMemoryModifier',
                                       'enum' => 'BRIG_MEMORY_MODIFIER',
                                       'fields' => [
                                                     {
                                                       'name' => 'allBits',
                                                       'acc' => 'valRef',
                                                       'wname' => 'allBits',
                                                       'defValue' => '0',
                                                       'type' => 'BrigMemoryModifier8_t',
                                                       'wtype' => 'ValRef<uint8_t>'
                                                     },
                                                     {
                                                       'wname' => 'isConst',
                                                       'name' => 'isConst',
                                                       'acc' => 'bitValRef<0>',
                                                       'type' => 'bool',
                                                       'wtype' => 'BitValRef<0>',
                                                       'phantomof' => $structs->{'BrigMemoryModifier'}{'fields'}[0]
                                                     }
                                                   ],
                                       'align' => undef,
                                       'standalone' => 'true'
                                     },
             'BrigAluModifier' => {
                                    'enum' => 'BRIG_ALU_MODIFIER',
                                    'name' => 'BrigAluModifier',
                                    'wname' => 'AluModifier',
                                    'isroot' => 'true',
                                    'standalone' => 'true',
                                    'align' => undef,
                                    'fields' => [
                                                  {
                                                    'wname' => 'allBits',
                                                    'name' => 'allBits',
                                                    'acc' => 'valRef',
                                                    'wtype' => 'ValRef<uint16_t>',
                                                    'type' => 'BrigAluModifier16_t',
                                                    'defValue' => '0'
                                                  },
                                                  {
                                                    'acc' => 'bFValRef<Brig::BrigRound8_t,0,4>',
                                                    'enum' => 'BrigRound',
                                                    'name' => 'round',
                                                    'wname' => 'round',
                                                    'phantomof' => $structs->{'BrigAluModifier'}{'fields'}[0],
                                                    'type' => 'BrigRound8_t',
                                                    'wtype' => 'BFValRef<Brig::BrigRound8_t,0,4>'
                                                  },
                                                  {
                                                    'phantomof' => $structs->{'BrigAluModifier'}{'fields'}[0],
                                                    'type' => 'bool',
                                                    'wtype' => 'BitValRef<4>',
                                                    'acc' => 'bitValRef<4>',
                                                    'name' => 'ftz',
                                                    'wname' => 'ftz'
                                                  }
                                                ]
                                  },
             'BrigOperandArgumentList' => {
                                            'align' => undef,
                                            'fields' => [
                                                          {
                                                            'name' => 'size',
                                                            'acc' => 'valRef',
                                                            'wname' => 'size',
                                                            'type' => 'uint16_t',
                                                            'wtype' => 'ValRef<uint16_t>'
                                                          },
                                                          {
                                                            'type' => 'BrigOperandKinds16_t',
                                                            'wtype' => 'EnumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                            'enum' => 'BrigOperandKinds',
                                                            'acc' => 'enumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                            'name' => 'kind',
                                                            'wname' => 'kind'
                                                          },
                                                          {
                                                            'acc' => 'valRef',
                                                            'name' => 'reserved',
                                                            'wname' => 'reserved',
                                                            'defValue' => '0',
                                                            'skip' => 1,
                                                            'type' => 'uint16_t',
                                                            'wtype' => 'ValRef<uint16_t>'
                                                          },
                                                          {
                                                            'acc' => 'valRef',
                                                            'name' => 'elementCount',
                                                            'wname' => 'elementCount',
                                                            'defValue' => '0',
                                                            'type' => 'uint16_t',
                                                            'wtype' => 'ValRef<uint16_t>'
                                                          },
                                                          {
                                                            'defValue' => '0',
                                                            'wtype' => 'ItemRef<Directive>',
                                                            'type' => 'BrigDirectiveOffset32_t',
                                                            'wspecial' => 'ArgumentRefList',
                                                            'acc' => 'itemRef<Directive>',
                                                            'size' => '1',
                                                            'wname' => 'elements',
                                                            'name' => 'elements'
                                                          }
                                                        ],
                                            'parent' => 'BrigOperandList',
                                            'wname' => 'OperandArgumentList',
                                            'enum' => 'BRIG_OPERAND_ARGUMENT_LIST',
                                            'name' => 'BrigOperandArgumentList'
                                          },
             'BrigDirectiveOpaqueInit' => {
                                            'parent' => 'BrigDirectiveCode',
                                            'align' => undef,
                                            'fields' => [
                                                          {
                                                            'name' => 'size',
                                                            'acc' => 'valRef',
                                                            'wname' => 'size',
                                                            'type' => 'uint16_t',
                                                            'wtype' => 'ValRef<uint16_t>'
                                                          },
                                                          {
                                                            'enum' => 'BrigDirectiveKinds',
                                                            'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                            'name' => 'kind',
                                                            'wname' => 'kind',
                                                            'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                            'type' => 'BrigDirectiveKinds16_t'
                                                          },
                                                          {
                                                            'name' => 'code',
                                                            'acc' => 'itemRef<Inst>',
                                                            'wname' => 'code',
                                                            'defValue' => '0',
                                                            'type' => 'BrigCodeOffset32_t',
                                                            'wtype' => 'ItemRef<Inst>'
                                                          },
                                                          {
                                                            'defValue' => '0',
                                                            'wtype' => 'ValRef<uint16_t>',
                                                            'type' => 'uint16_t',
                                                            'name' => 'imageCount',
                                                            'acc' => 'valRef',
                                                            'wname' => 'imageCount'
                                                          },
                                                          {
                                                            'wname' => 'elementCount',
                                                            'acc' => 'valRef',
                                                            'name' => 'elementCount',
                                                            'type' => 'uint16_t',
                                                            'wtype' => 'ValRef<uint16_t>',
                                                            'phantomof' => $structs->{'BrigDirectiveOpaqueInit'}{'fields'}[3]
                                                          },
                                                          {
                                                            'wname' => 'reserved',
                                                            'name' => 'reserved',
                                                            'acc' => 'valRef',
                                                            'type' => 'uint16_t',
                                                            'wtype' => 'ValRef<uint16_t>',
                                                            'skip' => 1,
                                                            'defValue' => '0'
                                                          },
                                                          {
                                                            'wtype' => 'ItemRef<Directive>',
                                                            'wspecial' => 'OpaqueInitList',
                                                            'type' => 'BrigDirectiveOffset32_t',
                                                            'defValue' => '0',
                                                            'wname' => 'objects',
                                                            'size' => '1',
                                                            'acc' => 'itemRef<Directive>',
                                                            'name' => 'objects'
                                                          }
                                                        ],
                                            'name' => 'BrigDirectiveOpaqueInit',
                                            'children' => [
                                                            'BrigDirectiveSamplerInit',
                                                            'BrigDirectiveImageInit'
                                                          ],
                                            'enum' => 'BRIG_DIRECTIVE_OPAQUE_INIT',
                                            'generic' => 'true',
                                            'wname' => 'DirectiveOpaqueInit'
                                          },
             'BrigInstSignal' => {
                                   'wname' => 'InstSignal',
                                   'enum' => 'BRIG_INST_SIGNAL',
                                   'name' => 'BrigInstSignal',
                                   'fields' => [
                                                 {
                                                   'type' => 'uint16_t',
                                                   'wtype' => 'ValRef<uint16_t>',
                                                   'wname' => 'size',
                                                   'acc' => 'valRef',
                                                   'name' => 'size'
                                                 },
                                                 {
                                                   'type' => 'BrigInstKinds16_t',
                                                   'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>',
                                                   'name' => 'kind',
                                                   'enum' => 'BrigInstKinds',
                                                   'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                   'wname' => 'kind'
                                                 },
                                                 {
                                                   'enum' => 'BrigOpcode',
                                                   'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                                   'name' => 'opcode',
                                                   'wname' => 'opcode',
                                                   'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>',
                                                   'type' => 'BrigOpcode16_t'
                                                 },
                                                 {
                                                   'wname' => 'type',
                                                   'acc' => 'valRef',
                                                   'name' => 'type',
                                                   'wtype' => 'ValRef<uint16_t>',
                                                   'type' => 'BrigType16_t'
                                                 },
                                                 {
                                                   'defValue' => '0',
                                                   'wtype' => 'ItemRef<Operand>',
                                                   'type' => 'BrigOperandOffset32_t',
                                                   'name' => 'operands',
                                                   'acc' => 'itemRef<Operand>',
                                                   'size' => '5',
                                                   'wname' => 'operand'
                                                 },
                                                 {
                                                   'wtype' => 'ValRef<uint16_t>',
                                                   'type' => 'BrigType16_t',
                                                   'acc' => 'valRef',
                                                   'name' => 'signalType',
                                                   'wname' => 'signalType'
                                                 },
                                                 {
                                                   'defValue' => 'Brig::BRIG_MEMORY_ORDER_RELAXED',
                                                   'wtype' => 'EnumValRef<Brig::BrigMemoryOrder,uint8_t>',
                                                   'type' => 'BrigMemoryOrder8_t',
                                                   'name' => 'memoryOrder',
                                                   'enum' => 'BrigMemoryOrder',
                                                   'acc' => 'enumValRef<Brig::BrigMemoryOrder,uint8_t>',
                                                   'wname' => 'memoryOrder'
                                                 },
                                                 {
                                                   'name' => 'signalOperation',
                                                   'enum' => 'BrigAtomicOperation',
                                                   'acc' => 'enumValRef<Brig::BrigAtomicOperation,uint8_t>',
                                                   'wname' => 'signalOperation',
                                                   'wtype' => 'EnumValRef<Brig::BrigAtomicOperation,uint8_t>',
                                                   'type' => 'BrigAtomicOperation8_t'
                                                 }
                                               ],
                                   'align' => undef,
                                   'parent' => 'BrigInst'
                                 },
             'BrigOperandBase' => {
                                    'name' => 'BrigOperandBase',
                                    'align' => undef,
                                    'fields' => [
                                                  {
                                                    'name' => 'size',
                                                    'type' => 'uint16_t'
                                                  },
                                                  {
                                                    'name' => 'kind',
                                                    'type' => 'BrigOperandKinds16_t'
                                                  }
                                                ],
                                    'nowrap' => 'true'
                                  },
             'BrigSymbolModifier' => {
                                       'fields' => [
                                                     {
                                                       'defValue' => '0',
                                                       'type' => 'BrigSymbolModifier8_t',
                                                       'wtype' => 'ValRef<uint8_t>',
                                                       'name' => 'allBits',
                                                       'acc' => 'valRef',
                                                       'wname' => 'allBits'
                                                     },
                                                     {
                                                       'wname' => 'linkage',
                                                       'name' => 'linkage',
                                                       'acc' => 'bFValRef<Brig::BrigLinkage8_t,0,2>',
                                                       'wtype' => 'BFValRef<Brig::BrigLinkage8_t,0,2>',
                                                       'type' => 'BrigLinkage',
                                                       'phantomof' => $structs->{'BrigSymbolModifier'}{'fields'}[0]
                                                     },
                                                     {
                                                       'phantomof' => $structs->{'BrigSymbolModifier'}{'fields'}[0],
                                                       'wtype' => 'BitValRef<2>',
                                                       'type' => 'bool',
                                                       'acc' => 'bitValRef<2>',
                                                       'name' => 'isDeclaration',
                                                       'wname' => 'isDeclaration'
                                                     },
                                                     {
                                                       'phantomof' => $structs->{'BrigSymbolModifier'}{'fields'}[0],
                                                       'wtype' => 'BitValRef<3>',
                                                       'type' => 'bool',
                                                       'acc' => 'bitValRef<3>',
                                                       'name' => 'isConst',
                                                       'wname' => 'isConst'
                                                     },
                                                     {
                                                       'wname' => 'isArray',
                                                       'name' => 'isArray',
                                                       'acc' => 'bitValRef<4>',
                                                       'type' => 'bool',
                                                       'wtype' => 'BitValRef<4>',
                                                       'phantomof' => $structs->{'BrigSymbolModifier'}{'fields'}[0]
                                                     },
                                                     {
                                                       'phantomof' => $structs->{'BrigSymbolModifier'}{'fields'}[0],
                                                       'type' => 'bool',
                                                       'wtype' => 'BitValRef<5>',
                                                       'name' => 'isFlexArray',
                                                       'acc' => 'bitValRef<5>',
                                                       'wname' => 'isFlexArray'
                                                     }
                                                   ],
                                       'align' => undef,
                                       'standalone' => 'true',
                                       'isroot' => 'true',
                                       'wname' => 'SymbolModifier',
                                       'name' => 'BrigSymbolModifier',
                                       'enum' => 'BRIG_SYMBOL_MODIFIER'
                                     },
             'BrigDirectiveLabelTargets' => {
                                              'parent' => 'BrigDirectiveCode',
                                              'align' => undef,
                                              'fields' => [
                                                            {
                                                              'type' => 'uint16_t',
                                                              'wtype' => 'ValRef<uint16_t>',
                                                              'wname' => 'size',
                                                              'acc' => 'valRef',
                                                              'name' => 'size'
                                                            },
                                                            {
                                                              'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                              'enum' => 'BrigDirectiveKinds',
                                                              'name' => 'kind',
                                                              'wname' => 'kind',
                                                              'type' => 'BrigDirectiveKinds16_t',
                                                              'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>'
                                                            },
                                                            {
                                                              'defValue' => '0',
                                                              'wtype' => 'ItemRef<Inst>',
                                                              'type' => 'BrigCodeOffset32_t',
                                                              'name' => 'code',
                                                              'acc' => 'itemRef<Inst>',
                                                              'wname' => 'code'
                                                            },
                                                            {
                                                              'acc' => 'strRef',
                                                              'name' => 'name',
                                                              'wname' => 'name',
                                                              'defValue' => '0',
                                                              'type' => 'BrigStringOffset32_t',
                                                              'wtype' => 'StrRef'
                                                            },
                                                            {
                                                              'acc' => 'valRef',
                                                              'name' => 'labelCount',
                                                              'wname' => 'elementCount',
                                                              'defValue' => '0',
                                                              'wtype' => 'ValRef<uint16_t>',
                                                              'type' => 'uint16_t'
                                                            },
                                                            {
                                                              'wname' => 'reserved',
                                                              'name' => 'reserved',
                                                              'acc' => 'valRef',
                                                              'wtype' => 'ValRef<uint16_t>',
                                                              'type' => 'uint16_t',
                                                              'skip' => 1,
                                                              'defValue' => '0'
                                                            },
                                                            {
                                                              'name' => 'labels',
                                                              'defValue' => '0',
                                                              'type' => 'BrigDirectiveOffset32_t',
                                                              'wspecial' => 'LabelTargetsList',
                                                              'wtype' => 'ItemRef<DirectiveLabel>',
                                                              'acc' => 'itemRef<DirectiveLabel>',
                                                              'wname' => 'labels',
                                                              'size' => '1'
                                                            }
                                                          ],
                                              'name' => 'BrigDirectiveLabelTargets',
                                              'enum' => 'BRIG_DIRECTIVE_LABEL_TARGETS',
                                              'wname' => 'DirectiveLabelTargets'
                                            },
             'BrigOperandWavesize' => {
                                        'wname' => 'OperandWavesize',
                                        'enum' => 'BRIG_OPERAND_WAVESIZE',
                                        'name' => 'BrigOperandWavesize',
                                        'fields' => [
                                                      {
                                                        'acc' => 'valRef',
                                                        'name' => 'size',
                                                        'wname' => 'size',
                                                        'type' => 'uint16_t',
                                                        'wtype' => 'ValRef<uint16_t>'
                                                      },
                                                      {
                                                        'type' => 'BrigOperandKinds16_t',
                                                        'wtype' => 'EnumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                        'wname' => 'kind',
                                                        'name' => 'kind',
                                                        'enum' => 'BrigOperandKinds',
                                                        'acc' => 'enumValRef<Brig::BrigOperandKinds,uint16_t>'
                                                      }
                                                    ],
                                        'align' => undef,
                                        'parent' => 'BrigOperand'
                                      },
             'BrigDirectiveComment' => {
                                         'name' => 'BrigDirectiveComment',
                                         'enum' => 'BRIG_DIRECTIVE_COMMENT',
                                         'comments' => [
                                                         '/// comment directive.'
                                                       ],
                                         'wname' => 'DirectiveComment',
                                         'parent' => 'BrigDirectiveCode',
                                         'align' => undef,
                                         'fields' => [
                                                       {
                                                         'wtype' => 'ValRef<uint16_t>',
                                                         'type' => 'uint16_t',
                                                         'wname' => 'size',
                                                         'name' => 'size',
                                                         'acc' => 'valRef'
                                                       },
                                                       {
                                                         'wname' => 'kind',
                                                         'enum' => 'BrigDirectiveKinds',
                                                         'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                         'name' => 'kind',
                                                         'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                         'type' => 'BrigDirectiveKinds16_t'
                                                       },
                                                       {
                                                         'wname' => 'code',
                                                         'acc' => 'itemRef<Inst>',
                                                         'name' => 'code',
                                                         'type' => 'BrigCodeOffset32_t',
                                                         'wtype' => 'ItemRef<Inst>',
                                                         'defValue' => '0'
                                                       },
                                                       {
                                                         'wname' => 'name',
                                                         'name' => 'name',
                                                         'acc' => 'strRef',
                                                         'type' => 'BrigStringOffset32_t',
                                                         'wtype' => 'StrRef',
                                                         'defValue' => '0'
                                                       }
                                                     ]
                                       },
             'BrigOperandImmed' => {
                                     'enum' => 'BRIG_OPERAND_IMMED',
                                     'name' => 'BrigOperandImmed',
                                     'wname' => 'OperandImmed',
                                     'parent' => 'BrigOperand',
                                     'fields' => [
                                                   {
                                                     'acc' => 'valRef',
                                                     'name' => 'size',
                                                     'wname' => 'size',
                                                     'type' => 'uint16_t',
                                                     'wtype' => 'ValRef<uint16_t>'
                                                   },
                                                   {
                                                     'wtype' => 'EnumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                     'type' => 'BrigOperandKinds16_t',
                                                     'wname' => 'kind',
                                                     'name' => 'kind',
                                                     'acc' => 'enumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                     'enum' => 'BrigOperandKinds'
                                                   },
                                                   {
                                                     'defValue' => '0',
                                                     'wtype' => 'ValRef<uint16_t>',
                                                     'type' => 'uint16_t',
                                                     'skip' => 1,
                                                     'name' => 'reserved',
                                                     'acc' => 'valRef',
                                                     'wname' => 'reserved'
                                                   },
                                                   {
                                                     'name' => 'byteCount',
                                                     'acc' => 'valRef',
                                                     'wname' => 'byteCount',
                                                     'type' => 'uint16_t',
                                                     'wtype' => 'ValRef<uint16_t>'
                                                   },
                                                   {
                                                     'noaligncheck' => 'true',
                                                     'name' => 'bytes',
                                                     'size' => 1,
                                                     'wname' => 'bytes',
                                                     'novisit' => 'true',
                                                     'acc' => 'valRef',
                                                     'wtype' => 'ValRef<uint8_t>',
                                                     'type' => 'uint8_t'
                                                   }
                                                 ],
                                     'align' => undef
                                   },
             'BrigDirectiveSamplerProperties' => {
                                                   'wname' => 'DirectiveSamplerProperties',
                                                   'enum' => 'BRIG_DIRECTIVE_SAMPLER_PROPERTIES',
                                                   'name' => 'BrigDirectiveSamplerProperties',
                                                   'align' => undef,
                                                   'fields' => [
                                                                 {
                                                                   'wname' => 'size',
                                                                   'name' => 'size',
                                                                   'acc' => 'valRef',
                                                                   'wtype' => 'ValRef<uint16_t>',
                                                                   'type' => 'uint16_t'
                                                                 },
                                                                 {
                                                                   'name' => 'kind',
                                                                   'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                                   'enum' => 'BrigDirectiveKinds',
                                                                   'wname' => 'kind',
                                                                   'type' => 'BrigDirectiveKinds16_t',
                                                                   'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>'
                                                                 },
                                                                 {
                                                                   'defValue' => '0',
                                                                   'type' => 'BrigCodeOffset32_t',
                                                                   'wtype' => 'ItemRef<Inst>',
                                                                   'acc' => 'itemRef<Inst>',
                                                                   'name' => 'code',
                                                                   'wname' => 'code'
                                                                 },
                                                                 {
                                                                   'type' => 'BrigSamplerCoordNormalization8_t',
                                                                   'wtype' => 'EnumValRef<Brig::BrigSamplerCoordNormalization,uint8_t>',
                                                                   'name' => 'coord',
                                                                   'enum' => 'BrigSamplerCoordNormalization',
                                                                   'acc' => 'enumValRef<Brig::BrigSamplerCoordNormalization,uint8_t>',
                                                                   'wname' => 'coord'
                                                                 },
                                                                 {
                                                                   'wname' => 'filter',
                                                                   'acc' => 'enumValRef<Brig::BrigSamplerFilter,uint8_t>',
                                                                   'enum' => 'BrigSamplerFilter',
                                                                   'name' => 'filter',
                                                                   'wtype' => 'EnumValRef<Brig::BrigSamplerFilter,uint8_t>',
                                                                   'type' => 'BrigSamplerFilter8_t'
                                                                 },
                                                                 {
                                                                   'acc' => 'enumValRef<Brig::BrigSamplerAddressing,uint8_t>',
                                                                   'enum' => 'BrigSamplerAddressing',
                                                                   'name' => 'addressing',
                                                                   'wname' => 'addressing',
                                                                   'defValue' => 'Brig::BRIG_ADDRESSING_CLAMP_TO_EDGE',
                                                                   'type' => 'BrigSamplerAddressing8_t',
                                                                   'wtype' => 'EnumValRef<Brig::BrigSamplerAddressing,uint8_t>'
                                                                 },
                                                                 {
                                                                   'name' => 'reserved',
                                                                   'acc' => 'valRef',
                                                                   'wname' => 'reserved',
                                                                   'defValue' => '0',
                                                                   'wtype' => 'ValRef<uint8_t>',
                                                                   'type' => 'uint8_t',
                                                                   'skip' => 1
                                                                 }
                                                               ],
                                                   'parent' => 'BrigDirectiveCode'
                                                 },
             'BrigInstMem' => {
                                'parent' => 'BrigInst',
                                'align' => undef,
                                'fields' => [
                                              {
                                                'name' => 'size',
                                                'acc' => 'valRef',
                                                'wname' => 'size',
                                                'type' => 'uint16_t',
                                                'wtype' => 'ValRef<uint16_t>'
                                              },
                                              {
                                                'wname' => 'kind',
                                                'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                'enum' => 'BrigInstKinds',
                                                'name' => 'kind',
                                                'type' => 'BrigInstKinds16_t',
                                                'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>'
                                              },
                                              {
                                                'wname' => 'opcode',
                                                'name' => 'opcode',
                                                'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                                'enum' => 'BrigOpcode',
                                                'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>',
                                                'type' => 'BrigOpcode16_t'
                                              },
                                              {
                                                'type' => 'BrigType16_t',
                                                'wtype' => 'ValRef<uint16_t>',
                                                'name' => 'type',
                                                'acc' => 'valRef',
                                                'wname' => 'type'
                                              },
                                              {
                                                'type' => 'BrigOperandOffset32_t',
                                                'wtype' => 'ItemRef<Operand>',
                                                'defValue' => '0',
                                                'wname' => 'operand',
                                                'size' => '5',
                                                'acc' => 'itemRef<Operand>',
                                                'name' => 'operands'
                                              },
                                              {
                                                'name' => 'segment',
                                                'acc' => 'enumValRef<Brig::BrigSegment,uint8_t>',
                                                'enum' => 'BrigSegment',
                                                'wname' => 'segment',
                                                'defValue' => '0',
                                                'wtype' => 'EnumValRef<Brig::BrigSegment,uint8_t>',
                                                'type' => 'BrigSegment8_t'
                                              },
                                              {
                                                'name' => 'align',
                                                'enum' => 'BrigAlignment',
                                                'acc' => 'enumValRef<Brig::BrigAlignment,uint8_t>',
                                                'wname' => 'align',
                                                'wtype' => 'EnumValRef<Brig::BrigAlignment,uint8_t>',
                                                'type' => 'BrigAlignment8_t'
                                              },
                                              {
                                                'wname' => 'equivClass',
                                                'acc' => 'valRef',
                                                'name' => 'equivClass',
                                                'wtype' => 'ValRef<uint8_t>',
                                                'type' => 'uint8_t'
                                              },
                                              {
                                                'name' => 'width',
                                                'enum' => 'BrigWidth',
                                                'acc' => 'enumValRef<Brig::BrigWidth,uint8_t>',
                                                'wname' => 'width',
                                                'type' => 'BrigWidth8_t',
                                                'wtype' => 'EnumValRef<Brig::BrigWidth,uint8_t>'
                                              },
                                              {
                                                'type' => 'BrigMemoryModifier',
                                                'wtype' => 'MemoryModifier',
                                                'wname' => 'modifier',
                                                'acc' => 'subItem<MemoryModifier>',
                                                'name' => 'modifier'
                                              },
                                              {
                                                'defValue' => '0',
                                                'skip' => 1,
                                                'type' => 'uint8_t',
                                                'wtype' => 'ValRef<uint8_t>',
                                                'acc' => 'valRef',
                                                'wname' => 'reserved',
                                                'size' => 3,
                                                'name' => 'reserved'
                                              }
                                            ],
                                'enum' => 'BRIG_INST_MEM',
                                'name' => 'BrigInstMem',
                                'wname' => 'InstMem'
                              },
             'BrigInstMemFence' => {
                                     'wname' => 'InstMemFence',
                                     'enum' => 'BRIG_INST_MEM_FENCE',
                                     'name' => 'BrigInstMemFence',
                                     'fields' => [
                                                   {
                                                     'type' => 'uint16_t',
                                                     'wtype' => 'ValRef<uint16_t>',
                                                     'wname' => 'size',
                                                     'name' => 'size',
                                                     'acc' => 'valRef'
                                                   },
                                                   {
                                                     'type' => 'BrigInstKinds16_t',
                                                     'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>',
                                                     'wname' => 'kind',
                                                     'enum' => 'BrigInstKinds',
                                                     'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                     'name' => 'kind'
                                                   },
                                                   {
                                                     'wname' => 'opcode',
                                                     'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                                     'enum' => 'BrigOpcode',
                                                     'name' => 'opcode',
                                                     'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>',
                                                     'type' => 'BrigOpcode16_t'
                                                   },
                                                   {
                                                     'wname' => 'type',
                                                     'acc' => 'valRef',
                                                     'name' => 'type',
                                                     'type' => 'BrigType16_t',
                                                     'wtype' => 'ValRef<uint16_t>',
                                                     'defValue' => 'Brig::BRIG_TYPE_NONE'
                                                   },
                                                   {
                                                     'wtype' => 'ItemRef<Operand>',
                                                     'type' => 'BrigOperandOffset32_t',
                                                     'defValue' => '0',
                                                     'size' => '5',
                                                     'wname' => 'operand',
                                                     'name' => 'operands',
                                                     'acc' => 'itemRef<Operand>'
                                                   },
                                                   {
                                                     'name' => 'segments',
                                                     'enum' => 'BrigMemoryFenceSegments',
                                                     'acc' => 'enumValRef<Brig::BrigMemoryFenceSegments,uint8_t>',
                                                     'wname' => 'segments',
                                                     'type' => 'BrigMemoryFenceSegments8_t',
                                                     'wtype' => 'EnumValRef<Brig::BrigMemoryFenceSegments,uint8_t>'
                                                   },
                                                   {
                                                     'wname' => 'memoryOrder',
                                                     'name' => 'memoryOrder',
                                                     'acc' => 'enumValRef<Brig::BrigMemoryOrder,uint8_t>',
                                                     'enum' => 'BrigMemoryOrder',
                                                     'type' => 'BrigMemoryOrder8_t',
                                                     'wtype' => 'EnumValRef<Brig::BrigMemoryOrder,uint8_t>',
                                                     'defValue' => 'Brig::BRIG_MEMORY_ORDER_RELAXED'
                                                   },
                                                   {
                                                     'defValue' => 'Brig::BRIG_MEMORY_SCOPE_SYSTEM',
                                                     'type' => 'BrigMemoryScope8_t',
                                                     'wtype' => 'EnumValRef<Brig::BrigMemoryScope,uint8_t>',
                                                     'name' => 'memoryScope',
                                                     'enum' => 'BrigMemoryScope',
                                                     'acc' => 'enumValRef<Brig::BrigMemoryScope,uint8_t>',
                                                     'wname' => 'memoryScope'
                                                   },
                                                   {
                                                     'acc' => 'valRef',
                                                     'name' => 'reserved',
                                                     'wname' => 'reserved',
                                                     'defValue' => '0',
                                                     'skip' => 1,
                                                     'wtype' => 'ValRef<uint8_t>',
                                                     'type' => 'uint8_t'
                                                   }
                                                 ],
                                     'align' => undef,
                                     'parent' => 'BrigInst'
                                   },
             'BrigOperandFunctionRef' => {
                                           'parent' => 'BrigOperandRef',
                                           'fields' => [
                                                         {
                                                           'name' => 'size',
                                                           'acc' => 'valRef',
                                                           'wname' => 'size',
                                                           'wtype' => 'ValRef<uint16_t>',
                                                           'type' => 'uint16_t'
                                                         },
                                                         {
                                                           'type' => 'BrigOperandKinds16_t',
                                                           'wtype' => 'EnumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                           'name' => 'kind',
                                                           'acc' => 'enumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                           'enum' => 'BrigOperandKinds',
                                                           'wname' => 'kind'
                                                         },
                                                         {
                                                           'defValue' => '0',
                                                           'wtype' => 'ItemRef<DirectiveFunction>',
                                                           'type' => 'BrigDirectiveOffset32_t',
                                                           'name' => 'ref',
                                                           'comments' => [
                                                                           '// overridden, was ItemRef<Directive> ref'
                                                                         ],
                                                           'acc' => 'itemRef<DirectiveFunction>',
                                                           'wname' => 'fn'
                                                         }
                                                       ],
                                           'align' => undef,
                                           'name' => 'BrigOperandFunctionRef',
                                           'enum' => 'BRIG_OPERAND_FUNCTION_REF',
                                           'wname' => 'OperandFunctionRef'
                                         },
             'BrigOperandLabelVariableRef' => {
                                                'name' => 'BrigOperandLabelVariableRef',
                                                'enum' => 'BRIG_OPERAND_LABEL_VARIABLE_REF',
                                                'wname' => 'OperandLabelVariableRef',
                                                'parent' => 'BrigOperandRef',
                                                'align' => undef,
                                                'fields' => [
                                                              {
                                                                'wname' => 'size',
                                                                'acc' => 'valRef',
                                                                'name' => 'size',
                                                                'type' => 'uint16_t',
                                                                'wtype' => 'ValRef<uint16_t>'
                                                              },
                                                              {
                                                                'name' => 'kind',
                                                                'acc' => 'enumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                                'enum' => 'BrigOperandKinds',
                                                                'wname' => 'kind',
                                                                'type' => 'BrigOperandKinds16_t',
                                                                'wtype' => 'EnumValRef<Brig::BrigOperandKinds,uint16_t>'
                                                              },
                                                              {
                                                                'defValue' => '0',
                                                                'wtype' => 'ItemRef<DirectiveVariable>',
                                                                'type' => 'BrigDirectiveOffset32_t',
                                                                'name' => 'symbol',
                                                                'acc' => 'itemRef<DirectiveVariable>',
                                                                'wname' => 'symbol'
                                                              }
                                                            ]
                                              },
             'BrigOperandList' => {
                                    'generic' => 'true',
                                    'wname' => 'OperandList',
                                    'name' => 'BrigOperandList',
                                    'children' => [
                                                    'BrigOperandFunctionList',
                                                    'BrigOperandArgumentList'
                                                  ],
                                    'enum' => 'BRIG_OPERAND_LIST',
                                    'parent' => 'BrigOperand',
                                    'fields' => [
                                                  {
                                                    'wname' => 'size',
                                                    'name' => 'size',
                                                    'acc' => 'valRef',
                                                    'wtype' => 'ValRef<uint16_t>',
                                                    'type' => 'uint16_t'
                                                  },
                                                  {
                                                    'name' => 'kind',
                                                    'enum' => 'BrigOperandKinds',
                                                    'acc' => 'enumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                    'wname' => 'kind',
                                                    'type' => 'BrigOperandKinds16_t',
                                                    'wtype' => 'EnumValRef<Brig::BrigOperandKinds,uint16_t>'
                                                  },
                                                  {
                                                    'wtype' => 'ValRef<uint16_t>',
                                                    'type' => 'uint16_t',
                                                    'skip' => 1,
                                                    'defValue' => '0',
                                                    'wname' => 'reserved',
                                                    'name' => 'reserved',
                                                    'acc' => 'valRef'
                                                  },
                                                  {
                                                    'defValue' => '0',
                                                    'type' => 'uint16_t',
                                                    'wtype' => 'ValRef<uint16_t>',
                                                    'name' => 'elementCount',
                                                    'acc' => 'valRef',
                                                    'wname' => 'elementCount'
                                                  },
                                                  {
                                                    'name' => 'elements',
                                                    'wtype' => 'ItemRef<Directive>',
                                                    'wspecial' => 'RefList',
                                                    'type' => 'BrigDirectiveOffset32_t',
                                                    'defValue' => '0',
                                                    'size' => '1',
                                                    'wname' => 'elements',
                                                    'acc' => 'itemRef<Directive>'
                                                  }
                                                ],
                                    'align' => undef
                                  },
             'BrigInstQuerySampler' => {
                                         'enum' => 'BRIG_INST_QUERY_SAMPLER',
                                         'name' => 'BrigInstQuerySampler',
                                         'wname' => 'InstQuerySampler',
                                         'parent' => 'BrigInst',
                                         'align' => undef,
                                         'fields' => [
                                                       {
                                                         'name' => 'size',
                                                         'acc' => 'valRef',
                                                         'wname' => 'size',
                                                         'type' => 'uint16_t',
                                                         'wtype' => 'ValRef<uint16_t>'
                                                       },
                                                       {
                                                         'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>',
                                                         'type' => 'BrigInstKinds16_t',
                                                         'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                         'enum' => 'BrigInstKinds',
                                                         'name' => 'kind',
                                                         'wname' => 'kind'
                                                       },
                                                       {
                                                         'wname' => 'opcode',
                                                         'name' => 'opcode',
                                                         'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                                         'enum' => 'BrigOpcode',
                                                         'type' => 'BrigOpcode16_t',
                                                         'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>'
                                                       },
                                                       {
                                                         'wtype' => 'ValRef<uint16_t>',
                                                         'type' => 'BrigType16_t',
                                                         'name' => 'type',
                                                         'acc' => 'valRef',
                                                         'wname' => 'type'
                                                       },
                                                       {
                                                         'name' => 'operands',
                                                         'acc' => 'itemRef<Operand>',
                                                         'comments' => [
                                                                         '// overridden, was ItemRef<Operand> operand'
                                                                       ],
                                                         'size' => '5',
                                                         'wname' => 'operands',
                                                         'defValue' => '0',
                                                         'wtype' => 'ItemRef<Operand>',
                                                         'type' => 'BrigOperandOffset32_t'
                                                       },
                                                       {
                                                         'enum' => 'BrigSamplerQuery',
                                                         'acc' => 'enumValRef<Brig::BrigSamplerQuery,uint8_t>',
                                                         'name' => 'samplerQuery',
                                                         'wname' => 'samplerQuery',
                                                         'type' => 'BrigSamplerQuery8_t',
                                                         'wtype' => 'EnumValRef<Brig::BrigSamplerQuery,uint8_t>'
                                                       },
                                                       {
                                                         'defValue' => '0',
                                                         'type' => 'uint8_t',
                                                         'wtype' => 'ValRef<uint8_t>',
                                                         'skip' => 1,
                                                         'acc' => 'valRef',
                                                         'size' => 3,
                                                         'wname' => 'reserved',
                                                         'name' => 'reserved'
                                                       }
                                                     ]
                                       },
             'BrigDirectiveLabelInit' => {
                                           'align' => undef,
                                           'fields' => [
                                                         {
                                                           'acc' => 'valRef',
                                                           'name' => 'size',
                                                           'wname' => 'size',
                                                           'wtype' => 'ValRef<uint16_t>',
                                                           'type' => 'uint16_t'
                                                         },
                                                         {
                                                           'wname' => 'kind',
                                                           'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                           'enum' => 'BrigDirectiveKinds',
                                                           'name' => 'kind',
                                                           'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                           'type' => 'BrigDirectiveKinds16_t'
                                                         },
                                                         {
                                                           'wname' => 'code',
                                                           'name' => 'code',
                                                           'acc' => 'itemRef<Inst>',
                                                           'wtype' => 'ItemRef<Inst>',
                                                           'type' => 'BrigCodeOffset32_t',
                                                           'defValue' => '0'
                                                         },
                                                         {
                                                           'acc' => 'valRef',
                                                           'name' => 'labelCount',
                                                           'wname' => 'elementCount',
                                                           'defValue' => '0',
                                                           'type' => 'uint16_t',
                                                           'wtype' => 'ValRef<uint16_t>'
                                                         },
                                                         {
                                                           'skip' => 1,
                                                           'type' => 'uint16_t',
                                                           'wtype' => 'ValRef<uint16_t>',
                                                           'defValue' => '0',
                                                           'wname' => 'reserved',
                                                           'acc' => 'valRef',
                                                           'name' => 'reserved'
                                                         },
                                                         {
                                                           'defValue' => '0',
                                                           'type' => 'BrigDirectiveOffset32_t',
                                                           'wspecial' => 'LabelInitList',
                                                           'wtype' => 'ItemRef<DirectiveLabel>',
                                                           'acc' => 'itemRef<DirectiveLabel>',
                                                           'size' => '1',
                                                           'wname' => 'labels',
                                                           'name' => 'labels'
                                                         }
                                                       ],
                                           'parent' => 'BrigDirectiveCode',
                                           'wname' => 'DirectiveLabelInit',
                                           'name' => 'BrigDirectiveLabelInit',
                                           'enum' => 'BRIG_DIRECTIVE_LABEL_INIT'
                                         },
             'BrigInstSourceType' => {
                                       'parent' => 'BrigInst',
                                       'fields' => [
                                                     {
                                                       'type' => 'uint16_t',
                                                       'wtype' => 'ValRef<uint16_t>',
                                                       'name' => 'size',
                                                       'acc' => 'valRef',
                                                       'wname' => 'size'
                                                     },
                                                     {
                                                       'wname' => 'kind',
                                                       'name' => 'kind',
                                                       'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                       'enum' => 'BrigInstKinds',
                                                       'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>',
                                                       'type' => 'BrigInstKinds16_t'
                                                     },
                                                     {
                                                       'wname' => 'opcode',
                                                       'name' => 'opcode',
                                                       'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                                       'enum' => 'BrigOpcode',
                                                       'type' => 'BrigOpcode16_t',
                                                       'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>'
                                                     },
                                                     {
                                                       'name' => 'type',
                                                       'acc' => 'valRef',
                                                       'wname' => 'type',
                                                       'type' => 'BrigType16_t',
                                                       'wtype' => 'ValRef<uint16_t>'
                                                     },
                                                     {
                                                       'name' => 'operands',
                                                       'type' => 'BrigOperandOffset32_t',
                                                       'wtype' => 'ItemRef<Operand>',
                                                       'defValue' => '0',
                                                       'wname' => 'operands',
                                                       'size' => '5',
                                                       'comments' => [
                                                                       '// overridden, was ItemRef<Operand> operand'
                                                                     ],
                                                       'acc' => 'itemRef<Operand>'
                                                     },
                                                     {
                                                       'name' => 'sourceType',
                                                       'acc' => 'valRef',
                                                       'wname' => 'sourceType',
                                                       'type' => 'BrigType16_t',
                                                       'wtype' => 'ValRef<uint16_t>'
                                                     },
                                                     {
                                                       'wname' => 'reserved',
                                                       'name' => 'reserved',
                                                       'acc' => 'valRef',
                                                       'type' => 'uint16_t',
                                                       'wtype' => 'ValRef<uint16_t>',
                                                       'skip' => 1,
                                                       'defValue' => '0'
                                                     }
                                                   ],
                                       'align' => undef,
                                       'name' => 'BrigInstSourceType',
                                       'enum' => 'BRIG_INST_SOURCE_TYPE',
                                       'wname' => 'InstSourceType'
                                     },
             'BrigDirectiveControl' => {
                                         'parent' => 'BrigDirectiveCode',
                                         'fields' => [
                                                       {
                                                         'type' => 'uint16_t',
                                                         'wtype' => 'ValRef<uint16_t>',
                                                         'name' => 'size',
                                                         'acc' => 'valRef',
                                                         'wname' => 'size'
                                                       },
                                                       {
                                                         'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                         'type' => 'BrigDirectiveKinds16_t',
                                                         'name' => 'kind',
                                                         'enum' => 'BrigDirectiveKinds',
                                                         'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                         'wname' => 'kind'
                                                       },
                                                       {
                                                         'wtype' => 'ItemRef<Inst>',
                                                         'type' => 'BrigCodeOffset32_t',
                                                         'defValue' => '0',
                                                         'wname' => 'code',
                                                         'acc' => 'itemRef<Inst>',
                                                         'name' => 'code'
                                                       },
                                                       {
                                                         'wname' => 'control',
                                                         'acc' => 'enumValRef<Brig::BrigControlDirective,uint16_t>',
                                                         'enum' => 'BrigControlDirective',
                                                         'name' => 'control',
                                                         'type' => 'BrigControlDirective16_t',
                                                         'wtype' => 'EnumValRef<Brig::BrigControlDirective,uint16_t>'
                                                       },
                                                       {
                                                         'type' => 'BrigType16_t',
                                                         'wtype' => 'ValRef<uint16_t>',
                                                         'name' => 'type',
                                                         'acc' => 'valRef',
                                                         'wname' => 'type'
                                                       },
                                                       {
                                                         'wname' => 'reserved',
                                                         'acc' => 'valRef',
                                                         'name' => 'reserved',
                                                         'skip' => 1,
                                                         'type' => 'uint16_t',
                                                         'wtype' => 'ValRef<uint16_t>',
                                                         'defValue' => '0'
                                                       },
                                                       {
                                                         'acc' => 'valRef',
                                                         'name' => 'valueCount',
                                                         'wname' => 'elementCount',
                                                         'defValue' => '0',
                                                         'wtype' => 'ValRef<uint16_t>',
                                                         'type' => 'uint16_t'
                                                       },
                                                       {
                                                         'name' => 'values',
                                                         'defValue' => '0',
                                                         'wspecial' => 'ControlValues',
                                                         'type' => 'BrigOperandOffset32_t',
                                                         'wtype' => 'ItemRef<Operand>',
                                                         'acc' => 'itemRef<Operand>',
                                                         'size' => '1',
                                                         'wname' => 'values'
                                                       }
                                                     ],
                                         'align' => undef,
                                         'name' => 'BrigDirectiveControl',
                                         'comments' => [
                                                         '/// control directive.'
                                                       ],
                                         'enum' => 'BRIG_DIRECTIVE_CONTROL',
                                         'wname' => 'DirectiveControl'
                                       },
             'BrigInstAddr' => {
                                 'wname' => 'InstAddr',
                                 'enum' => 'BRIG_INST_ADDR',
                                 'name' => 'BrigInstAddr',
                                 'align' => undef,
                                 'fields' => [
                                               {
                                                 'name' => 'size',
                                                 'acc' => 'valRef',
                                                 'wname' => 'size',
                                                 'type' => 'uint16_t',
                                                 'wtype' => 'ValRef<uint16_t>'
                                               },
                                               {
                                                 'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>',
                                                 'type' => 'BrigInstKinds16_t',
                                                 'wname' => 'kind',
                                                 'enum' => 'BrigInstKinds',
                                                 'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                 'name' => 'kind'
                                               },
                                               {
                                                 'wname' => 'opcode',
                                                 'name' => 'opcode',
                                                 'enum' => 'BrigOpcode',
                                                 'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                                 'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>',
                                                 'type' => 'BrigOpcode16_t'
                                               },
                                               {
                                                 'wname' => 'type',
                                                 'name' => 'type',
                                                 'acc' => 'valRef',
                                                 'wtype' => 'ValRef<uint16_t>',
                                                 'type' => 'BrigType16_t'
                                               },
                                               {
                                                 'acc' => 'itemRef<Operand>',
                                                 'name' => 'operands',
                                                 'wname' => 'operand',
                                                 'size' => '5',
                                                 'defValue' => '0',
                                                 'type' => 'BrigOperandOffset32_t',
                                                 'wtype' => 'ItemRef<Operand>'
                                               },
                                               {
                                                 'defValue' => '0',
                                                 'wtype' => 'EnumValRef<Brig::BrigSegment,uint8_t>',
                                                 'type' => 'BrigSegment8_t',
                                                 'name' => 'segment',
                                                 'enum' => 'BrigSegment',
                                                 'acc' => 'enumValRef<Brig::BrigSegment,uint8_t>',
                                                 'wname' => 'segment'
                                               },
                                               {
                                                 'name' => 'reserved',
                                                 'type' => 'uint8_t',
                                                 'wtype' => 'ValRef<uint8_t>',
                                                 'skip' => 1,
                                                 'defValue' => '0',
                                                 'size' => 3,
                                                 'wname' => 'reserved',
                                                 'acc' => 'valRef'
                                               }
                                             ],
                                 'parent' => 'BrigInst'
                               },
             'BrigBlockNumeric' => {
                                     'wname' => 'BlockNumeric',
                                     'name' => 'BrigBlockNumeric',
                                     'comments' => [
                                                     '/// numeric data inside block.'
                                                   ],
                                     'enum' => 'BRIG_DIRECTIVE_BLOCK_NUMERIC',
                                     'fields' => [
                                                   {
                                                     'type' => 'uint16_t',
                                                     'wtype' => 'ValRef<uint16_t>',
                                                     'acc' => 'valRef',
                                                     'name' => 'size',
                                                     'wname' => 'size'
                                                   },
                                                   {
                                                     'wname' => 'kind',
                                                     'enum' => 'BrigDirectiveKinds',
                                                     'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                     'name' => 'kind',
                                                     'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                     'type' => 'BrigDirectiveKinds16_t'
                                                   },
                                                   {
                                                     'wname' => 'type',
                                                     'acc' => 'valRef',
                                                     'name' => 'type',
                                                     'wtype' => 'ValRef<uint16_t>',
                                                     'type' => 'BrigType16_t'
                                                   },
                                                   {
                                                     'wname' => 'reserved',
                                                     'acc' => 'valRef',
                                                     'name' => 'reserved',
                                                     'skip' => 1,
                                                     'wtype' => 'ValRef<uint16_t>',
                                                     'type' => 'uint16_t',
                                                     'defValue' => '0'
                                                   },
                                                   {
                                                     'wname' => 'elementCount',
                                                     'acc' => 'valRef',
                                                     'name' => 'elementCount',
                                                     'wtype' => 'ValRef<uint32_t>',
                                                     'type' => 'uint32_t',
                                                     'defValue' => '0'
                                                   },
                                                   {
                                                     'name' => 'data',
                                                     'novisit' => 'true',
                                                     'acc' => 'dataItemRef',
                                                     'wname' => 'data',
                                                     'wtype' => 'DataItemRef',
                                                     'type' => 'BrigDataOffset32_t'
                                                   },
                                                   {
                                                     'novisit' => 'true',
                                                     'acc' => 'valRef',
                                                     'wname' => 'dataAs',
                                                     'phantomof' => $structs->{'BrigBlockNumeric'}{'fields'}[5],
                                                     'type' => 'BrigDataOffset32_t',
                                                     'wtype' => 'ValRef<uint32_t>',
                                                     'wspecial' => 'DataItemRefT',
                                                     'name' => 'dataAs',
                                                     'wspecialgeneric' => 'true'
                                                   }
                                                 ],
                                     'align' => undef,
                                     'parent' => 'BrigDirective'
                                   },
             'BrigOperandVector' => {
                                      'parent' => 'BrigOperand',
                                      'fields' => [
                                                    {
                                                      'wtype' => 'ValRef<uint16_t>',
                                                      'type' => 'uint16_t',
                                                      'wname' => 'size',
                                                      'name' => 'size',
                                                      'acc' => 'valRef'
                                                    },
                                                    {
                                                      'type' => 'BrigOperandKinds16_t',
                                                      'wtype' => 'EnumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                      'name' => 'kind',
                                                      'acc' => 'enumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                      'enum' => 'BrigOperandKinds',
                                                      'wname' => 'kind'
                                                    },
                                                    {
                                                      'acc' => 'valRef',
                                                      'name' => 'reserved',
                                                      'wname' => 'reserved',
                                                      'defValue' => '0',
                                                      'skip' => 1,
                                                      'type' => 'uint16_t',
                                                      'wtype' => 'ValRef<uint16_t>'
                                                    },
                                                    {
                                                      'wname' => 'operandCount',
                                                      'acc' => 'valRef',
                                                      'name' => 'operandCount',
                                                      'type' => 'uint16_t',
                                                      'wtype' => 'ValRef<uint16_t>',
                                                      'defValue' => '0'
                                                    },
                                                    {
                                                      'wtype' => 'ValRef<uint16_t>',
                                                      'type' => 'uint16_t',
                                                      'phantomof' => $structs->{'BrigOperandVector'}{'fields'}[3],
                                                      'wname' => 'elementCount',
                                                      'acc' => 'valRef',
                                                      'name' => 'elementCount'
                                                    },
                                                    {
                                                      'name' => 'operands',
                                                      'defValue' => '0',
                                                      'wspecial' => 'VectorOperandList',
                                                      'type' => 'BrigOperandOffset32_t',
                                                      'wtype' => 'ItemRef<Operand>',
                                                      'acc' => 'itemRef<Operand>',
                                                      'wname' => 'operand',
                                                      'size' => '1'
                                                    }
                                                  ],
                                      'align' => undef,
                                      'name' => 'BrigOperandVector',
                                      'enum' => 'BRIG_OPERAND_VECTOR',
                                      'wname' => 'OperandVector'
                                    },
             'BrigDirectiveImageInit' => {
                                           'fields' => [
                                                         {
                                                           'wname' => 'size',
                                                           'name' => 'size',
                                                           'acc' => 'valRef',
                                                           'type' => 'uint16_t',
                                                           'wtype' => 'ValRef<uint16_t>'
                                                         },
                                                         {
                                                           'type' => 'BrigDirectiveKinds16_t',
                                                           'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                           'name' => 'kind',
                                                           'enum' => 'BrigDirectiveKinds',
                                                           'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                           'wname' => 'kind'
                                                         },
                                                         {
                                                           'name' => 'code',
                                                           'acc' => 'itemRef<Inst>',
                                                           'wname' => 'code',
                                                           'defValue' => '0',
                                                           'type' => 'BrigCodeOffset32_t',
                                                           'wtype' => 'ItemRef<Inst>'
                                                         },
                                                         {
                                                           'defValue' => '0',
                                                           'wtype' => 'ValRef<uint16_t>',
                                                           'type' => 'uint16_t',
                                                           'name' => 'imageCount',
                                                           'acc' => 'valRef',
                                                           'wname' => 'imageCount'
                                                         },
                                                         {
                                                           'name' => 'elementCount',
                                                           'acc' => 'valRef',
                                                           'wname' => 'elementCount',
                                                           'phantomof' => $structs->{'BrigDirectiveImageInit'}{'fields'}[3],
                                                           'type' => 'uint16_t',
                                                           'wtype' => 'ValRef<uint16_t>'
                                                         },
                                                         {
                                                           'name' => 'reserved',
                                                           'acc' => 'valRef',
                                                           'wname' => 'reserved',
                                                           'defValue' => '0',
                                                           'type' => 'uint16_t',
                                                           'wtype' => 'ValRef<uint16_t>',
                                                           'skip' => 1
                                                         },
                                                         {
                                                           'name' => 'images',
                                                           'acc' => 'itemRef<DirectiveImageProperties>',
                                                           'wname' => 'images',
                                                           'size' => '1',
                                                           'defValue' => '0',
                                                           'wspecial' => 'ImageInitList',
                                                           'type' => 'BrigDirectiveOffset32_t',
                                                           'wtype' => 'ItemRef<DirectiveImageProperties>'
                                                         }
                                                       ],
                                           'align' => undef,
                                           'parent' => 'BrigDirectiveOpaqueInit',
                                           'wname' => 'DirectiveImageInit',
                                           'enum' => 'BRIG_DIRECTIVE_IMAGE_INIT',
                                           'name' => 'BrigDirectiveImageInit'
                                         },
             'BrigOperandLabelRef' => {
                                        'wname' => 'OperandLabelRef',
                                        'name' => 'BrigOperandLabelRef',
                                        'enum' => 'BRIG_OPERAND_LABEL_REF',
                                        'fields' => [
                                                      {
                                                        'wtype' => 'ValRef<uint16_t>',
                                                        'type' => 'uint16_t',
                                                        'wname' => 'size',
                                                        'name' => 'size',
                                                        'acc' => 'valRef'
                                                      },
                                                      {
                                                        'wtype' => 'EnumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                        'type' => 'BrigOperandKinds16_t',
                                                        'enum' => 'BrigOperandKinds',
                                                        'acc' => 'enumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                        'name' => 'kind',
                                                        'wname' => 'kind'
                                                      },
                                                      {
                                                        'type' => 'BrigDirectiveOffset32_t',
                                                        'wtype' => 'ItemRef<DirectiveLabel>',
                                                        'defValue' => '0',
                                                        'wname' => 'label',
                                                        'acc' => 'itemRef<DirectiveLabel>',
                                                        'name' => 'label'
                                                      }
                                                    ],
                                        'align' => undef,
                                        'parent' => 'BrigOperandRef'
                                      },
             'BrigDirectiveCallableBase' => {
                                              'parent' => 'BrigDirectiveCode',
                                              'align' => undef,
                                              'fields' => [
                                                            {
                                                              'type' => 'uint16_t',
                                                              'wtype' => 'ValRef<uint16_t>',
                                                              'wname' => 'size',
                                                              'name' => 'size',
                                                              'acc' => 'valRef'
                                                            },
                                                            {
                                                              'enum' => 'BrigDirectiveKinds',
                                                              'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                              'name' => 'kind',
                                                              'wname' => 'kind',
                                                              'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                              'type' => 'BrigDirectiveKinds16_t'
                                                            },
                                                            {
                                                              'acc' => 'itemRef<Inst>',
                                                              'name' => 'code',
                                                              'wname' => 'code',
                                                              'defValue' => '0',
                                                              'wtype' => 'ItemRef<Inst>',
                                                              'type' => 'BrigCodeOffset32_t'
                                                            },
                                                            {
                                                              'acc' => 'strRef',
                                                              'name' => 'name',
                                                              'wname' => 'name',
                                                              'defValue' => '0',
                                                              'wtype' => 'StrRef',
                                                              'type' => 'BrigStringOffset32_t'
                                                            },
                                                            {
                                                              'type' => 'uint16_t',
                                                              'wtype' => 'ValRef<uint16_t>',
                                                              'wname' => 'inArgCount',
                                                              'acc' => 'valRef',
                                                              'name' => 'inArgCount'
                                                            },
                                                            {
                                                              'name' => 'outArgCount',
                                                              'acc' => 'valRef',
                                                              'wname' => 'outArgCount',
                                                              'type' => 'uint16_t',
                                                              'wtype' => 'ValRef<uint16_t>'
                                                            }
                                                          ],
                                              'enum' => 'BRIG_DIRECTIVE_CALLABLE_BASE',
                                              'name' => 'BrigDirectiveCallableBase',
                                              'children' => [
                                                              'BrigDirectiveExecutable',
                                                              'BrigDirectiveKernel',
                                                              'BrigDirectiveFunction',
                                                              'BrigDirectiveSignature'
                                                            ],
                                              'generic' => 'true',
                                              'wname' => 'DirectiveCallableBase'
                                            },
             'BrigInstMod' => {
                                'wname' => 'InstMod',
                                'enum' => 'BRIG_INST_MOD',
                                'name' => 'BrigInstMod',
                                'align' => undef,
                                'fields' => [
                                              {
                                                'wtype' => 'ValRef<uint16_t>',
                                                'type' => 'uint16_t',
                                                'acc' => 'valRef',
                                                'name' => 'size',
                                                'wname' => 'size'
                                              },
                                              {
                                                'wname' => 'kind',
                                                'enum' => 'BrigInstKinds',
                                                'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                'name' => 'kind',
                                                'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>',
                                                'type' => 'BrigInstKinds16_t'
                                              },
                                              {
                                                'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>',
                                                'type' => 'BrigOpcode16_t',
                                                'name' => 'opcode',
                                                'enum' => 'BrigOpcode',
                                                'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                                'wname' => 'opcode'
                                              },
                                              {
                                                'wname' => 'type',
                                                'acc' => 'valRef',
                                                'name' => 'type',
                                                'wtype' => 'ValRef<uint16_t>',
                                                'type' => 'BrigType16_t'
                                              },
                                              {
                                                'defValue' => '0',
                                                'wtype' => 'ItemRef<Operand>',
                                                'type' => 'BrigOperandOffset32_t',
                                                'name' => 'operands',
                                                'acc' => 'itemRef<Operand>',
                                                'size' => '5',
                                                'wname' => 'operand'
                                              },
                                              {
                                                'type' => 'BrigAluModifier',
                                                'wtype' => 'AluModifier',
                                                'wname' => 'modifier',
                                                'name' => 'modifier',
                                                'acc' => 'subItem<AluModifier>'
                                              },
                                              {
                                                'wname' => 'pack',
                                                'enum' => 'BrigPack',
                                                'acc' => 'enumValRef<Brig::BrigPack,uint8_t>',
                                                'name' => 'pack',
                                                'wtype' => 'EnumValRef<Brig::BrigPack,uint8_t>',
                                                'type' => 'BrigPack8_t',
                                                'defValue' => 'Brig::BRIG_PACK_NONE'
                                              },
                                              {
                                                'skip' => 1,
                                                'wtype' => 'ValRef<uint8_t>',
                                                'type' => 'uint8_t',
                                                'defValue' => '0',
                                                'wname' => 'reserved',
                                                'acc' => 'valRef',
                                                'name' => 'reserved'
                                              }
                                            ],
                                'parent' => 'BrigInst'
                              },
             'BrigOperandFbarrierRef' => {
                                           'align' => undef,
                                           'fields' => [
                                                         {
                                                           'type' => 'uint16_t',
                                                           'wtype' => 'ValRef<uint16_t>',
                                                           'wname' => 'size',
                                                           'acc' => 'valRef',
                                                           'name' => 'size'
                                                         },
                                                         {
                                                           'type' => 'BrigOperandKinds16_t',
                                                           'wtype' => 'EnumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                           'wname' => 'kind',
                                                           'enum' => 'BrigOperandKinds',
                                                           'acc' => 'enumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                           'name' => 'kind'
                                                         },
                                                         {
                                                           'acc' => 'itemRef<DirectiveFbarrier>',
                                                           'comments' => [
                                                                           '// overridden, was ItemRef<Directive> ref'
                                                                         ],
                                                           'name' => 'ref',
                                                           'wname' => 'fbar',
                                                           'defValue' => '0',
                                                           'wtype' => 'ItemRef<DirectiveFbarrier>',
                                                           'type' => 'BrigDirectiveOffset32_t'
                                                         }
                                                       ],
                                           'parent' => 'BrigOperandRef',
                                           'wname' => 'OperandFbarrierRef',
                                           'enum' => 'BRIG_OPERAND_FBARRIER_REF',
                                           'name' => 'BrigOperandFbarrierRef'
                                         },
             'BrigInstCmp' => {
                                'align' => undef,
                                'fields' => [
                                              {
                                                'wtype' => 'ValRef<uint16_t>',
                                                'type' => 'uint16_t',
                                                'wname' => 'size',
                                                'name' => 'size',
                                                'acc' => 'valRef'
                                              },
                                              {
                                                'name' => 'kind',
                                                'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                'enum' => 'BrigInstKinds',
                                                'wname' => 'kind',
                                                'type' => 'BrigInstKinds16_t',
                                                'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>'
                                              },
                                              {
                                                'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                                'enum' => 'BrigOpcode',
                                                'name' => 'opcode',
                                                'wname' => 'opcode',
                                                'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>',
                                                'type' => 'BrigOpcode16_t'
                                              },
                                              {
                                                'name' => 'type',
                                                'acc' => 'valRef',
                                                'wname' => 'type',
                                                'wtype' => 'ValRef<uint16_t>',
                                                'type' => 'BrigType16_t'
                                              },
                                              {
                                                'name' => 'operands',
                                                'acc' => 'itemRef<Operand>',
                                                'size' => '5',
                                                'wname' => 'operand',
                                                'defValue' => '0',
                                                'type' => 'BrigOperandOffset32_t',
                                                'wtype' => 'ItemRef<Operand>'
                                              },
                                              {
                                                'wname' => 'sourceType',
                                                'acc' => 'valRef',
                                                'name' => 'sourceType',
                                                'wtype' => 'ValRef<uint16_t>',
                                                'type' => 'BrigType16_t'
                                              },
                                              {
                                                'type' => 'BrigAluModifier',
                                                'wtype' => 'AluModifier',
                                                'name' => 'modifier',
                                                'acc' => 'subItem<AluModifier>',
                                                'wname' => 'modifier'
                                              },
                                              {
                                                'type' => 'BrigCompareOperation8_t',
                                                'wtype' => 'EnumValRef<Brig::BrigCompareOperation,uint8_t>',
                                                'acc' => 'enumValRef<Brig::BrigCompareOperation,uint8_t>',
                                                'enum' => 'BrigCompareOperation',
                                                'name' => 'compare',
                                                'wname' => 'compare'
                                              },
                                              {
                                                'acc' => 'enumValRef<Brig::BrigPack,uint8_t>',
                                                'enum' => 'BrigPack',
                                                'name' => 'pack',
                                                'wname' => 'pack',
                                                'defValue' => 'Brig::BRIG_PACK_NONE',
                                                'wtype' => 'EnumValRef<Brig::BrigPack,uint8_t>',
                                                'type' => 'BrigPack8_t'
                                              },
                                              {
                                                'defValue' => '0',
                                                'type' => 'uint16_t',
                                                'wtype' => 'ValRef<uint16_t>',
                                                'skip' => 1,
                                                'name' => 'reserved',
                                                'acc' => 'valRef',
                                                'wname' => 'reserved'
                                              }
                                            ],
                                'parent' => 'BrigInst',
                                'wname' => 'InstCmp',
                                'name' => 'BrigInstCmp',
                                'enum' => 'BRIG_INST_CMP'
                              },
             'BrigInstQueryImage' => {
                                       'name' => 'BrigInstQueryImage',
                                       'enum' => 'BRIG_INST_QUERY_IMAGE',
                                       'wname' => 'InstQueryImage',
                                       'parent' => 'BrigInst',
                                       'align' => undef,
                                       'fields' => [
                                                     {
                                                       'wtype' => 'ValRef<uint16_t>',
                                                       'type' => 'uint16_t',
                                                       'acc' => 'valRef',
                                                       'name' => 'size',
                                                       'wname' => 'size'
                                                     },
                                                     {
                                                       'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>',
                                                       'type' => 'BrigInstKinds16_t',
                                                       'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                       'enum' => 'BrigInstKinds',
                                                       'name' => 'kind',
                                                       'wname' => 'kind'
                                                     },
                                                     {
                                                       'enum' => 'BrigOpcode',
                                                       'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                                       'name' => 'opcode',
                                                       'wname' => 'opcode',
                                                       'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>',
                                                       'type' => 'BrigOpcode16_t'
                                                     },
                                                     {
                                                       'wtype' => 'ValRef<uint16_t>',
                                                       'type' => 'BrigType16_t',
                                                       'wname' => 'type',
                                                       'acc' => 'valRef',
                                                       'name' => 'type'
                                                     },
                                                     {
                                                       'size' => '5',
                                                       'wname' => 'operands',
                                                       'comments' => [
                                                                       '// overridden, was ItemRef<Operand> operand'
                                                                     ],
                                                       'acc' => 'itemRef<Operand>',
                                                       'wtype' => 'ItemRef<Operand>',
                                                       'type' => 'BrigOperandOffset32_t',
                                                       'defValue' => '0',
                                                       'name' => 'operands'
                                                     },
                                                     {
                                                       'wname' => 'imageType',
                                                       'name' => 'imageType',
                                                       'acc' => 'valRef',
                                                       'type' => 'BrigType16_t',
                                                       'wtype' => 'ValRef<uint16_t>'
                                                     },
                                                     {
                                                       'type' => 'BrigImageGeometry8_t',
                                                       'wtype' => 'EnumValRef<Brig::BrigImageGeometry,uint8_t>',
                                                       'defValue' => 'Brig::BRIG_GEOMETRY_UNKNOWN',
                                                       'wname' => 'geometry',
                                                       'enum' => 'BrigImageGeometry',
                                                       'acc' => 'enumValRef<Brig::BrigImageGeometry,uint8_t>',
                                                       'name' => 'geometry'
                                                     },
                                                     {
                                                       'type' => 'BrigImageQuery8_t',
                                                       'wtype' => 'EnumValRef<Brig::BrigImageQuery,uint8_t>',
                                                       'name' => 'imageQuery',
                                                       'acc' => 'enumValRef<Brig::BrigImageQuery,uint8_t>',
                                                       'enum' => 'BrigImageQuery',
                                                       'wname' => 'imageQuery'
                                                     }
                                                   ]
                                     },
             'BrigOperand' => {
                                'generic' => 'true',
                                'isroot' => 'true',
                                'wname' => 'Operand',
                                'fields' => [
                                              {
                                                'wname' => 'size',
                                                'acc' => 'valRef',
                                                'name' => 'size',
                                                'type' => 'uint16_t',
                                                'wtype' => 'ValRef<uint16_t>'
                                              },
                                              {
                                                'name' => 'kind',
                                                'enum' => 'BrigOperandKinds',
                                                'acc' => 'enumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                'wname' => 'kind',
                                                'type' => 'BrigOperandKinds16_t',
                                                'wtype' => 'EnumValRef<Brig::BrigOperandKinds,uint16_t>'
                                              }
                                            ],
                                'align' => undef,
                                'name' => 'BrigOperand',
                                'children' => [
                                                'BrigOperandLabelRef',
                                                'BrigOperandImmed',
                                                'BrigOperandLabelTargetsRef',
                                                'BrigOperandReg',
                                                'BrigOperandVector',
                                                'BrigOperandWavesize',
                                                'BrigOperandSignatureRef',
                                                'BrigOperandFunctionList',
                                                'BrigOperandFunctionRef',
                                                'BrigOperandList',
                                                'BrigOperandLabelVariableRef',
                                                'BrigOperandRef',
                                                'BrigOperandAddress',
                                                'BrigOperandFbarrierRef',
                                                'BrigOperandArgumentList'
                                              ],
                                'enum' => 'BRIG_OPERAND'
                              },
             'BrigDirectiveExtension' => {
                                           'wname' => 'DirectiveExtension',
                                           'comments' => [
                                                           '/// @}',
                                                           '/// extension directive.'
                                                         ],
                                           'enum' => 'BRIG_DIRECTIVE_EXTENSION',
                                           'name' => 'BrigDirectiveExtension',
                                           'fields' => [
                                                         {
                                                           'wname' => 'size',
                                                           'name' => 'size',
                                                           'acc' => 'valRef',
                                                           'type' => 'uint16_t',
                                                           'wtype' => 'ValRef<uint16_t>'
                                                         },
                                                         {
                                                           'type' => 'BrigDirectiveKinds16_t',
                                                           'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                           'wname' => 'kind',
                                                           'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                           'enum' => 'BrigDirectiveKinds',
                                                           'name' => 'kind'
                                                         },
                                                         {
                                                           'defValue' => '0',
                                                           'wtype' => 'ItemRef<Inst>',
                                                           'type' => 'BrigCodeOffset32_t',
                                                           'name' => 'code',
                                                           'acc' => 'itemRef<Inst>',
                                                           'wname' => 'code'
                                                         },
                                                         {
                                                           'wname' => 'name',
                                                           'name' => 'name',
                                                           'acc' => 'strRef',
                                                           'wtype' => 'StrRef',
                                                           'type' => 'BrigStringOffset32_t',
                                                           'defValue' => '0'
                                                         }
                                                       ],
                                           'align' => undef,
                                           'parent' => 'BrigDirectiveCode'
                                         },
             'BrigDirectivePragma' => {
                                        'name' => 'BrigDirectivePragma',
                                        'enum' => 'BRIG_DIRECTIVE_PRAGMA',
                                        'wname' => 'DirectivePragma',
                                        'parent' => 'BrigDirectiveCode',
                                        'align' => undef,
                                        'fields' => [
                                                      {
                                                        'wname' => 'size',
                                                        'name' => 'size',
                                                        'acc' => 'valRef',
                                                        'type' => 'uint16_t',
                                                        'wtype' => 'ValRef<uint16_t>'
                                                      },
                                                      {
                                                        'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                        'type' => 'BrigDirectiveKinds16_t',
                                                        'wname' => 'kind',
                                                        'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                        'enum' => 'BrigDirectiveKinds',
                                                        'name' => 'kind'
                                                      },
                                                      {
                                                        'wname' => 'code',
                                                        'name' => 'code',
                                                        'acc' => 'itemRef<Inst>',
                                                        'type' => 'BrigCodeOffset32_t',
                                                        'wtype' => 'ItemRef<Inst>',
                                                        'defValue' => '0'
                                                      },
                                                      {
                                                        'defValue' => '0',
                                                        'type' => 'BrigStringOffset32_t',
                                                        'wtype' => 'StrRef',
                                                        'acc' => 'strRef',
                                                        'name' => 'name',
                                                        'wname' => 'name'
                                                      }
                                                    ]
                                      },
             'BrigInstQueue' => {
                                  'wname' => 'InstQueue',
                                  'name' => 'BrigInstQueue',
                                  'enum' => 'BRIG_INST_QUEUE',
                                  'align' => undef,
                                  'fields' => [
                                                {
                                                  'name' => 'size',
                                                  'acc' => 'valRef',
                                                  'wname' => 'size',
                                                  'type' => 'uint16_t',
                                                  'wtype' => 'ValRef<uint16_t>'
                                                },
                                                {
                                                  'type' => 'BrigInstKinds16_t',
                                                  'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>',
                                                  'name' => 'kind',
                                                  'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                  'enum' => 'BrigInstKinds',
                                                  'wname' => 'kind'
                                                },
                                                {
                                                  'name' => 'opcode',
                                                  'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                                  'enum' => 'BrigOpcode',
                                                  'wname' => 'opcode',
                                                  'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>',
                                                  'type' => 'BrigOpcode16_t'
                                                },
                                                {
                                                  'type' => 'BrigType16_t',
                                                  'wtype' => 'ValRef<uint16_t>',
                                                  'acc' => 'valRef',
                                                  'name' => 'type',
                                                  'wname' => 'type'
                                                },
                                                {
                                                  'defValue' => '0',
                                                  'wtype' => 'ItemRef<Operand>',
                                                  'type' => 'BrigOperandOffset32_t',
                                                  'comments' => [
                                                                  '// overridden, was ItemRef<Operand> operand'
                                                                ],
                                                  'acc' => 'itemRef<Operand>',
                                                  'size' => '5',
                                                  'wname' => 'operands',
                                                  'name' => 'operands'
                                                },
                                                {
                                                  'defValue' => '0',
                                                  'type' => 'BrigSegment8_t',
                                                  'wtype' => 'EnumValRef<Brig::BrigSegment,uint8_t>',
                                                  'name' => 'segment',
                                                  'acc' => 'enumValRef<Brig::BrigSegment,uint8_t>',
                                                  'enum' => 'BrigSegment',
                                                  'wname' => 'segment'
                                                },
                                                {
                                                  'defValue' => 'Brig::BRIG_MEMORY_ORDER_RELAXED',
                                                  'wtype' => 'EnumValRef<Brig::BrigMemoryOrder,uint8_t>',
                                                  'type' => 'BrigMemoryOrder8_t',
                                                  'acc' => 'enumValRef<Brig::BrigMemoryOrder,uint8_t>',
                                                  'enum' => 'BrigMemoryOrder',
                                                  'name' => 'memoryOrder',
                                                  'wname' => 'memoryOrder'
                                                },
                                                {
                                                  'skip' => 1,
                                                  'type' => 'uint16_t',
                                                  'wtype' => 'ValRef<uint16_t>',
                                                  'defValue' => '0',
                                                  'wname' => 'reserved',
                                                  'acc' => 'valRef',
                                                  'name' => 'reserved'
                                                }
                                              ],
                                  'parent' => 'BrigInst'
                                },
             'BrigOperandFunctionList' => {
                                            'name' => 'BrigOperandFunctionList',
                                            'comments' => [
                                                            '/// list of arguments. (in, out function arguments).'
                                                          ],
                                            'enum' => 'BRIG_OPERAND_FUNCTION_LIST',
                                            'wname' => 'OperandFunctionList',
                                            'parent' => 'BrigOperandList',
                                            'fields' => [
                                                          {
                                                            'acc' => 'valRef',
                                                            'name' => 'size',
                                                            'wname' => 'size',
                                                            'wtype' => 'ValRef<uint16_t>',
                                                            'type' => 'uint16_t'
                                                          },
                                                          {
                                                            'type' => 'BrigOperandKinds16_t',
                                                            'wtype' => 'EnumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                            'wname' => 'kind',
                                                            'name' => 'kind',
                                                            'acc' => 'enumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                            'enum' => 'BrigOperandKinds'
                                                          },
                                                          {
                                                            'type' => 'uint16_t',
                                                            'wtype' => 'ValRef<uint16_t>',
                                                            'skip' => 1,
                                                            'defValue' => '0',
                                                            'wname' => 'reserved',
                                                            'name' => 'reserved',
                                                            'acc' => 'valRef'
                                                          },
                                                          {
                                                            'wname' => 'elementCount',
                                                            'name' => 'elementCount',
                                                            'acc' => 'valRef',
                                                            'type' => 'uint16_t',
                                                            'wtype' => 'ValRef<uint16_t>',
                                                            'defValue' => '0'
                                                          },
                                                          {
                                                            'wspecial' => 'FunctionRefList',
                                                            'wtype' => 'ItemRef<Directive>',
                                                            'type' => 'BrigDirectiveOffset32_t',
                                                            'defValue' => '0',
                                                            'size' => '1',
                                                            'wname' => 'elements',
                                                            'acc' => 'itemRef<Directive>',
                                                            'name' => 'elements'
                                                          }
                                                        ],
                                            'align' => undef
                                          },
             'BrigBlockEnd' => {
                                 'wname' => 'BlockEnd',
                                 'name' => 'BrigBlockEnd',
                                 'comments' => [
                                                 '/// end of block.'
                                               ],
                                 'enum' => 'BRIG_DIRECTIVE_BLOCK_END',
                                 'align' => undef,
                                 'fields' => [
                                               {
                                                 'type' => 'uint16_t',
                                                 'wtype' => 'ValRef<uint16_t>',
                                                 'wname' => 'size',
                                                 'acc' => 'valRef',
                                                 'name' => 'size'
                                               },
                                               {
                                                 'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                 'type' => 'BrigDirectiveKinds16_t',
                                                 'wname' => 'kind',
                                                 'name' => 'kind',
                                                 'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                 'enum' => 'BrigDirectiveKinds'
                                               }
                                             ],
                                 'parent' => 'BrigDirective'
                               },
             'BrigInstImage' => {
                                  'name' => 'BrigInstImage',
                                  'enum' => 'BRIG_INST_IMAGE',
                                  'wname' => 'InstImage',
                                  'parent' => 'BrigInst',
                                  'fields' => [
                                                {
                                                  'acc' => 'valRef',
                                                  'name' => 'size',
                                                  'wname' => 'size',
                                                  'type' => 'uint16_t',
                                                  'wtype' => 'ValRef<uint16_t>'
                                                },
                                                {
                                                  'wname' => 'kind',
                                                  'name' => 'kind',
                                                  'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                  'enum' => 'BrigInstKinds',
                                                  'type' => 'BrigInstKinds16_t',
                                                  'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>'
                                                },
                                                {
                                                  'wname' => 'opcode',
                                                  'name' => 'opcode',
                                                  'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                                  'enum' => 'BrigOpcode',
                                                  'type' => 'BrigOpcode16_t',
                                                  'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>'
                                                },
                                                {
                                                  'wtype' => 'ValRef<uint16_t>',
                                                  'type' => 'BrigType16_t',
                                                  'name' => 'type',
                                                  'acc' => 'valRef',
                                                  'wname' => 'type'
                                                },
                                                {
                                                  'wname' => 'operand',
                                                  'size' => '5',
                                                  'acc' => 'itemRef<Operand>',
                                                  'name' => 'operands',
                                                  'type' => 'BrigOperandOffset32_t',
                                                  'wtype' => 'ItemRef<Operand>',
                                                  'defValue' => '0'
                                                },
                                                {
                                                  'type' => 'BrigType16_t',
                                                  'wtype' => 'ValRef<uint16_t>',
                                                  'wname' => 'imageType',
                                                  'acc' => 'valRef',
                                                  'name' => 'imageType'
                                                },
                                                {
                                                  'name' => 'coordType',
                                                  'acc' => 'valRef',
                                                  'wname' => 'coordType',
                                                  'type' => 'BrigType16_t',
                                                  'wtype' => 'ValRef<uint16_t>'
                                                },
                                                {
                                                  'acc' => 'enumValRef<Brig::BrigImageGeometry,uint8_t>',
                                                  'enum' => 'BrigImageGeometry',
                                                  'name' => 'geometry',
                                                  'wname' => 'geometry',
                                                  'defValue' => 'Brig::BRIG_GEOMETRY_UNKNOWN',
                                                  'wtype' => 'EnumValRef<Brig::BrigImageGeometry,uint8_t>',
                                                  'type' => 'BrigImageGeometry8_t'
                                                },
                                                {
                                                  'wtype' => 'ValRef<uint8_t>',
                                                  'type' => 'uint8_t',
                                                  'name' => 'equivClass',
                                                  'acc' => 'valRef',
                                                  'wname' => 'equivClass'
                                                },
                                                {
                                                  'defValue' => '0',
                                                  'skip' => 1,
                                                  'wtype' => 'ValRef<uint16_t>',
                                                  'type' => 'uint16_t',
                                                  'acc' => 'valRef',
                                                  'name' => 'reserved',
                                                  'wname' => 'reserved'
                                                }
                                              ],
                                  'align' => undef
                                },
             'BrigDirectiveArgScopeEnd' => {
                                             'fields' => [
                                                           {
                                                             'wtype' => 'ValRef<uint16_t>',
                                                             'type' => 'uint16_t',
                                                             'name' => 'size',
                                                             'acc' => 'valRef',
                                                             'wname' => 'size'
                                                           },
                                                           {
                                                             'wname' => 'kind',
                                                             'name' => 'kind',
                                                             'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                             'enum' => 'BrigDirectiveKinds',
                                                             'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                             'type' => 'BrigDirectiveKinds16_t'
                                                           },
                                                           {
                                                             'acc' => 'itemRef<Inst>',
                                                             'name' => 'code',
                                                             'wname' => 'code',
                                                             'defValue' => '0',
                                                             'type' => 'BrigCodeOffset32_t',
                                                             'wtype' => 'ItemRef<Inst>'
                                                           }
                                                         ],
                                             'align' => undef,
                                             'parent' => 'BrigDirectiveCode',
                                             'wname' => 'DirectiveArgScopeEnd',
                                             'enum' => 'BRIG_DIRECTIVE_ARG_SCOPE_END',
                                             'name' => 'BrigDirectiveArgScopeEnd'
                                           },
             'BrigOperandLabelTargetsRef' => {
                                               'fields' => [
                                                             {
                                                               'wtype' => 'ValRef<uint16_t>',
                                                               'type' => 'uint16_t',
                                                               'wname' => 'size',
                                                               'acc' => 'valRef',
                                                               'name' => 'size'
                                                             },
                                                             {
                                                               'acc' => 'enumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                               'enum' => 'BrigOperandKinds',
                                                               'name' => 'kind',
                                                               'wname' => 'kind',
                                                               'wtype' => 'EnumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                               'type' => 'BrigOperandKinds16_t'
                                                             },
                                                             {
                                                               'name' => 'targets',
                                                               'acc' => 'itemRef<DirectiveLabelTargets>',
                                                               'wname' => 'targets',
                                                               'defValue' => '0',
                                                               'type' => 'BrigDirectiveOffset32_t',
                                                               'wtype' => 'ItemRef<DirectiveLabelTargets>'
                                                             }
                                                           ],
                                               'align' => undef,
                                               'parent' => 'BrigOperandRef',
                                               'wname' => 'OperandLabelTargetsRef',
                                               'name' => 'BrigOperandLabelTargetsRef',
                                               'enum' => 'BRIG_OPERAND_LABEL_TARGETS_REF'
                                             },
             'BrigOperandAddress' => {
                                       'fields' => [
                                                     {
                                                       'type' => 'uint16_t',
                                                       'wtype' => 'ValRef<uint16_t>',
                                                       'wname' => 'size',
                                                       'acc' => 'valRef',
                                                       'name' => 'size'
                                                     },
                                                     {
                                                       'wname' => 'kind',
                                                       'acc' => 'enumValRef<Brig::BrigOperandKinds,uint16_t>',
                                                       'enum' => 'BrigOperandKinds',
                                                       'name' => 'kind',
                                                       'type' => 'BrigOperandKinds16_t',
                                                       'wtype' => 'EnumValRef<Brig::BrigOperandKinds,uint16_t>'
                                                     },
                                                     {
                                                       'defValue' => '0',
                                                       'type' => 'BrigDirectiveOffset32_t',
                                                       'wtype' => 'ItemRef<DirectiveVariable>',
                                                       'name' => 'symbol',
                                                       'acc' => 'itemRef<DirectiveVariable>',
                                                       'wname' => 'symbol'
                                                     },
                                                     {
                                                       'defValue' => '0',
                                                       'type' => 'BrigStringOffset32_t',
                                                       'wtype' => 'StrRef',
                                                       'name' => 'reg',
                                                       'acc' => 'strRef',
                                                       'wname' => 'reg'
                                                     },
                                                     {
                                                       'wname' => 'offsetLo',
                                                       'name' => 'offsetLo',
                                                       'acc' => 'valRef',
                                                       'wtype' => 'ValRef<uint32_t>',
                                                       'type' => 'uint32_t'
                                                     },
                                                     {
                                                       'type' => 'uint64_t',
                                                       'wtype' => 'ValRef<uint64_t>',
                                                       'phantomof' => $structs->{'BrigOperandAddress'}{'fields'}[4],
                                                       'wname' => 'offset',
                                                       'name' => 'offset',
                                                       'acc' => 'reinterpretValRef<uint64_t>'
                                                     },
                                                     {
                                                       'acc' => 'valRef',
                                                       'name' => 'offsetHi',
                                                       'wname' => 'offsetHi',
                                                       'type' => 'uint32_t',
                                                       'wtype' => 'ValRef<uint32_t>'
                                                     }
                                                   ],
                                       'align' => undef,
                                       'parent' => 'BrigOperand',
                                       'wname' => 'OperandAddress',
                                       'enum' => 'BRIG_OPERAND_ADDRESS',
                                       'name' => 'BrigOperandAddress'
                                     },
             'BrigInstLane' => {
                                 'fields' => [
                                               {
                                                 'wname' => 'size',
                                                 'name' => 'size',
                                                 'acc' => 'valRef',
                                                 'wtype' => 'ValRef<uint16_t>',
                                                 'type' => 'uint16_t'
                                               },
                                               {
                                                 'wtype' => 'EnumValRef<Brig::BrigInstKinds,uint16_t>',
                                                 'type' => 'BrigInstKinds16_t',
                                                 'wname' => 'kind',
                                                 'name' => 'kind',
                                                 'acc' => 'enumValRef<Brig::BrigInstKinds,uint16_t>',
                                                 'enum' => 'BrigInstKinds'
                                               },
                                               {
                                                 'type' => 'BrigOpcode16_t',
                                                 'wtype' => 'EnumValRef<Brig::BrigOpcode,uint16_t>',
                                                 'wname' => 'opcode',
                                                 'enum' => 'BrigOpcode',
                                                 'acc' => 'enumValRef<Brig::BrigOpcode,uint16_t>',
                                                 'name' => 'opcode'
                                               },
                                               {
                                                 'wname' => 'type',
                                                 'acc' => 'valRef',
                                                 'name' => 'type',
                                                 'type' => 'BrigType16_t',
                                                 'wtype' => 'ValRef<uint16_t>'
                                               },
                                               {
                                                 'defValue' => '0',
                                                 'wtype' => 'ItemRef<Operand>',
                                                 'type' => 'BrigOperandOffset32_t',
                                                 'name' => 'operands',
                                                 'acc' => 'itemRef<Operand>',
                                                 'size' => '5',
                                                 'wname' => 'operand'
                                               },
                                               {
                                                 'type' => 'BrigType16_t',
                                                 'wtype' => 'ValRef<uint16_t>',
                                                 'name' => 'sourceType',
                                                 'acc' => 'valRef',
                                                 'wname' => 'sourceType'
                                               },
                                               {
                                                 'enum' => 'BrigWidth',
                                                 'acc' => 'enumValRef<Brig::BrigWidth,uint8_t>',
                                                 'name' => 'width',
                                                 'wname' => 'width',
                                                 'wtype' => 'EnumValRef<Brig::BrigWidth,uint8_t>',
                                                 'type' => 'BrigWidth8_t'
                                               },
                                               {
                                                 'name' => 'reserved',
                                                 'acc' => 'valRef',
                                                 'wname' => 'reserved',
                                                 'defValue' => '0',
                                                 'wtype' => 'ValRef<uint8_t>',
                                                 'type' => 'uint8_t',
                                                 'skip' => 1
                                               }
                                             ],
                                 'align' => undef,
                                 'parent' => 'BrigInst',
                                 'wname' => 'InstLane',
                                 'enum' => 'BRIG_INST_LANE',
                                 'name' => 'BrigInstLane'
                               },
             'BrigDirectiveSamplerInit' => {
                                             'parent' => 'BrigDirectiveOpaqueInit',
                                             'fields' => [
                                                           {
                                                             'wtype' => 'ValRef<uint16_t>',
                                                             'type' => 'uint16_t',
                                                             'wname' => 'size',
                                                             'name' => 'size',
                                                             'acc' => 'valRef'
                                                           },
                                                           {
                                                             'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                             'type' => 'BrigDirectiveKinds16_t',
                                                             'wname' => 'kind',
                                                             'name' => 'kind',
                                                             'enum' => 'BrigDirectiveKinds',
                                                             'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>'
                                                           },
                                                           {
                                                             'wname' => 'code',
                                                             'name' => 'code',
                                                             'acc' => 'itemRef<Inst>',
                                                             'type' => 'BrigCodeOffset32_t',
                                                             'wtype' => 'ItemRef<Inst>',
                                                             'defValue' => '0'
                                                           },
                                                           {
                                                             'wtype' => 'ValRef<uint16_t>',
                                                             'type' => 'uint16_t',
                                                             'defValue' => '0',
                                                             'wname' => 'samplerCount',
                                                             'name' => 'samplerCount',
                                                             'acc' => 'valRef'
                                                           },
                                                           {
                                                             'name' => 'elementCount',
                                                             'acc' => 'valRef',
                                                             'wname' => 'elementCount',
                                                             'phantomof' => $structs->{'BrigDirectiveSamplerInit'}{'fields'}[3],
                                                             'wtype' => 'ValRef<uint16_t>',
                                                             'type' => 'uint16_t'
                                                           },
                                                           {
                                                             'defValue' => '0',
                                                             'wtype' => 'ValRef<uint16_t>',
                                                             'type' => 'uint16_t',
                                                             'skip' => 1,
                                                             'name' => 'reserved',
                                                             'acc' => 'valRef',
                                                             'wname' => 'reserved'
                                                           },
                                                           {
                                                             'type' => 'BrigDirectiveOffset32_t',
                                                             'wspecial' => 'SamplerInitList',
                                                             'wtype' => 'ItemRef<DirectiveSamplerProperties>',
                                                             'defValue' => '0',
                                                             'wname' => 'samplers',
                                                             'size' => '1',
                                                             'acc' => 'itemRef<DirectiveSamplerProperties>',
                                                             'name' => 'samplers'
                                                           }
                                                         ],
                                             'align' => undef,
                                             'enum' => 'BRIG_DIRECTIVE_SAMPLER_INIT',
                                             'name' => 'BrigDirectiveSamplerInit',
                                             'wname' => 'DirectiveSamplerInit'
                                           },
             'BrigDirectiveSignatureArgument' => {
                                                   'name' => 'BrigDirectiveSignatureArgument',
                                                   'enum' => 'BRIG_DIRECTIVE_SIGNATURE_ARGUMENT',
                                                   'align' => undef,
                                                   'fields' => [
                                                                 {
                                                                   'type' => 'BrigType16_t',
                                                                   'wtype' => 'ValRef<uint16_t>',
                                                                   'acc' => 'valRef',
                                                                   'name' => 'type',
                                                                   'wname' => 'type'
                                                                 },
                                                                 {
                                                                   'type' => 'BrigAlignment8_t',
                                                                   'wtype' => 'EnumValRef<Brig::BrigAlignment,uint8_t>',
                                                                   'wname' => 'align',
                                                                   'enum' => 'BrigAlignment',
                                                                   'acc' => 'enumValRef<Brig::BrigAlignment,uint8_t>',
                                                                   'name' => 'align'
                                                                 },
                                                                 {
                                                                   'wtype' => 'SymbolModifier',
                                                                   'type' => 'BrigSymbolModifier',
                                                                   'wname' => 'modifier',
                                                                   'name' => 'modifier',
                                                                   'acc' => 'subItem<SymbolModifier>'
                                                                 },
                                                                 {
                                                                   'type' => 'uint32_t',
                                                                   'wtype' => 'ValRef<uint32_t>',
                                                                   'name' => 'dimLo',
                                                                   'acc' => 'valRef',
                                                                   'wname' => 'dimLo'
                                                                 },
                                                                 {
                                                                   'wtype' => 'ValRef<uint64_t>',
                                                                   'type' => 'uint64_t',
                                                                   'phantomof' => $structs->{'BrigDirectiveSignatureArgument'}{'fields'}[3],
                                                                   'wname' => 'dim',
                                                                   'acc' => 'reinterpretValRef<uint64_t>',
                                                                   'name' => 'dim'
                                                                 },
                                                                 {
                                                                   'type' => 'uint32_t',
                                                                   'wtype' => 'ValRef<uint32_t>',
                                                                   'wname' => 'dimHi',
                                                                   'acc' => 'valRef',
                                                                   'name' => 'dimHi'
                                                                 }
                                                               ],
                                                   'standalone' => 'true',
                                                   'isroot' => 'true',
                                                   'wname' => 'DirectiveSignatureArgument',
                                                   'comments' => [
                                                                   '/// element describing properties of function signature argument.'
                                                                 ]
                                                 },
             'BrigString' => {
                               'name' => 'BrigString',
                               'nowrap' => 'true',
                               'fields' => [
                                             {
                                               'type' => 'uint32_t',
                                               'name' => 'byteCount'
                                             },
                                             {
                                               'name' => 'bytes',
                                               'size' => '1',
                                               'type' => 'uint8_t'
                                             }
                                           ],
                               'align' => undef
                             },
             'BrigDirectiveCode' => {
                                      'wname' => 'DirectiveCode',
                                      'comments' => [
                                                      '/// base class for directives that positioned in instruction stream.'
                                                    ],
                                      'generic' => 'true',
                                      'fields' => [
                                                    {
                                                      'name' => 'size',
                                                      'acc' => 'valRef',
                                                      'wname' => 'size',
                                                      'wtype' => 'ValRef<uint16_t>',
                                                      'type' => 'uint16_t'
                                                    },
                                                    {
                                                      'wname' => 'kind',
                                                      'name' => 'kind',
                                                      'enum' => 'BrigDirectiveKinds',
                                                      'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                      'type' => 'BrigDirectiveKinds16_t',
                                                      'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>'
                                                    },
                                                    {
                                                      'defValue' => '0',
                                                      'type' => 'BrigCodeOffset32_t',
                                                      'wtype' => 'ItemRef<Inst>',
                                                      'name' => 'code',
                                                      'comments' => [
                                                                      '/// Location in the instruction stream corresponding to this directive.'
                                                                    ],
                                                      'acc' => 'itemRef<Inst>',
                                                      'wname' => 'code'
                                                    }
                                                  ],
                                      'align' => undef,
                                      'parent' => 'BrigDirective',
                                      'enum' => 'BRIG_DIRECTIVE_CODE',
                                      'children' => [
                                                      'BrigDirectiveVersion',
                                                      'BrigDirectiveLoc',
                                                      'BrigDirectiveExtension',
                                                      'BrigDirectivePragma',
                                                      'BrigDirectiveLabelInit',
                                                      'BrigDirectiveLabelTargets',
                                                      'BrigBlockStart',
                                                      'BrigDirectiveImageInit',
                                                      'BrigDirectiveVariable',
                                                      'BrigDirectiveSignature',
                                                      'BrigDirectiveKernel',
                                                      'BrigDirectiveComment',
                                                      'BrigDirectiveCallableBase',
                                                      'BrigDirectiveSamplerProperties',
                                                      'BrigDirectiveSamplerInit',
                                                      'BrigDirectiveOpaqueInit',
                                                      'BrigDirectiveVariableInit',
                                                      'BrigDirectiveFunction',
                                                      'BrigDirectiveArgScopeStart',
                                                      'BrigDirectiveControl',
                                                      'BrigDirectiveExecutable',
                                                      'BrigDirectiveFbarrier',
                                                      'BrigDirectiveArgScopeEnd',
                                                      'BrigDirectiveImageProperties',
                                                      'BrigDirectiveLabel'
                                                    ],
                                      'name' => 'BrigDirectiveCode'
                                    },
             'BrigSegCvtModifier' => {
                                       'enum' => 'BRIG_SEG_CVT_MODIFIER',
                                       'name' => 'BrigSegCvtModifier',
                                       'wname' => 'SegCvtModifier',
                                       'isroot' => 'true',
                                       'standalone' => 'true',
                                       'align' => undef,
                                       'fields' => [
                                                     {
                                                       'type' => 'BrigSegCvtModifier8_t',
                                                       'wtype' => 'ValRef<uint8_t>',
                                                       'defValue' => '0',
                                                       'wname' => 'allBits',
                                                       'acc' => 'valRef',
                                                       'name' => 'allBits'
                                                     },
                                                     {
                                                       'name' => 'isNoNull',
                                                       'acc' => 'bitValRef<0>',
                                                       'wname' => 'isNoNull',
                                                       'phantomof' => $structs->{'BrigSegCvtModifier'}{'fields'}[0],
                                                       'wtype' => 'BitValRef<0>',
                                                       'type' => 'bool'
                                                     }
                                                   ]
                                     },
             'BrigDirectiveVersion' => {
                                         'name' => 'BrigDirectiveVersion',
                                         'enum' => 'BRIG_DIRECTIVE_VERSION',
                                         'wname' => 'DirectiveVersion',
                                         'parent' => 'BrigDirectiveCode',
                                         'align' => undef,
                                         'fields' => [
                                                       {
                                                         'type' => 'uint16_t',
                                                         'wtype' => 'ValRef<uint16_t>',
                                                         'wname' => 'size',
                                                         'acc' => 'valRef',
                                                         'name' => 'size'
                                                       },
                                                       {
                                                         'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                         'type' => 'BrigDirectiveKinds16_t',
                                                         'wname' => 'kind',
                                                         'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                         'enum' => 'BrigDirectiveKinds',
                                                         'name' => 'kind'
                                                       },
                                                       {
                                                         'name' => 'code',
                                                         'acc' => 'itemRef<Inst>',
                                                         'wname' => 'code',
                                                         'defValue' => '0',
                                                         'type' => 'BrigCodeOffset32_t',
                                                         'wtype' => 'ItemRef<Inst>'
                                                       },
                                                       {
                                                         'name' => 'hsailMajor',
                                                         'novisit' => 'true',
                                                         'acc' => 'enumValRef<Brig::BrigVersion,uint32_t>',
                                                         'enum' => 'BrigVersion',
                                                         'wname' => 'hsailMajor',
                                                         'wtype' => 'EnumValRef<Brig::BrigVersion,uint32_t>',
                                                         'type' => 'BrigVersion32_t'
                                                       },
                                                       {
                                                         'wname' => 'hsailMinor',
                                                         'enum' => 'BrigVersion',
                                                         'acc' => 'enumValRef<Brig::BrigVersion,uint32_t>',
                                                         'novisit' => 'true',
                                                         'name' => 'hsailMinor',
                                                         'wtype' => 'EnumValRef<Brig::BrigVersion,uint32_t>',
                                                         'type' => 'BrigVersion32_t'
                                                       },
                                                       {
                                                         'wname' => 'brigMajor',
                                                         'acc' => 'enumValRef<Brig::BrigVersion,uint32_t>',
                                                         'novisit' => 'true',
                                                         'enum' => 'BrigVersion',
                                                         'name' => 'brigMajor',
                                                         'type' => 'BrigVersion32_t',
                                                         'wtype' => 'EnumValRef<Brig::BrigVersion,uint32_t>'
                                                       },
                                                       {
                                                         'acc' => 'enumValRef<Brig::BrigVersion,uint32_t>',
                                                         'enum' => 'BrigVersion',
                                                         'novisit' => 'true',
                                                         'name' => 'brigMinor',
                                                         'wname' => 'brigMinor',
                                                         'wtype' => 'EnumValRef<Brig::BrigVersion,uint32_t>',
                                                         'type' => 'BrigVersion32_t'
                                                       },
                                                       {
                                                         'wname' => 'profile',
                                                         'name' => 'profile',
                                                         'acc' => 'enumValRef<Brig::BrigProfile,uint8_t>',
                                                         'enum' => 'BrigProfile',
                                                         'wtype' => 'EnumValRef<Brig::BrigProfile,uint8_t>',
                                                         'type' => 'BrigProfile8_t',
                                                         'defValue' => 'Brig::BRIG_PROFILE_FULL'
                                                       },
                                                       {
                                                         'defValue' => 'Brig::BRIG_MACHINE_LARGE',
                                                         'wtype' => 'EnumValRef<Brig::BrigMachineModel,uint8_t>',
                                                         'type' => 'BrigMachineModel8_t',
                                                         'acc' => 'enumValRef<Brig::BrigMachineModel,uint8_t>',
                                                         'enum' => 'BrigMachineModel',
                                                         'name' => 'machineModel',
                                                         'wname' => 'machineModel'
                                                       },
                                                       {
                                                         'skip' => 1,
                                                         'type' => 'uint16_t',
                                                         'wtype' => 'ValRef<uint16_t>',
                                                         'defValue' => '0',
                                                         'wname' => 'reserved',
                                                         'acc' => 'valRef',
                                                         'name' => 'reserved'
                                                       }
                                                     ]
                                       },
             'BrigBlockString' => {
                                    'wname' => 'BlockString',
                                    'name' => 'BrigBlockString',
                                    'comments' => [
                                                    '/// string inside block.'
                                                  ],
                                    'enum' => 'BRIG_DIRECTIVE_BLOCK_STRING',
                                    'fields' => [
                                                  {
                                                    'wname' => 'size',
                                                    'acc' => 'valRef',
                                                    'name' => 'size',
                                                    'type' => 'uint16_t',
                                                    'wtype' => 'ValRef<uint16_t>'
                                                  },
                                                  {
                                                    'wname' => 'kind',
                                                    'enum' => 'BrigDirectiveKinds',
                                                    'acc' => 'enumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                    'name' => 'kind',
                                                    'wtype' => 'EnumValRef<Brig::BrigDirectiveKinds,uint16_t>',
                                                    'type' => 'BrigDirectiveKinds16_t'
                                                  },
                                                  {
                                                    'wname' => 'string',
                                                    'name' => 'string',
                                                    'acc' => 'strRef',
                                                    'wtype' => 'StrRef',
                                                    'type' => 'BrigStringOffset32_t',
                                                    'defValue' => '0'
                                                  }
                                                ],
                                    'align' => undef,
                                    'parent' => 'BrigDirective'
                                  }
           };
