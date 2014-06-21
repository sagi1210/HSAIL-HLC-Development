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
$enums = {
           'BrigDirectiveKinds' => {
                                     'isBodyOnly#deps' => [],
                                     'isBodyOnly' => sub { "DUMMY" },
                                     'sizeof' => sub { "DUMMY" },
                                     'isBodyOnly#calcState' => 'done',
                                     'sizeof#deps' => [
                                                        'wname'
                                                      ],
                                     'isBodyOnly_default' => 'assert(false); return false',
                                     'isToplevelOnly_switch' => 'true',
                                     'wname#calcState' => 'done',
                                     'sizeof#calcState' => 'done',
                                     'wname#deps' => [],
                                     'isToplevelOnly' => sub { "DUMMY" },
                                     'entries' => [
                                                    {
                                                      'isBodyOnly' => 'true',
                                                      'sizeof' => 'sizeof(BrigDirectiveArgScopeEnd)',
                                                      'name' => 'BRIG_DIRECTIVE_ARG_SCOPE_END',
                                                      'isToplevelOnly' => 'false',
                                                      'val' => '0',
                                                      'wname' => 'DirectiveArgScopeEnd'
                                                    },
                                                    {
                                                      'val' => '1',
                                                      'wname' => 'DirectiveArgScopeStart',
                                                      'sizeof' => 'sizeof(BrigDirectiveArgScopeStart)',
                                                      'isToplevelOnly' => 'false',
                                                      'name' => 'BRIG_DIRECTIVE_ARG_SCOPE_START',
                                                      'isBodyOnly' => 'true'
                                                    },
                                                    {
                                                      'isBodyOnly' => 'false',
                                                      'wname' => 'BlockEnd',
                                                      'val' => '2',
                                                      'sizeof' => 'sizeof(BrigBlockEnd)',
                                                      'isToplevelOnly' => 'false',
                                                      'name' => 'BRIG_DIRECTIVE_BLOCK_END'
                                                    },
                                                    {
                                                      'sizeof' => 'sizeof(BrigBlockNumeric)',
                                                      'name' => 'BRIG_DIRECTIVE_BLOCK_NUMERIC',
                                                      'isToplevelOnly' => 'false',
                                                      'val' => '3',
                                                      'wname' => 'BlockNumeric',
                                                      'isBodyOnly' => 'false'
                                                    },
                                                    {
                                                      'isBodyOnly' => 'false',
                                                      'sizeof' => 'sizeof(BrigBlockStart)',
                                                      'isToplevelOnly' => 'false',
                                                      'name' => 'BRIG_DIRECTIVE_BLOCK_START',
                                                      'wname' => 'BlockStart',
                                                      'val' => '4'
                                                    },
                                                    {
                                                      'val' => '5',
                                                      'wname' => 'BlockString',
                                                      'name' => 'BRIG_DIRECTIVE_BLOCK_STRING',
                                                      'sizeof' => 'sizeof(BrigBlockString)',
                                                      'isToplevelOnly' => 'false',
                                                      'isBodyOnly' => 'false'
                                                    },
                                                    {
                                                      'isBodyOnly' => 'false',
                                                      'val' => '6',
                                                      'wname' => 'DirectiveComment',
                                                      'isToplevelOnly' => 'false',
                                                      'sizeof' => 'sizeof(BrigDirectiveComment)',
                                                      'name' => 'BRIG_DIRECTIVE_COMMENT'
                                                    },
                                                    {
                                                      'isBodyOnly' => 'true',
                                                      'wname' => 'DirectiveControl',
                                                      'val' => '7',
                                                      'sizeof' => 'sizeof(BrigDirectiveControl)',
                                                      'name' => 'BRIG_DIRECTIVE_CONTROL',
                                                      'isToplevelOnly' => 'false'
                                                    },
                                                    {
                                                      'isBodyOnly' => 'false',
                                                      'wname' => 'DirectiveExtension',
                                                      'val' => '8',
                                                      'sizeof' => 'sizeof(BrigDirectiveExtension)',
                                                      'isToplevelOnly' => 'true',
                                                      'name' => 'BRIG_DIRECTIVE_EXTENSION'
                                                    },
                                                    {
                                                      'isBodyOnly' => 'false',
                                                      'val' => '9',
                                                      'wname' => 'DirectiveFbarrier',
                                                      'sizeof' => 'sizeof(BrigDirectiveFbarrier)',
                                                      'name' => 'BRIG_DIRECTIVE_FBARRIER',
                                                      'isToplevelOnly' => 'false'
                                                    },
                                                    {
                                                      'val' => '10',
                                                      'wname' => 'DirectiveFunction',
                                                      'name' => 'BRIG_DIRECTIVE_FUNCTION',
                                                      'sizeof' => 'sizeof(BrigDirectiveFunction)',
                                                      'isToplevelOnly' => 'true',
                                                      'isBodyOnly' => 'false'
                                                    },
                                                    {
                                                      'isBodyOnly' => 'false',
                                                      'sizeof' => 'sizeof(BrigDirectiveImageInit)',
                                                      'name' => 'BRIG_DIRECTIVE_IMAGE_INIT',
                                                      'isToplevelOnly' => 'true',
                                                      'val' => '11',
                                                      'wname' => 'DirectiveImageInit'
                                                    },
                                                    {
                                                      'sizeof' => 'sizeof(BrigDirectiveKernel)',
                                                      'name' => 'BRIG_DIRECTIVE_KERNEL',
                                                      'isToplevelOnly' => 'true',
                                                      'wname' => 'DirectiveKernel',
                                                      'val' => '12',
                                                      'isBodyOnly' => 'false'
                                                    },
                                                    {
                                                      'isBodyOnly' => 'true',
                                                      'isToplevelOnly' => 'false',
                                                      'sizeof' => 'sizeof(BrigDirectiveLabel)',
                                                      'name' => 'BRIG_DIRECTIVE_LABEL',
                                                      'val' => '13',
                                                      'wname' => 'DirectiveLabel'
                                                    },
                                                    {
                                                      'wname' => 'DirectiveLabelInit',
                                                      'val' => '14',
                                                      'isToplevelOnly' => 'false',
                                                      'sizeof' => 'sizeof(BrigDirectiveLabelInit)',
                                                      'name' => 'BRIG_DIRECTIVE_LABEL_INIT',
                                                      'isBodyOnly' => 'true'
                                                    },
                                                    {
                                                      'sizeof' => 'sizeof(BrigDirectiveLabelTargets)',
                                                      'name' => 'BRIG_DIRECTIVE_LABEL_TARGETS',
                                                      'isToplevelOnly' => 'false',
                                                      'wname' => 'DirectiveLabelTargets',
                                                      'val' => '15',
                                                      'isBodyOnly' => 'true'
                                                    },
                                                    {
                                                      'isBodyOnly' => 'false',
                                                      'isToplevelOnly' => 'false',
                                                      'sizeof' => 'sizeof(BrigDirectiveLoc)',
                                                      'name' => 'BRIG_DIRECTIVE_LOC',
                                                      'val' => '16',
                                                      'wname' => 'DirectiveLoc'
                                                    },
                                                    {
                                                      'isBodyOnly' => 'false',
                                                      'sizeof' => 'sizeof(BrigDirectivePragma)',
                                                      'isToplevelOnly' => 'false',
                                                      'name' => 'BRIG_DIRECTIVE_PRAGMA',
                                                      'val' => '17',
                                                      'wname' => 'DirectivePragma'
                                                    },
                                                    {
                                                      'val' => '18',
                                                      'wname' => 'DirectiveSamplerInit',
                                                      'isToplevelOnly' => 'true',
                                                      'sizeof' => 'sizeof(BrigDirectiveSamplerInit)',
                                                      'name' => 'BRIG_DIRECTIVE_SAMPLER_INIT',
                                                      'isBodyOnly' => 'false'
                                                    },
                                                    {
                                                      'isBodyOnly' => 'false',
                                                      'val' => '19',
                                                      'wname' => 'DirectiveSignature',
                                                      'sizeof' => 'sizeof(BrigDirectiveSignature)',
                                                      'name' => 'BRIG_DIRECTIVE_SIGNATURE',
                                                      'isToplevelOnly' => 'true'
                                                    },
                                                    {
                                                      'isBodyOnly' => 'false',
                                                      'isToplevelOnly' => 'false',
                                                      'sizeof' => 'sizeof(BrigDirectiveVariable)',
                                                      'name' => 'BRIG_DIRECTIVE_VARIABLE',
                                                      'wname' => 'DirectiveVariable',
                                                      'val' => '20'
                                                    },
                                                    {
                                                      'isBodyOnly' => 'false',
                                                      'val' => '21',
                                                      'wname' => 'DirectiveVariableInit',
                                                      'sizeof' => 'sizeof(BrigDirectiveVariableInit)',
                                                      'name' => 'BRIG_DIRECTIVE_VARIABLE_INIT',
                                                      'isToplevelOnly' => 'false'
                                                    },
                                                    {
                                                      'wname' => 'DirectiveVersion',
                                                      'val' => '22',
                                                      'name' => 'BRIG_DIRECTIVE_VERSION',
                                                      'sizeof' => 'sizeof(BrigDirectiveVersion)',
                                                      'isToplevelOnly' => 'true',
                                                      'isBodyOnly' => 'false'
                                                    },
                                                    {
                                                      'name' => 'BRIG_DIRECTIVE_IMAGE_PROPERTIES',
                                                      'sizeof' => 'sizeof(BrigDirectiveImageProperties)',
                                                      'isToplevelOnly' => 'true',
                                                      'wname' => 'DirectiveImageProperties',
                                                      'val' => '23',
                                                      'isBodyOnly' => 'false'
                                                    },
                                                    {
                                                      'isBodyOnly' => 'false',
                                                      'wname' => 'DirectiveSamplerProperties',
                                                      'val' => '24 ',
                                                      'name' => 'BRIG_DIRECTIVE_SAMPLER_PROPERTIES',
                                                      'sizeof' => 'sizeof(BrigDirectiveSamplerProperties)',
                                                      'isToplevelOnly' => 'true'
                                                    }
                                                  ],
                                     'isToplevelOnly_arg' => 'd.brig()->kind',
                                     'sizeof_proto' => 'int size_of_directive(unsigned arg)',
                                     'isBodyOnly_switch' => 'true',
                                     'name' => 'BrigDirectiveKinds',
                                     'isToplevelOnly_default' => 'assert(false); return false',
                                     'sizeof_switch' => 'true',
                                     'isBodyOnly_arg' => 'd.brig()->kind',
                                     'isToplevelOnly#deps' => [],
                                     'isToplevelOnly_proto' => 'bool isToplevelOnly(Directive d)',
                                     'sizeof_default' => 'return -1',
                                     'wname' => sub { "DUMMY" },
                                     'isToplevelOnly#calcState' => 'done',
                                     'isBodyOnly_proto' => 'bool isBodyOnly(Directive d)'
                                   },
           'BrigSegment' => {
                              'mnemo_context' => 'EInstModifierContext',
                              'mnemo' => sub { "DUMMY" },
                              'name' => 'BrigSegment',
                              'mnemo#deps' => [],
                              'mnemo#calcState' => 'done',
                              'mnemo_token' => '_EMSegment',
                              'entries' => [
                                             {
                                               'name' => 'BRIG_SEGMENT_NONE',
                                               'val' => '0',
                                               'mnemo' => ''
                                             },
                                             {
                                               'val' => '1',
                                               'mnemo' => '',
                                               'name' => 'BRIG_SEGMENT_FLAT'
                                             },
                                             {
                                               'val' => '2',
                                               'mnemo' => 'global',
                                               'name' => 'BRIG_SEGMENT_GLOBAL'
                                             },
                                             {
                                               'val' => '3',
                                               'mnemo' => 'readonly',
                                               'name' => 'BRIG_SEGMENT_READONLY'
                                             },
                                             {
                                               'mnemo' => 'kernarg',
                                               'val' => '4',
                                               'name' => 'BRIG_SEGMENT_KERNARG'
                                             },
                                             {
                                               'val' => '5',
                                               'mnemo' => 'group',
                                               'name' => 'BRIG_SEGMENT_GROUP'
                                             },
                                             {
                                               'name' => 'BRIG_SEGMENT_PRIVATE',
                                               'mnemo' => 'private',
                                               'val' => '6'
                                             },
                                             {
                                               'name' => 'BRIG_SEGMENT_SPILL',
                                               'val' => '7',
                                               'mnemo' => 'spill'
                                             },
                                             {
                                               'name' => 'BRIG_SEGMENT_ARG',
                                               'val' => '8',
                                               'mnemo' => 'arg'
                                             },
                                             {
                                               'name' => 'BRIG_SEGMENT_EXTSPACE0',
                                               'val' => '9',
                                               'mnemo' => 'region'
                                             }
                                           ]
                            },
           'BrigSamplerCoordNormalization' => {
                                                'entries' => [
                                                               {
                                                                 'name' => 'BRIG_COORD_UNNORMALIZED',
                                                                 'val' => '0',
                                                                 'mnemo' => 'unnormalized'
                                                               },
                                                               {
                                                                 'name' => 'BRIG_COORD_NORMALIZED',
                                                                 'val' => '1',
                                                                 'mnemo' => 'normalized'
                                                               }
                                                             ],
                                                'mnemo_token' => 'ESamplerCoord',
                                                'mnemo#calcState' => 'done',
                                                'mnemo#deps' => [],
                                                'name' => 'BrigSamplerCoordNormalization',
                                                'mnemo' => sub { "DUMMY" }
                                              },
           'BrigSamplerFilter' => {
                                    'mnemo#deps' => [],
                                    'name' => 'BrigSamplerFilter',
                                    'mnemo' => sub { "DUMMY" },
                                    'entries' => [
                                                   {
                                                     'val' => '0',
                                                     'mnemo' => 'nearest',
                                                     'name' => 'BRIG_FILTER_NEAREST'
                                                   },
                                                   {
                                                     'mnemo' => 'linear',
                                                     'val' => '1',
                                                     'name' => 'BRIG_FILTER_LINEAR'
                                                   }
                                                 ],
                                    'mnemo#calcState' => 'done'
                                  },
           'BrigAtomicOperation' => {
                                      'mnemo_context' => 'EInstModifierInstAtomicContext',
                                      'tdcaption' => 'Atomic Operations',
                                      'mnemo_token' => '_EMAtomicOp',
                                      'name' => 'BrigAtomicOperation',
                                      'mnemo#deps' => [],
                                      'mnemo' => sub { "DUMMY" },
                                      'entries' => [
                                                     {
                                                       'name' => 'BRIG_ATOMIC_ADD',
                                                       'mnemo' => 'add',
                                                       'val' => '0'
                                                     },
                                                     {
                                                       'val' => '1',
                                                       'mnemo' => 'and',
                                                       'name' => 'BRIG_ATOMIC_AND'
                                                     },
                                                     {
                                                       'name' => 'BRIG_ATOMIC_CAS',
                                                       'val' => '2',
                                                       'mnemo' => 'cas'
                                                     },
                                                     {
                                                       'name' => 'BRIG_ATOMIC_DEC',
                                                       'val' => '3',
                                                       'mnemo' => 'dec'
                                                     },
                                                     {
                                                       'name' => 'BRIG_ATOMIC_EXCH',
                                                       'val' => '4',
                                                       'mnemo' => 'exch'
                                                     },
                                                     {
                                                       'name' => 'BRIG_ATOMIC_INC',
                                                       'val' => '5',
                                                       'mnemo' => 'inc'
                                                     },
                                                     {
                                                       'name' => 'BRIG_ATOMIC_LD',
                                                       'mnemo' => 'ld',
                                                       'val' => '6'
                                                     },
                                                     {
                                                       'mnemo' => 'max',
                                                       'val' => '7',
                                                       'name' => 'BRIG_ATOMIC_MAX'
                                                     },
                                                     {
                                                       'name' => 'BRIG_ATOMIC_MIN',
                                                       'mnemo' => 'min',
                                                       'val' => '8'
                                                     },
                                                     {
                                                       'name' => 'BRIG_ATOMIC_OR',
                                                       'val' => '9',
                                                       'mnemo' => 'or'
                                                     },
                                                     {
                                                       'name' => 'BRIG_ATOMIC_ST',
                                                       'mnemo' => 'st',
                                                       'val' => '10'
                                                     },
                                                     {
                                                       'val' => '11',
                                                       'mnemo' => 'sub',
                                                       'name' => 'BRIG_ATOMIC_SUB'
                                                     },
                                                     {
                                                       'mnemo' => 'xor',
                                                       'val' => '12',
                                                       'name' => 'BRIG_ATOMIC_XOR'
                                                     },
                                                     {
                                                       'name' => 'BRIG_ATOMIC_WAIT_EQ',
                                                       'val' => '13',
                                                       'mnemo' => 'wait_eq'
                                                     },
                                                     {
                                                       'name' => 'BRIG_ATOMIC_WAIT_NE',
                                                       'val' => '14',
                                                       'mnemo' => 'wait_ne'
                                                     },
                                                     {
                                                       'val' => '15',
                                                       'mnemo' => 'wait_lt',
                                                       'name' => 'BRIG_ATOMIC_WAIT_LT'
                                                     },
                                                     {
                                                       'val' => '16',
                                                       'mnemo' => 'wait_gte',
                                                       'name' => 'BRIG_ATOMIC_WAIT_GTE'
                                                     },
                                                     {
                                                       'name' => 'BRIG_ATOMIC_WAITTIMEOUT_EQ',
                                                       'val' => '17',
                                                       'mnemo' => 'waittimeout_eq'
                                                     },
                                                     {
                                                       'val' => '18',
                                                       'mnemo' => 'waittimeout_ne',
                                                       'name' => 'BRIG_ATOMIC_WAITTIMEOUT_NE'
                                                     },
                                                     {
                                                       'mnemo' => 'waittimeout_lt',
                                                       'val' => '19',
                                                       'name' => 'BRIG_ATOMIC_WAITTIMEOUT_LT'
                                                     },
                                                     {
                                                       'val' => '20',
                                                       'mnemo' => 'waittimeout_gte',
                                                       'name' => 'BRIG_ATOMIC_WAITTIMEOUT_GTE'
                                                     }
                                                   ],
                                      'mnemo#calcState' => 'done'
                                    },
           'BrigMemoryFenceSegments' => {
                                          'mnemo' => sub { "DUMMY" },
                                          'mnemo_context' => 'EInstModifierInstFenceContext',
                                          'name' => 'BrigMemoryFenceSegments',
                                          'mnemo#deps' => [],
                                          'mnemo#calcState' => 'done',
                                          'mnemo_token' => '_EMMemoryFenceSegments',
                                          'entries' => [
                                                         {
                                                           'skip' => 'true',
                                                           'val' => '0',
                                                           'mnemo' => 'none',
                                                           'name' => 'BRIG_MEMORY_FENCE_NONE'
                                                         },
                                                         {
                                                           'mnemo' => 'group',
                                                           'val' => '1',
                                                           'name' => 'BRIG_MEMORY_FENCE_GROUP'
                                                         },
                                                         {
                                                           'mnemo' => 'global',
                                                           'val' => '2',
                                                           'name' => 'BRIG_MEMORY_FENCE_GLOBAL'
                                                         },
                                                         {
                                                           'name' => 'BRIG_MEMORY_FENCE_BOTH',
                                                           'val' => '3',
                                                           'mnemo' => ''
                                                         },
                                                         {
                                                           'val' => '4',
                                                           'mnemo' => 'image',
                                                           'name' => 'BRIG_MEMORY_FENCE_IMAGE'
                                                         }
                                                       ]
                                        },
           'BrigMemoryModifierMask' => {
                                         'name' => 'BrigMemoryModifierMask',
                                         'entries' => [
                                                        {
                                                          'name' => 'BRIG_MEMORY_CONST',
                                                          'val' => '1'
                                                        }
                                                      ]
                                       },
           'BrigOpcode' => {
                             'hasType#deps' => [
                                                 'k'
                                               ],
                             'hasType_switch' => 'true',
                             'opcodeparser_proto' => 'OpcodeParser getOpcodeParser(Brig::BrigOpcode16_t arg)',
                             'opcodeparser' => sub { "DUMMY" },
                             'psopnd#deps' => [],
                             'ftz#deps' => [
                                             'k'
                                           ],
                             'ftz_incfile' => 'ItemUtils',
                             'opcodevis_incfile' => 'ItemUtils',
                             'mnemo#deps' => [],
                             'opndparser_proto' => 'Parser::OperandParser Parser::getOperandParser(Brig::BrigOpcode16_t arg)',
                             'opndparser_default' => 'return NULL',
                             'ftz_default' => 'return false',
                             'opcodeparser#calcState' => 'done',
                             'opcodevis_switch' => 'true',
                             'pscode#calcState' => 'done',
                             'ftz#calcState' => 'done',
                             'k#deps' => [],
                             'hasType#calcState' => 'done',
                             'k' => sub { "DUMMY" },
                             'mnemo_token' => 'EInstruction',
                             'ftz_proto' => 'inline bool instSupportsFtz(Brig::BrigOpcode16_t arg)',
                             'pscode' => sub { "DUMMY" },
                             'opndparser' => sub { "DUMMY" },
                             'psopnd#calcState' => 'done',
                             'pscode#deps' => [
                                                'k'
                                              ],
                             'opcodevis#deps' => [
                                                   'pscode'
                                                 ],
                             'k#calcState' => 'done',
                             'semsupport#deps' => [
                                                    'has_memory_order'
                                                  ],
                             'has_memory_order#deps' => [],
                             'opcodeparser#deps' => [
                                                      'pscode'
                                                    ],
                             'opcodevis_arg' => 'inst.opcode()',
                             'opcodevis_proto' => 'template <typename RetType, typename Visitor> RetType visitOpcode_gen(HSAIL_ASM::Inst inst, Visitor& vis)',
                             'mnemo_scanner' => 'Instructions',
                             'opndparser_incfile' => 'ParserUtilities',
                             'ftz' => sub { "DUMMY" },
                             'hasType' => sub { "DUMMY" },
                             'ftz_switch' => 'true',
                             'opcodeparser_incfile' => 'ParserUtilities',
                             'psopnd' => sub { "DUMMY" },
                             'has_memory_order' => sub { "DUMMY" },
                             'hasType_proto' => 'bool instHasType(Brig::BrigOpcode16_t arg)',
                             'semsupport#calcState' => 'done',
                             'mnemo' => sub { "DUMMY" },
                             'opndparser_switch' => 'true',
                             'opcodeparser_default' => 'return NULL',
                             'opcodevis' => sub { "DUMMY" },
                             'name' => 'BrigOpcode',
                             'opndparser#deps' => [
                                                    'psopnd'
                                                  ],
                             'entries' => [
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_NOP>                   (inst)',
                                              'name' => 'BRIG_OPCODE_NOP',
                                              'mnemo' => 'nop',
                                              'opndparser' => '&Parser::parseNoOperands',
                                              'pscode' => 'Nop',
                                              'k' => 'NOP',
                                              'psopnd' => 'NoOperands',
                                              'opcodeparser' => 'parseMnemoNop',
                                              'hasType' => 'false',
                                              'val' => '0'
                                            },
                                            {
                                              'mnemo' => 'codeblockend',
                                              'name' => 'BRIG_OPCODE_CODEBLOCKEND',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_CODEBLOCKEND>          (HSAIL_ASM::InstBasic(inst))',
                                              'val' => '1',
                                              'hasType' => 'false',
                                              'opcodeparser' => 'parseMnemoBasicNoType',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC_NO_TYPE',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'BasicNoType'
                                            },
                                            {
                                              'mnemo' => 'abs',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_ABS>                   (inst)',
                                              'name' => 'BRIG_OPCODE_ABS',
                                              'val' => '2',
                                              'opcodeparser' => 'parseMnemoBasicOrMod',
                                              'ftz' => 'true',
                                              'k' => 'BASIC_OR_MOD',
                                              'psopnd' => 'Operands',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'BasicOrMod'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_ADD>                   (inst)',
                                              'name' => 'BRIG_OPCODE_ADD',
                                              'mnemo' => 'add',
                                              'opcodeparser' => 'parseMnemoBasicOrMod',
                                              'ftz' => 'true',
                                              'val' => '3',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'BasicOrMod',
                                              'k' => 'BASIC_OR_MOD',
                                              'psopnd' => 'Operands'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_BORROW>                (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_BORROW',
                                              'mnemo' => 'borrow',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '4'
                                            },
                                            {
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'val' => '5',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'mnemo' => 'carry',
                                              'name' => 'BRIG_OPCODE_CARRY',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_CARRY>                 (HSAIL_ASM::InstBasic(inst))'
                                            },
                                            {
                                              'mnemo' => 'ceil',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_CEIL>                  (inst)',
                                              'name' => 'BRIG_OPCODE_CEIL',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC_OR_MOD',
                                              'pscode' => 'BasicOrMod',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '6',
                                              'ftz' => 'true',
                                              'opcodeparser' => 'parseMnemoBasicOrMod'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_COPYSIGN>              (inst)',
                                              'name' => 'BRIG_OPCODE_COPYSIGN',
                                              'mnemo' => 'copysign',
                                              'opcodeparser' => 'parseMnemoBasicOrMod',
                                              'ftz' => 'true',
                                              'val' => '7',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'BasicOrMod',
                                              'k' => 'BASIC_OR_MOD',
                                              'psopnd' => 'Operands'
                                            },
                                            {
                                              'val' => '8',
                                              'opcodeparser' => 'parseMnemoBasicOrMod',
                                              'ftz' => 'true',
                                              'k' => 'BASIC_OR_MOD',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'BasicOrMod',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'div',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_DIV>                   (inst)',
                                              'name' => 'BRIG_OPCODE_DIV'
                                            },
                                            {
                                              'val' => '9',
                                              'opcodeparser' => 'parseMnemoBasicOrMod',
                                              'ftz' => 'true',
                                              'k' => 'BASIC_OR_MOD',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'BasicOrMod',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'floor',
                                              'name' => 'BRIG_OPCODE_FLOOR',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_FLOOR>                 (inst)'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_FMA>                   (inst)',
                                              'name' => 'BRIG_OPCODE_FMA',
                                              'mnemo' => 'fma',
                                              'ftz' => 'true',
                                              'opcodeparser' => 'parseMnemoBasicOrMod',
                                              'val' => '10',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'BasicOrMod',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC_OR_MOD'
                                            },
                                            {
                                              'k' => 'BASIC_OR_MOD',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'BasicOrMod',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '11',
                                              'opcodeparser' => 'parseMnemoBasicOrMod',
                                              'ftz' => 'true',
                                              'mnemo' => 'fract',
                                              'name' => 'BRIG_OPCODE_FRACT',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_FRACT>                 (inst)'
                                            },
                                            {
                                              'mnemo' => 'mad',
                                              'name' => 'BRIG_OPCODE_MAD',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_MAD>                   (HSAIL_ASM::InstBasic(inst))',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '12',
                                              'opcodeparser' => 'parseMnemoBasic'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_MAX',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_MAX>                   (inst)',
                                              'mnemo' => 'max',
                                              'pscode' => 'BasicOrMod',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'BASIC_OR_MOD',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoBasicOrMod',
                                              'ftz' => 'true',
                                              'val' => '13'
                                            },
                                            {
                                              'pscode' => 'BasicOrMod',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC_OR_MOD',
                                              'ftz' => 'true',
                                              'opcodeparser' => 'parseMnemoBasicOrMod',
                                              'val' => '14',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_MIN>                   (inst)',
                                              'name' => 'BRIG_OPCODE_MIN',
                                              'mnemo' => 'min'
                                            },
                                            {
                                              'mnemo' => 'mul',
                                              'name' => 'BRIG_OPCODE_MUL',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_MUL>                   (inst)',
                                              'k' => 'BASIC_OR_MOD',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'BasicOrMod',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '15',
                                              'opcodeparser' => 'parseMnemoBasicOrMod',
                                              'ftz' => 'true'
                                            },
                                            {
                                              'ftz' => 'true',
                                              'opcodeparser' => 'parseMnemoBasicOrMod',
                                              'val' => '16',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'BasicOrMod',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC_OR_MOD',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_MULHI>                 (inst)',
                                              'name' => 'BRIG_OPCODE_MULHI',
                                              'mnemo' => 'mulhi'
                                            },
                                            {
                                              'k' => 'BASIC_OR_MOD',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'BasicOrMod',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '17',
                                              'opcodeparser' => 'parseMnemoBasicOrMod',
                                              'ftz' => 'true',
                                              'mnemo' => 'neg',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_NEG>                   (inst)',
                                              'name' => 'BRIG_OPCODE_NEG'
                                            },
                                            {
                                              'val' => '18',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'rem',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_REM>                   (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_REM'
                                            },
                                            {
                                              'opcodeparser' => 'parseMnemoBasicOrMod',
                                              'ftz' => 'true',
                                              'val' => '19',
                                              'pscode' => 'BasicOrMod',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'BASIC_OR_MOD',
                                              'psopnd' => 'Operands',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_RINT>                  (inst)',
                                              'name' => 'BRIG_OPCODE_RINT',
                                              'mnemo' => 'rint'
                                            },
                                            {
                                              'k' => 'BASIC_OR_MOD',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'BasicOrMod',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '20',
                                              'opcodeparser' => 'parseMnemoBasicOrMod',
                                              'ftz' => 'true',
                                              'mnemo' => 'sqrt',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_SQRT>                  (inst)',
                                              'name' => 'BRIG_OPCODE_SQRT'
                                            },
                                            {
                                              'ftz' => 'true',
                                              'opcodeparser' => 'parseMnemoBasicOrMod',
                                              'val' => '21',
                                              'pscode' => 'BasicOrMod',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC_OR_MOD',
                                              'name' => 'BRIG_OPCODE_SUB',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_SUB>                   (inst)',
                                              'mnemo' => 'sub'
                                            },
                                            {
                                              'val' => '22',
                                              'ftz' => 'true',
                                              'opcodeparser' => 'parseMnemoBasicOrMod',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC_OR_MOD',
                                              'pscode' => 'BasicOrMod',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'trunc',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_TRUNC>                 (inst)',
                                              'name' => 'BRIG_OPCODE_TRUNC'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_MAD24>                 (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_MAD24',
                                              'mnemo' => 'mad24',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '23',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_MAD24HI',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_MAD24HI>               (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'mad24hi',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '24'
                                            },
                                            {
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '25',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_MUL24>                 (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_MUL24',
                                              'mnemo' => 'mul24'
                                            },
                                            {
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '26',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_MUL24HI>               (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_MUL24HI',
                                              'mnemo' => 'mul24hi'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_SHL',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_SHL>                   (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'shl',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '27',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_SHR',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_SHR>                   (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'shr',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '28',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC'
                                            },
                                            {
                                              'val' => '29',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'mnemo' => 'and',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_AND>                   (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_AND'
                                            },
                                            {
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '30',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_NOT>                   (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_NOT',
                                              'mnemo' => 'not'
                                            },
                                            {
                                              'val' => '31',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'mnemo' => 'or',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_OR>                    (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_OR'
                                            },
                                            {
                                              'pscode' => 'SourceType',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'SOURCE_TYPE',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoSourceType',
                                              'val' => '32',
                                              'name' => 'BRIG_OPCODE_POPCOUNT',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_POPCOUNT>              (HSAIL_ASM::InstSourceType(inst))',
                                              'mnemo' => 'popcount'
                                            },
                                            {
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '33',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'mnemo' => 'xor',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_XOR>                   (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_XOR'
                                            },
                                            {
                                              'val' => '34',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'bitextract',
                                              'name' => 'BRIG_OPCODE_BITEXTRACT',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_BITEXTRACT>            (HSAIL_ASM::InstBasic(inst))'
                                            },
                                            {
                                              'mnemo' => 'bitinsert',
                                              'name' => 'BRIG_OPCODE_BITINSERT',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_BITINSERT>             (HSAIL_ASM::InstBasic(inst))',
                                              'val' => '35',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic'
                                            },
                                            {
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'val' => '36',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'mnemo' => 'bitmask',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_BITMASK>               (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_BITMASK'
                                            },
                                            {
                                              'mnemo' => 'bitrev',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_BITREV>                (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_BITREV',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'val' => '37',
                                              'opcodeparser' => 'parseMnemoBasic'
                                            },
                                            {
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '38',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_BITSELECT>             (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_BITSELECT',
                                              'mnemo' => 'bitselect'
                                            },
                                            {
                                              'mnemo' => 'firstbit',
                                              'name' => 'BRIG_OPCODE_FIRSTBIT',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_FIRSTBIT>              (HSAIL_ASM::InstSourceType(inst))',
                                              'val' => '39',
                                              'opcodeparser' => 'parseMnemoSourceType',
                                              'psopnd' => 'Operands',
                                              'k' => 'SOURCE_TYPE',
                                              'pscode' => 'SourceType',
                                              'opndparser' => '&Parser::parseOperands'
                                            },
                                            {
                                              'mnemo' => 'lastbit',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_LASTBIT>               (HSAIL_ASM::InstSourceType(inst))',
                                              'name' => 'BRIG_OPCODE_LASTBIT',
                                              'psopnd' => 'Operands',
                                              'k' => 'SOURCE_TYPE',
                                              'pscode' => 'SourceType',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '40',
                                              'opcodeparser' => 'parseMnemoSourceType'
                                            },
                                            {
                                              'val' => '41',
                                              'opcodeparser' => 'parseMnemoSourceType',
                                              'k' => 'SOURCE_TYPE',
                                              'mnemo_token' => 'EInstruction_Vx',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'SourceType',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'combine',
                                              'name' => 'BRIG_OPCODE_COMBINE',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_COMBINE>               (HSAIL_ASM::InstSourceType(inst))'
                                            },
                                            {
                                              'val' => '42',
                                              'opcodeparser' => 'parseMnemoSourceType',
                                              'k' => 'SOURCE_TYPE',
                                              'mnemo_token' => 'EInstruction_Vx',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'SourceType',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'expand',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_EXPAND>                (HSAIL_ASM::InstSourceType(inst))',
                                              'name' => 'BRIG_OPCODE_EXPAND'
                                            },
                                            {
                                              'val' => '43',
                                              'opcodeparser' => 'parseMnemoAddr',
                                              'k' => 'ADDR',
                                              'psopnd' => 'Operands',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Addr',
                                              'mnemo' => 'lda',
                                              'name' => 'BRIG_OPCODE_LDA',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_LDA>                   (HSAIL_ASM::InstAddr(inst))'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_LDC',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_LDC>                   (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'ldc',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '44',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands'
                                            },
                                            {
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '45',
                                              'name' => 'BRIG_OPCODE_MOV',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_MOV>                   (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'mov'
                                            },
                                            {
                                              'mnemo' => 'shuffle',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_SHUFFLE>               (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_SHUFFLE',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '46',
                                              'opcodeparser' => 'parseMnemoBasic'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_UNPACKHI>              (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_UNPACKHI',
                                              'mnemo' => 'unpackhi',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '47'
                                            },
                                            {
                                              'mnemo' => 'unpacklo',
                                              'name' => 'BRIG_OPCODE_UNPACKLO',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_UNPACKLO>              (HSAIL_ASM::InstBasic(inst))',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '48',
                                              'opcodeparser' => 'parseMnemoBasic'
                                            },
                                            {
                                              'mnemo' => 'pack',
                                              'name' => 'BRIG_OPCODE_PACK',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_PACK>                  (HSAIL_ASM::InstSourceType(inst))',
                                              'psopnd' => 'Operands',
                                              'k' => 'SOURCE_TYPE',
                                              'pscode' => 'SourceType',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '49',
                                              'opcodeparser' => 'parseMnemoSourceType'
                                            },
                                            {
                                              'pscode' => 'SourceType',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'SOURCE_TYPE',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoSourceType',
                                              'val' => '50',
                                              'name' => 'BRIG_OPCODE_UNPACK',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_UNPACK>                (HSAIL_ASM::InstSourceType(inst))',
                                              'mnemo' => 'unpack'
                                            },
                                            {
                                              'mnemo' => 'cmov',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_CMOV>                  (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_CMOV',
                                              'val' => '51',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands'
                                            },
                                            {
                                              'opcodeparser' => 'parseMnemoSourceType',
                                              'val' => '52',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'SourceType',
                                              'k' => 'SOURCE_TYPE',
                                              'psopnd' => 'Operands',
                                              'name' => 'BRIG_OPCODE_CLASS',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_CLASS>                 (HSAIL_ASM::InstSourceType(inst))',
                                              'mnemo' => 'class'
                                            },
                                            {
                                              'mnemo' => 'ncos',
                                              'name' => 'BRIG_OPCODE_NCOS',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_NCOS>                  (HSAIL_ASM::InstBasic(inst))',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '53',
                                              'opcodeparser' => 'parseMnemoBasic'
                                            },
                                            {
                                              'val' => '54',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'nexp2',
                                              'name' => 'BRIG_OPCODE_NEXP2',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_NEXP2>                 (HSAIL_ASM::InstBasic(inst))'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_NFMA',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_NFMA>                  (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'nfma',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '55',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC'
                                            },
                                            {
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '56',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'name' => 'BRIG_OPCODE_NLOG2',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_NLOG2>                 (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'nlog2'
                                            },
                                            {
                                              'mnemo' => 'nrcp',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_NRCP>                  (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_NRCP',
                                              'val' => '57',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands'
                                            },
                                            {
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '58',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'mnemo' => 'nrsqrt',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_NRSQRT>                (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_NRSQRT'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_NSIN',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_NSIN>                  (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'nsin',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '59'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_NSQRT>                 (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_NSQRT',
                                              'mnemo' => 'nsqrt',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '60',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_BITALIGN',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_BITALIGN>              (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'bitalign',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '61'
                                            },
                                            {
                                              'mnemo' => 'bytealign',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_BYTEALIGN>             (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_BYTEALIGN',
                                              'val' => '62',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands'
                                            },
                                            {
                                              'opcodeparser' => 'parseMnemoSourceType',
                                              'val' => '63',
                                              'pscode' => 'SourceType',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'SOURCE_TYPE',
                                              'psopnd' => 'Operands',
                                              'name' => 'BRIG_OPCODE_PACKCVT',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_PACKCVT>               (HSAIL_ASM::InstSourceType(inst))',
                                              'mnemo' => 'packcvt'
                                            },
                                            {
                                              'mnemo' => 'unpackcvt',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_UNPACKCVT>             (HSAIL_ASM::InstSourceType(inst))',
                                              'name' => 'BRIG_OPCODE_UNPACKCVT',
                                              'k' => 'SOURCE_TYPE',
                                              'psopnd' => 'Operands',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'SourceType',
                                              'val' => '64',
                                              'opcodeparser' => 'parseMnemoSourceType'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_LERP',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_LERP>                  (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'lerp',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '65',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_SAD>                   (HSAIL_ASM::InstSourceType(inst))',
                                              'name' => 'BRIG_OPCODE_SAD',
                                              'mnemo' => 'sad',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'SourceType',
                                              'psopnd' => 'Operands',
                                              'k' => 'SOURCE_TYPE',
                                              'opcodeparser' => 'parseMnemoSourceType',
                                              'val' => '66'
                                            },
                                            {
                                              'mnemo' => 'sadhi',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_SADHI>                 (HSAIL_ASM::InstSourceType(inst))',
                                              'name' => 'BRIG_OPCODE_SADHI',
                                              'psopnd' => 'Operands',
                                              'k' => 'SOURCE_TYPE',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'SourceType',
                                              'val' => '67',
                                              'opcodeparser' => 'parseMnemoSourceType'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_SEGMENTP>              (HSAIL_ASM::InstSegCvt(inst))',
                                              'name' => 'BRIG_OPCODE_SEGMENTP',
                                              'mnemo' => 'segmentp',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'SegCvt',
                                              'psopnd' => 'Operands',
                                              'k' => 'SEG_CVT',
                                              'opcodeparser' => 'parseMnemoSegCvt',
                                              'val' => '68'
                                            },
                                            {
                                              'opcodeparser' => 'parseMnemoSegCvt',
                                              'val' => '69',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'SegCvt',
                                              'k' => 'SEG_CVT',
                                              'psopnd' => 'Operands',
                                              'name' => 'BRIG_OPCODE_FTOS',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_FTOS>                  (HSAIL_ASM::InstSegCvt(inst))',
                                              'mnemo' => 'ftos'
                                            },
                                            {
                                              'pscode' => 'SegCvt',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'SEG_CVT',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoSegCvt',
                                              'val' => '70',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_STOF>                  (HSAIL_ASM::InstSegCvt(inst))',
                                              'name' => 'BRIG_OPCODE_STOF',
                                              'mnemo' => 'stof'
                                            },
                                            {
                                              'val' => '71',
                                              'ftz' => 'true',
                                              'opcodeparser' => 'parseMnemoCmp',
                                              'psopnd' => 'Operands',
                                              'k' => 'CMP',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Cmp',
                                              'mnemo' => 'cmp',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_CMP>                   (HSAIL_ASM::InstCmp(inst))',
                                              'name' => 'BRIG_OPCODE_CMP'
                                            },
                                            {
                                              'val' => '72',
                                              'ftz' => 'true',
                                              'opcodeparser' => 'parseMnemoCvt',
                                              'psopnd' => 'Operands',
                                              'k' => 'CVT',
                                              'pscode' => 'Cvt',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'cvt',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_CVT>                   (HSAIL_ASM::InstCvt(inst))',
                                              'name' => 'BRIG_OPCODE_CVT'
                                            },
                                            {
                                              'mnemo' => 'ld',
                                              'name' => 'BRIG_OPCODE_LD',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_LD>                    (HSAIL_ASM::InstMem(inst))',
                                              'val' => '73',
                                              'opcodeparser' => 'parseMnemoMem',
                                              'psopnd' => 'Operands',
                                              'mnemo_token' => 'EInstruction_Vx',
                                              'semsupport' => 'true',
                                              'k' => 'MEM',
                                              'pscode' => 'Mem',
                                              'opndparser' => '&Parser::parseOperands',
                                              'has_memory_order' => 'true'
                                            },
                                            {
                                              'has_memory_order' => 'true',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Mem',
                                              'mnemo_token' => 'EInstruction_Vx',
                                              'psopnd' => 'Operands',
                                              'k' => 'MEM',
                                              'semsupport' => 'true',
                                              'opcodeparser' => 'parseMnemoMem',
                                              'val' => '74',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_ST>                    (HSAIL_ASM::InstMem(inst))',
                                              'name' => 'BRIG_OPCODE_ST',
                                              'mnemo' => 'st'
                                            },
                                            {
                                              'mnemo' => 'atomic',
                                              'name' => 'BRIG_OPCODE_ATOMIC',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_ATOMIC>                (HSAIL_ASM::InstAtomic(inst))',
                                              'val' => '75',
                                              'opcodeparser' => 'parseMnemoAtomic',
                                              'psopnd' => 'Operands',
                                              'k' => 'ATOMIC',
                                              'pscode' => 'Atomic',
                                              'opndparser' => '&Parser::parseOperands'
                                            },
                                            {
                                              'mnemo' => 'atomicnoret',
                                              'name' => 'BRIG_OPCODE_ATOMICNORET',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_ATOMICNORET>           (HSAIL_ASM::InstAtomic(inst))',
                                              'psopnd' => 'Operands',
                                              'k' => 'ATOMIC',
                                              'pscode' => 'Atomic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '76',
                                              'opcodeparser' => 'parseMnemoAtomic'
                                            },
                                            {
                                              'k' => 'SIGNAL',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'Signal',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '77',
                                              'opcodeparser' => 'parseMnemoSignal',
                                              'mnemo' => 'signal',
                                              'name' => 'BRIG_OPCODE_SIGNAL',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_SIGNAL>                (HSAIL_ASM::InstSignal(inst))'
                                            },
                                            {
                                              'mnemo' => 'signalnoret',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_SIGNALNORET>           (HSAIL_ASM::InstSignal(inst))',
                                              'name' => 'BRIG_OPCODE_SIGNALNORET',
                                              'psopnd' => 'Operands',
                                              'k' => 'SIGNAL',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Signal',
                                              'val' => '78',
                                              'opcodeparser' => 'parseMnemoSignal'
                                            },
                                            {
                                              'pscode' => 'MemFence',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'MEM_FENCE',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoMemFence',
                                              'val' => '79',
                                              'name' => 'BRIG_OPCODE_MEMFENCE',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_MEMFENCE>              (HSAIL_ASM::InstMemFence(inst))',
                                              'mnemo' => 'memfence'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_RDIMAGE>               (HSAIL_ASM::InstImage(inst))',
                                              'name' => 'BRIG_OPCODE_RDIMAGE',
                                              'mnemo' => 'rdimage',
                                              'pscode' => 'Image',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'IMAGE',
                                              'mnemo_token' => 'EInstruction_Vx',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoImage',
                                              'val' => '80'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_LDIMAGE>               (HSAIL_ASM::InstImage(inst))',
                                              'name' => 'BRIG_OPCODE_LDIMAGE',
                                              'mnemo' => 'ldimage',
                                              'pscode' => 'Image',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'IMAGE',
                                              'mnemo_token' => 'EInstruction_Vx',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoImage',
                                              'val' => '81'
                                            },
                                            {
                                              'psopnd' => 'Operands',
                                              'mnemo_token' => 'EInstruction_Vx',
                                              'k' => 'IMAGE',
                                              'pscode' => 'Image',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '82',
                                              'opcodeparser' => 'parseMnemoImage',
                                              'mnemo' => 'stimage',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_STIMAGE>               (HSAIL_ASM::InstImage(inst))',
                                              'name' => 'BRIG_OPCODE_STIMAGE'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_CBR>                   (HSAIL_ASM::InstBr(inst))',
                                              'name' => 'BRIG_OPCODE_CBR',
                                              'mnemo' => 'cbr',
                                              'pscode' => 'Br',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BR',
                                              'hasType' => 'false',
                                              'opcodeparser' => 'parseMnemoBr',
                                              'val' => '83'
                                            },
                                            {
                                              'pscode' => 'Br',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BR',
                                              'hasType' => 'false',
                                              'opcodeparser' => 'parseMnemoBr',
                                              'val' => '84',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_BRN>                   (HSAIL_ASM::InstBr(inst))',
                                              'name' => 'BRIG_OPCODE_BRN',
                                              'mnemo' => 'brn'
                                            },
                                            {
                                              'mnemo' => 'barrier',
                                              'name' => 'BRIG_OPCODE_BARRIER',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_BARRIER>               (HSAIL_ASM::InstBr(inst))',
                                              'val' => '85',
                                              'opcodeparser' => 'parseMnemoBr',
                                              'hasType' => 'false',
                                              'k' => 'BR',
                                              'psopnd' => 'Operands',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Br'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_WAVEBARRIER>           (HSAIL_ASM::InstBr(inst))',
                                              'name' => 'BRIG_OPCODE_WAVEBARRIER',
                                              'mnemo' => 'wavebarrier',
                                              'pscode' => 'Br',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BR',
                                              'hasType' => 'false',
                                              'opcodeparser' => 'parseMnemoBr',
                                              'val' => '86'
                                            },
                                            {
                                              'mnemo' => 'arrivefbar',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_ARRIVEFBAR>            (HSAIL_ASM::InstBr(inst))',
                                              'name' => 'BRIG_OPCODE_ARRIVEFBAR',
                                              'k' => 'BR',
                                              'psopnd' => 'Operands',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Br',
                                              'val' => '87',
                                              'opcodeparser' => 'parseMnemoBr',
                                              'hasType' => 'false'
                                            },
                                            {
                                              'val' => '88',
                                              'opcodeparser' => 'parseMnemoBasicNoType',
                                              'hasType' => 'false',
                                              'k' => 'BASIC_NO_TYPE',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'BasicNoType',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'initfbar',
                                              'name' => 'BRIG_OPCODE_INITFBAR',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_INITFBAR>              (HSAIL_ASM::InstBasic(inst))'
                                            },
                                            {
                                              'psopnd' => 'Operands',
                                              'k' => 'BR',
                                              'pscode' => 'Br',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '89',
                                              'hasType' => 'false',
                                              'opcodeparser' => 'parseMnemoBr',
                                              'mnemo' => 'joinfbar',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_JOINFBAR>              (HSAIL_ASM::InstBr(inst))',
                                              'name' => 'BRIG_OPCODE_JOINFBAR'
                                            },
                                            {
                                              'k' => 'BR',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'Br',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '90',
                                              'opcodeparser' => 'parseMnemoBr',
                                              'hasType' => 'false',
                                              'mnemo' => 'leavefbar',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_LEAVEFBAR>             (HSAIL_ASM::InstBr(inst))',
                                              'name' => 'BRIG_OPCODE_LEAVEFBAR'
                                            },
                                            {
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'BasicNoType',
                                              'k' => 'BASIC_NO_TYPE',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoBasicNoType',
                                              'hasType' => 'false',
                                              'val' => '91',
                                              'name' => 'BRIG_OPCODE_RELEASEFBAR',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_RELEASEFBAR>           (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'releasefbar'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_WAITFBAR',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_WAITFBAR>              (HSAIL_ASM::InstBr(inst))',
                                              'mnemo' => 'waitfbar',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Br',
                                              'k' => 'BR',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoBr',
                                              'hasType' => 'false',
                                              'val' => '92'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_LDF>                   (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_LDF',
                                              'mnemo' => 'ldf',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '93'
                                            },
                                            {
                                              'val' => '94',
                                              'opcodeparser' => 'parseMnemoLane',
                                              'psopnd' => 'Operands',
                                              'k' => 'LANE',
                                              'pscode' => 'Lane',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'activelanecount',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_ACTIVELANECOUNT>       (HSAIL_ASM::InstLane(inst))',
                                              'name' => 'BRIG_OPCODE_ACTIVELANECOUNT'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_ACTIVELANEID>          (HSAIL_ASM::InstLane(inst))',
                                              'name' => 'BRIG_OPCODE_ACTIVELANEID',
                                              'mnemo' => 'activelaneid',
                                              'pscode' => 'Lane',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'LANE',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoLane',
                                              'val' => '95'
                                            },
                                            {
                                              'val' => '96',
                                              'opcodeparser' => 'parseMnemoLane',
                                              'psopnd' => 'Operands',
                                              'mnemo_token' => 'EInstruction_Vx',
                                              'k' => 'LANE',
                                              'pscode' => 'Lane',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'activelanemask',
                                              'name' => 'BRIG_OPCODE_ACTIVELANEMASK',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_ACTIVELANEMASK>        (HSAIL_ASM::InstLane(inst))'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_ACTIVELANESHUFFLE>     (HSAIL_ASM::InstLane(inst))',
                                              'name' => 'BRIG_OPCODE_ACTIVELANESHUFFLE',
                                              'mnemo' => 'activelaneshuffle',
                                              'opcodeparser' => 'parseMnemoLane',
                                              'val' => '97',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Lane',
                                              'psopnd' => 'Operands',
                                              'k' => 'LANE'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_CALL',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_CALL>                  (HSAIL_ASM::InstBr(inst))',
                                              'mnemo' => 'call',
                                              'opndparser' => '&Parser::parseCallOperands',
                                              'pscode' => 'Br',
                                              'k' => 'BR',
                                              'psopnd' => 'CallOperands',
                                              'opcodeparser' => 'parseMnemoBr',
                                              'hasType' => 'false',
                                              'val' => '98'
                                            },
                                            {
                                              'pscode' => 'BasicNoType',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'BASIC_NO_TYPE',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoBasicNoType',
                                              'hasType' => 'false',
                                              'val' => '99',
                                              'name' => 'BRIG_OPCODE_RET',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_RET>                   (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'ret'
                                            },
                                            {
                                              'opcodeparser' => 'parseMnemoMem',
                                              'val' => '100',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Mem',
                                              'psopnd' => 'Operands',
                                              'k' => 'MEM',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_ALLOCA>                (HSAIL_ASM::InstMem(inst))',
                                              'name' => 'BRIG_OPCODE_ALLOCA',
                                              'mnemo' => 'alloca'
                                            },
                                            {
                                              'mnemo' => 'addqueuewriteindex',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_ADDQUEUEWRITEINDEX>    (HSAIL_ASM::InstQueue(inst))',
                                              'name' => 'BRIG_OPCODE_ADDQUEUEWRITEINDEX',
                                              'val' => '101',
                                              'opcodeparser' => 'parseMnemoQueue',
                                              'k' => 'QUEUE',
                                              'psopnd' => 'Operands',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Queue'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_CASQUEUEWRITEINDEX>    (HSAIL_ASM::InstQueue(inst))',
                                              'name' => 'BRIG_OPCODE_CASQUEUEWRITEINDEX',
                                              'mnemo' => 'casqueuewriteindex',
                                              'opcodeparser' => 'parseMnemoQueue',
                                              'val' => '102',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Queue',
                                              'psopnd' => 'Operands',
                                              'k' => 'QUEUE'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_CLEARDETECTEXCEPT',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_CLEARDETECTEXCEPT>     (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'cleardetectexcept',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '103',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC'
                                            },
                                            {
                                              'mnemo' => 'clock',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_CLOCK>                 (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_CLOCK',
                                              'val' => '104',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic'
                                            },
                                            {
                                              'mnemo' => 'cuid',
                                              'name' => 'BRIG_OPCODE_CUID',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_CUID>                  (HSAIL_ASM::InstBasic(inst))',
                                              'val' => '105',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_CURRENTWORKGROUPSIZE>  (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_CURRENTWORKGROUPSIZE',
                                              'mnemo' => 'currentworkgroupsize',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '106'
                                            },
                                            {
                                              'mnemo' => 'debugtrap',
                                              'name' => 'BRIG_OPCODE_DEBUGTRAP',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_DEBUGTRAP>             (HSAIL_ASM::InstBasic(inst))',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'val' => '107',
                                              'opcodeparser' => 'parseMnemoBasic'
                                            },
                                            {
                                              'mnemo' => 'dim',
                                              'name' => 'BRIG_OPCODE_DIM',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_DIM>                   (HSAIL_ASM::InstBasic(inst))',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '108',
                                              'opcodeparser' => 'parseMnemoBasic'
                                            },
                                            {
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '109',
                                              'name' => 'BRIG_OPCODE_GETDETECTEXCEPT',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GETDETECTEXCEPT>       (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'getdetectexcept'
                                            },
                                            {
                                              'mnemo' => 'gridgroups',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GRIDGROUPS>            (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_GRIDGROUPS',
                                              'val' => '110',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands'
                                            },
                                            {
                                              'mnemo' => 'gridsize',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GRIDSIZE>              (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_GRIDSIZE',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'val' => '111',
                                              'opcodeparser' => 'parseMnemoBasic'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_LANEID',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_LANEID>                (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'laneid',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '112',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_LDQUEUEREADINDEX',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_LDQUEUEREADINDEX>      (HSAIL_ASM::InstQueue(inst))',
                                              'mnemo' => 'ldqueuereadindex',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Queue',
                                              'k' => 'QUEUE',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoQueue',
                                              'val' => '113'
                                            },
                                            {
                                              'k' => 'QUEUE',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'Queue',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '114',
                                              'opcodeparser' => 'parseMnemoQueue',
                                              'mnemo' => 'ldqueuewriteindex',
                                              'name' => 'BRIG_OPCODE_LDQUEUEWRITEINDEX',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_LDQUEUEWRITEINDEX>     (HSAIL_ASM::InstQueue(inst))'
                                            },
                                            {
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '115',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_MAXCUID>               (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_MAXCUID',
                                              'mnemo' => 'maxcuid'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_MAXWAVEID',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_MAXWAVEID>             (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'maxwaveid',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '116'
                                            },
                                            {
                                              'mnemo' => 'nullptr',
                                              'name' => 'BRIG_OPCODE_NULLPTR',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_NULLPTR>               (HSAIL_ASM::InstSeg(inst))',
                                              'val' => '117',
                                              'opcodeparser' => 'parseMnemoSeg',
                                              'psopnd' => 'Operands',
                                              'k' => 'SEG',
                                              'pscode' => 'Seg',
                                              'opndparser' => '&Parser::parseOperands'
                                            },
                                            {
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '118',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'name' => 'BRIG_OPCODE_PACKETCOMPLETIONSIG',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_PACKETCOMPLETIONSIG>   (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'packetcompletionsig'
                                            },
                                            {
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '119',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'mnemo' => 'packetid',
                                              'name' => 'BRIG_OPCODE_PACKETID',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_PACKETID>              (HSAIL_ASM::InstBasic(inst))'
                                            },
                                            {
                                              'val' => '120',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'mnemo' => 'queueid',
                                              'name' => 'BRIG_OPCODE_QUEUEID',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_QUEUEID>               (HSAIL_ASM::InstBasic(inst))'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_QUEUEPTR>              (HSAIL_ASM::InstSeg(inst))',
                                              'name' => 'BRIG_OPCODE_QUEUEPTR',
                                              'mnemo' => 'queueptr',
                                              'pscode' => 'Seg',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'SEG',
                                              'opcodeparser' => 'parseMnemoSeg',
                                              'val' => '121'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_SERVICEQUEUEPTR>       (HSAIL_ASM::InstSeg(inst))',
                                              'name' => 'BRIG_OPCODE_SERVICEQUEUEPTR',
                                              'mnemo' => 'servicequeueptr',
                                              'opcodeparser' => 'parseMnemoSeg',
                                              'val' => '122',
                                              'pscode' => 'Seg',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'SEG'
                                            },
                                            {
                                              'mnemo' => 'setdetectexcept',
                                              'name' => 'BRIG_OPCODE_SETDETECTEXCEPT',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_SETDETECTEXCEPT>       (HSAIL_ASM::InstBasic(inst))',
                                              'val' => '123',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_STQUEUEREADINDEX>      (HSAIL_ASM::InstQueue(inst))',
                                              'name' => 'BRIG_OPCODE_STQUEUEREADINDEX',
                                              'mnemo' => 'stqueuereadindex',
                                              'pscode' => 'Queue',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'QUEUE',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoQueue',
                                              'val' => '124'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_STQUEUEWRITEINDEX',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_STQUEUEWRITEINDEX>     (HSAIL_ASM::InstQueue(inst))',
                                              'mnemo' => 'stqueuewriteindex',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Queue',
                                              'psopnd' => 'Operands',
                                              'k' => 'QUEUE',
                                              'opcodeparser' => 'parseMnemoQueue',
                                              'val' => '125'
                                            },
                                            {
                                              'val' => '126',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'waveid',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_WAVEID>                (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_WAVEID'
                                            },
                                            {
                                              'val' => '127',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'workgroupid',
                                              'name' => 'BRIG_OPCODE_WORKGROUPID',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_WORKGROUPID>           (HSAIL_ASM::InstBasic(inst))'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_WORKGROUPSIZE>         (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_WORKGROUPSIZE',
                                              'mnemo' => 'workgroupsize',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '128'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_WORKITEMABSID',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_WORKITEMABSID>         (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'workitemabsid',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '129',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC'
                                            },
                                            {
                                              'val' => '130',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'workitemflatabsid',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_WORKITEMFLATABSID>     (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_WORKITEMFLATABSID'
                                            },
                                            {
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '131',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_WORKITEMFLATID>        (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_WORKITEMFLATID',
                                              'mnemo' => 'workitemflatid'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_WORKITEMID>            (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_WORKITEMID',
                                              'mnemo' => 'workitemid',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '132',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands'
                                            },
                                            {
                                              'pscode' => 'QueryImage',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'QUERY_IMAGE',
                                              'opcodeparser' => 'parseMnemoQueryImage',
                                              'val' => '133',
                                              'name' => 'BRIG_OPCODE_QUERYIMAGE',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_QUERYIMAGE>            (HSAIL_ASM::InstQueryImage(inst))',
                                              'mnemo' => 'queryimage'
                                            },
                                            {
                                              'mnemo' => 'querysampler',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_QUERYSAMPLER>          (HSAIL_ASM::InstQuerySampler(inst))',
                                              'name' => 'BRIG_OPCODE_QUERYSAMPLER',
                                              'k' => 'QUERY_SAMPLER',
                                              'psopnd' => 'Operands',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'QuerySampler',
                                              'val' => '134',
                                              'opcodeparser' => 'parseMnemoQuerySampler'
                                            },
                                            {
                                              'hasType' => 'false',
                                              'opcodeparser' => 'parseMnemoBasicNoType',
                                              'val' => '(1u << 15) |  0',
                                              'pscode' => 'BasicNoType',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC_NO_TYPE',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNMADU>               (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_GCNMADU',
                                              'mnemo' => 'gcn_madu'
                                            },
                                            {
                                              'val' => '(1u << 15) |  1',
                                              'hasType' => 'false',
                                              'opcodeparser' => 'parseMnemoBasicNoType',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC_NO_TYPE',
                                              'pscode' => 'BasicNoType',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'gcn_mads',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNMADS>               (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_GCNMADS'
                                            },
                                            {
                                              'val' => '(1u << 15) |  2',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'mnemo' => 'gcn_max3',
                                              'name' => 'BRIG_OPCODE_GCNMAX3',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNMAX3>               (HSAIL_ASM::InstBasic(inst))'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNMIN3>               (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_GCNMIN3',
                                              'mnemo' => 'gcn_min3',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '(1u << 15) |  3'
                                            },
                                            {
                                              'mnemo' => 'gcn_med3',
                                              'name' => 'BRIG_OPCODE_GCNMED3',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNMED3>               (HSAIL_ASM::InstBasic(inst))',
                                              'val' => '(1u << 15) |  4',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands'
                                            },
                                            {
                                              'name' => 'BRIG_OPCODE_GCNFLDEXP',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNFLDEXP>             (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'gcn_fldexp',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '(1u << 15) |  5',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC'
                                            },
                                            {
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '(1u << 15) |  6',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'mnemo' => 'gcn_frexp_exp',
                                              'name' => 'BRIG_OPCODE_GCNFREXP_EXP',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNFREXP_EXP>          (HSAIL_ASM::InstBasic(inst))'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNFREXP_MANT>         (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_GCNFREXP_MANT',
                                              'mnemo' => 'gcn_frexp_mant',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '(1u << 15) |  7'
                                            },
                                            {
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '(1u << 15) |  8',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'mnemo' => 'gcn_trig_preop',
                                              'name' => 'BRIG_OPCODE_GCNTRIG_PREOP',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNTRIG_PREOP>         (HSAIL_ASM::InstBasic(inst))'
                                            },
                                            {
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '(1u << 15) |  9',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'mnemo' => 'gcn_bfm',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNBFM>                (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_GCNBFM'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNLD>                 (HSAIL_ASM::InstMem(inst))',
                                              'name' => 'BRIG_OPCODE_GCNLD',
                                              'mnemo' => 'gcn_ld',
                                              'pscode' => 'Mem',
                                              'opndparser' => '&Parser::parseOperands',
                                              'has_memory_order' => 'true',
                                              'mnemo_token' => 'EInstruction_Vx',
                                              'psopnd' => 'Operands',
                                              'semsupport' => 'true',
                                              'k' => 'MEM',
                                              'opcodeparser' => 'parseMnemoMem',
                                              'val' => '(1u << 15) | 10'
                                            },
                                            {
                                              'semsupport' => 'true',
                                              'k' => 'MEM',
                                              'mnemo_token' => 'EInstruction_Vx',
                                              'psopnd' => 'Operands',
                                              'has_memory_order' => 'true',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Mem',
                                              'val' => '(1u << 15) | 11',
                                              'opcodeparser' => 'parseMnemoMem',
                                              'mnemo' => 'gcn_st',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNST>                 (HSAIL_ASM::InstMem(inst))',
                                              'name' => 'BRIG_OPCODE_GCNST'
                                            },
                                            {
                                              'mnemo' => 'gcn_atomic',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNATOMIC>             (HSAIL_ASM::InstAtomic(inst))',
                                              'name' => 'BRIG_OPCODE_GCNATOMIC',
                                              'k' => 'ATOMIC',
                                              'psopnd' => 'Operands',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Atomic',
                                              'val' => '(1u << 15) | 12',
                                              'opcodeparser' => 'parseMnemoAtomic'
                                            },
                                            {
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNATOMICNORET>        (HSAIL_ASM::InstAtomic(inst))',
                                              'name' => 'BRIG_OPCODE_GCNATOMICNORET',
                                              'mnemo' => 'gcn_atomicNoRet',
                                              'opcodeparser' => 'parseMnemoAtomic',
                                              'val' => '(1u << 15) | 13',
                                              'pscode' => 'Atomic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'ATOMIC'
                                            },
                                            {
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'val' => '(1u << 15) | 14',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'mnemo' => 'gcn_sleep',
                                              'name' => 'BRIG_OPCODE_GCNSLEEP',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNSLEEP>              (HSAIL_ASM::InstBasic(inst))'
                                            },
                                            {
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '(1u << 15) | 15',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'mnemo' => 'gcn_priority',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNPRIORITY>           (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_GCNPRIORITY'
                                            },
                                            {
                                              'k' => 'BASIC_NO_TYPE',
                                              'psopnd' => 'Operands',
                                              'pscode' => 'BasicNoType',
                                              'opndparser' => '&Parser::parseOperands',
                                              'val' => '(1u << 15) | 16',
                                              'opcodeparser' => 'parseMnemoBasicNoType',
                                              'hasType' => 'false',
                                              'mnemo' => 'gcn_region_alloc',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNREGIONALLOC>        (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_GCNREGIONALLOC'
                                            },
                                            {
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '(1u << 15) | 17',
                                              'name' => 'BRIG_OPCODE_GCNMSAD',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNMSAD>               (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'gcn_msad'
                                            },
                                            {
                                              'val' => '(1u << 15) | 18',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'mnemo' => 'gcn_qsad',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNQSAD>               (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_GCNQSAD'
                                            },
                                            {
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'val' => '(1u << 15) | 19',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'mnemo' => 'gcn_mqsad',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNMQSAD>              (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_GCNMQSAD'
                                            },
                                            {
                                              'val' => '(1u << 15) | 20',
                                              'hasType' => 'false',
                                              'opcodeparser' => 'parseMnemoBasicNoType',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC_NO_TYPE',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'BasicNoType',
                                              'mnemo' => 'gcn_mqsad4',
                                              'name' => 'BRIG_OPCODE_GCNMQSAD4',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNMQSAD4>             (HSAIL_ASM::InstBasic(inst))'
                                            },
                                            {
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '(1u << 15) | 21',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'name' => 'BRIG_OPCODE_GCNSADW',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNSADW>               (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'gcn_sadw'
                                            },
                                            {
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '(1u << 15) | 22',
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNSADD>               (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_GCNSADD',
                                              'mnemo' => 'gcn_sadd'
                                            },
                                            {
                                              'pscode' => 'Addr',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'ADDR',
                                              'opcodeparser' => 'parseMnemoAddr',
                                              'val' => '(1u << 15) | 23',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNCONSUME>            (HSAIL_ASM::InstAddr(inst))',
                                              'name' => 'BRIG_OPCODE_GCNCONSUME',
                                              'mnemo' => 'gcn_atomic_consume'
                                            },
                                            {
                                              'opcodeparser' => 'parseMnemoAddr',
                                              'val' => '(1u << 15) | 24',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Addr',
                                              'k' => 'ADDR',
                                              'psopnd' => 'Operands',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNAPPEND>             (HSAIL_ASM::InstAddr(inst))',
                                              'name' => 'BRIG_OPCODE_GCNAPPEND',
                                              'mnemo' => 'gcn_atomic_append'
                                            },
                                            {
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '(1u << 15) | 25',
                                              'name' => 'BRIG_OPCODE_GCNB4XCHG',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNB4XCHG>             (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'gcn_b4xchg'
                                            },
                                            {
                                              'pscode' => 'Basic',
                                              'opndparser' => '&Parser::parseOperands',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '(1u << 15) | 26',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNB32XCHG>            (HSAIL_ASM::InstBasic(inst))',
                                              'name' => 'BRIG_OPCODE_GCNB32XCHG',
                                              'mnemo' => 'gcn_b32xchg'
                                            },
                                            {
                                              'mnemo' => 'gcn_max',
                                              'name' => 'BRIG_OPCODE_GCNMAX',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNMAX>                (HSAIL_ASM::InstBasic(inst))',
                                              'val' => '(1u << 15) | 27',
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'psopnd' => 'Operands',
                                              'k' => 'BASIC',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic'
                                            },
                                            {
                                              'opcodeparser' => 'parseMnemoBasic',
                                              'val' => '(1u << 15) | 28',
                                              'opndparser' => '&Parser::parseOperands',
                                              'pscode' => 'Basic',
                                              'k' => 'BASIC',
                                              'psopnd' => 'Operands',
                                              'name' => 'BRIG_OPCODE_GCNMIN',
                                              'opcodevis' => 'vis.template visitOpcode<BRIG_OPCODE_GCNMIN>                (HSAIL_ASM::InstBasic(inst))',
                                              'mnemo' => 'gcn_min'
                                            }
                                          ],
                             'has_memory_order#calcState' => 'done',
                             'semsupport' => sub { "DUMMY" },
                             'tdcaption' => 'Instruction Opcodes',
                             'opcodevis_default' => 'return RetType()',
                             'opcodeparser_switch' => 'true',
                             'opcodevis#calcState' => 'done',
                             'mnemo#calcState' => 'done',
                             'hasType_default' => 'return true',
                             'opndparser#calcState' => 'done'
                           },
           'BrigOperandKinds' => {
                                   'sizeof#deps' => [
                                                      'wname'
                                                    ],
                                   'sizeof_default' => 'return -1',
                                   'wname' => sub { "DUMMY" },
                                   'sizeof#calcState' => 'done',
                                   'wname#calcState' => 'done',
                                   'wname#deps' => [],
                                   'entries' => [
                                                  {
                                                    'val' => '0',
                                                    'wname' => 'OperandImmed',
                                                    'name' => 'BRIG_OPERAND_IMMED',
                                                    'sizeof' => 'sizeof(BrigOperandImmed)'
                                                  },
                                                  {
                                                    'name' => 'BRIG_OPERAND_WAVESIZE',
                                                    'sizeof' => 'sizeof(BrigOperandWavesize)',
                                                    'val' => '1',
                                                    'wname' => 'OperandWavesize'
                                                  },
                                                  {
                                                    'val' => '2',
                                                    'wname' => 'OperandReg',
                                                    'sizeof' => 'sizeof(BrigOperandReg)',
                                                    'name' => 'BRIG_OPERAND_REG'
                                                  },
                                                  {
                                                    'sizeof' => 'sizeof(BrigOperandVector)',
                                                    'name' => 'BRIG_OPERAND_VECTOR',
                                                    'wname' => 'OperandVector',
                                                    'val' => '3'
                                                  },
                                                  {
                                                    'name' => 'BRIG_OPERAND_ADDRESS',
                                                    'sizeof' => 'sizeof(BrigOperandAddress)',
                                                    'val' => '4',
                                                    'wname' => 'OperandAddress'
                                                  },
                                                  {
                                                    'name' => 'BRIG_OPERAND_ARGUMENT_LIST',
                                                    'sizeof' => 'sizeof(BrigOperandArgumentList)',
                                                    'val' => '5',
                                                    'wname' => 'OperandArgumentList'
                                                  },
                                                  {
                                                    'val' => '6',
                                                    'wname' => 'OperandFunctionList',
                                                    'name' => 'BRIG_OPERAND_FUNCTION_LIST',
                                                    'sizeof' => 'sizeof(BrigOperandFunctionList)'
                                                  },
                                                  {
                                                    'wname' => 'OperandFbarrierRef',
                                                    'val' => '7',
                                                    'sizeof' => 'sizeof(BrigOperandFbarrierRef)',
                                                    'name' => 'BRIG_OPERAND_FBARRIER_REF'
                                                  },
                                                  {
                                                    'wname' => 'OperandFunctionRef',
                                                    'val' => '8',
                                                    'name' => 'BRIG_OPERAND_FUNCTION_REF',
                                                    'sizeof' => 'sizeof(BrigOperandFunctionRef)'
                                                  },
                                                  {
                                                    'name' => 'BRIG_OPERAND_LABEL_REF',
                                                    'sizeof' => 'sizeof(BrigOperandLabelRef)',
                                                    'val' => '9',
                                                    'wname' => 'OperandLabelRef'
                                                  },
                                                  {
                                                    'wname' => 'OperandLabelTargetsRef',
                                                    'val' => '10',
                                                    'name' => 'BRIG_OPERAND_LABEL_TARGETS_REF',
                                                    'sizeof' => 'sizeof(BrigOperandLabelTargetsRef)'
                                                  },
                                                  {
                                                    'name' => 'BRIG_OPERAND_SIGNATURE_REF',
                                                    'sizeof' => 'sizeof(BrigOperandSignatureRef)',
                                                    'val' => '11',
                                                    'wname' => 'OperandSignatureRef'
                                                  },
                                                  {
                                                    'name' => 'BRIG_OPERAND_LABEL_VARIABLE_REF',
                                                    'sizeof' => 'sizeof(BrigOperandLabelVariableRef)',
                                                    'wname' => 'OperandLabelVariableRef',
                                                    'val' => '12'
                                                  }
                                                ],
                                   'sizeof_proto' => 'int size_of_operand(unsigned arg)',
                                   'name' => 'BrigOperandKinds',
                                   'sizeof' => sub { "DUMMY" },
                                   'sizeof_switch' => 'true'
                                 },
           'BrigMemoryOrder' => {
                                  'mnemo' => sub { "DUMMY" },
                                  'name' => 'BrigMemoryOrder',
                                  'mnemo#deps' => [],
                                  'mnemo#calcState' => 'done',
                                  'mnemo_token' => '_EMMemoryOrder',
                                  'entries' => [
                                                 {
                                                   'mnemo' => '',
                                                   'val' => '0',
                                                   'name' => 'BRIG_MEMORY_ORDER_NONE'
                                                 },
                                                 {
                                                   'mnemo' => 'rlx',
                                                   'val' => '1',
                                                   'name' => 'BRIG_MEMORY_ORDER_RELAXED'
                                                 },
                                                 {
                                                   'name' => 'BRIG_MEMORY_ORDER_ACQUIRE',
                                                   'mnemo' => 'acq',
                                                   'val' => '2'
                                                 },
                                                 {
                                                   'name' => 'BRIG_MEMORY_ORDER_RELEASE',
                                                   'val' => '3',
                                                   'mnemo' => 'rel'
                                                 },
                                                 {
                                                   'name' => 'BRIG_MEMORY_ORDER_ACQUIRE_RELEASE',
                                                   'mnemo' => 'ar',
                                                   'val' => '4         '
                                                 }
                                               ]
                                },
           'BrigPack' => {
                           'entries' => [
                                          {
                                            'name' => 'BRIG_PACK_NONE',
                                            'mnemo' => '',
                                            'val' => '0'
                                          },
                                          {
                                            'name' => 'BRIG_PACK_PP',
                                            'val' => '1',
                                            'mnemo' => 'pp'
                                          },
                                          {
                                            'name' => 'BRIG_PACK_PS',
                                            'mnemo' => 'ps',
                                            'val' => '2'
                                          },
                                          {
                                            'val' => '3',
                                            'mnemo' => 'sp',
                                            'name' => 'BRIG_PACK_SP'
                                          },
                                          {
                                            'name' => 'BRIG_PACK_SS',
                                            'mnemo' => 'ss',
                                            'val' => '4'
                                          },
                                          {
                                            'name' => 'BRIG_PACK_S',
                                            'mnemo' => 's',
                                            'val' => '5'
                                          },
                                          {
                                            'name' => 'BRIG_PACK_P',
                                            'mnemo' => 'p',
                                            'val' => '6'
                                          },
                                          {
                                            'val' => '7',
                                            'mnemo' => 'pp_sat',
                                            'name' => 'BRIG_PACK_PPSAT'
                                          },
                                          {
                                            'mnemo' => 'ps_sat',
                                            'val' => '8',
                                            'name' => 'BRIG_PACK_PSSAT'
                                          },
                                          {
                                            'val' => '9',
                                            'mnemo' => 'sp_sat',
                                            'name' => 'BRIG_PACK_SPSAT'
                                          },
                                          {
                                            'val' => '10',
                                            'mnemo' => 'ss_sat',
                                            'name' => 'BRIG_PACK_SSSAT'
                                          },
                                          {
                                            'mnemo' => 's_sat',
                                            'val' => '11',
                                            'name' => 'BRIG_PACK_SSAT'
                                          },
                                          {
                                            'mnemo' => 'p_sat',
                                            'val' => '12',
                                            'name' => 'BRIG_PACK_PSAT'
                                          }
                                        ],
                           'tdcaption' => 'Packing',
                           'mnemo_token' => '_EMPacking',
                           'mnemo#calcState' => 'done',
                           'name' => 'BrigPack',
                           'mnemo#deps' => [],
                           'mnemo' => sub { "DUMMY" }
                         },
           'BrigControlDirective' => {
                                       'entries' => [
                                                      {
                                                        'name' => 'BRIG_CONTROL_NONE',
                                                        'mnemo' => 'none',
                                                        'val' => '0',
                                                        'skip' => 'true'
                                                      },
                                                      {
                                                        'val' => '1',
                                                        'mnemo' => 'enablebreakexceptions',
                                                        'name' => 'BRIG_CONTROL_ENABLEBREAKEXCEPTIONS'
                                                      },
                                                      {
                                                        'name' => 'BRIG_CONTROL_ENABLEDETECTEXCEPTIONS',
                                                        'mnemo' => 'enabledetectexceptions',
                                                        'val' => '2'
                                                      },
                                                      {
                                                        'val' => '3',
                                                        'mnemo' => 'maxdynamicgroupsize',
                                                        'name' => 'BRIG_CONTROL_MAXDYNAMICGROUPSIZE'
                                                      },
                                                      {
                                                        'name' => 'BRIG_CONTROL_MAXFLATGRIDSIZE',
                                                        'mnemo' => 'maxflatgridsize',
                                                        'val' => '4'
                                                      },
                                                      {
                                                        'name' => 'BRIG_CONTROL_MAXFLATWORKGROUPSIZE',
                                                        'mnemo' => 'maxflatworkgroupsize',
                                                        'val' => '5'
                                                      },
                                                      {
                                                        'mnemo' => 'requestedworkgroupspercu',
                                                        'val' => '6',
                                                        'name' => 'BRIG_CONTROL_REQUESTEDWORKGROUPSPERCU'
                                                      },
                                                      {
                                                        'mnemo' => 'requireddim',
                                                        'val' => '7',
                                                        'name' => 'BRIG_CONTROL_REQUIREDDIM'
                                                      },
                                                      {
                                                        'name' => 'BRIG_CONTROL_REQUIREDGRIDSIZE',
                                                        'mnemo' => 'requiredgridsize',
                                                        'val' => '8'
                                                      },
                                                      {
                                                        'name' => 'BRIG_CONTROL_REQUIREDWORKGROUPSIZE',
                                                        'mnemo' => 'requiredworkgroupsize',
                                                        'val' => '9'
                                                      },
                                                      {
                                                        'mnemo' => 'requirenopartialworkgroups',
                                                        'val' => '10',
                                                        'name' => 'BRIG_CONTROL_REQUIRENOPARTIALWORKGROUPS'
                                                      }
                                                    ],
                                       'mnemo_token' => 'EControl',
                                       'mnemo#calcState' => 'done',
                                       'name' => 'BrigControlDirective',
                                       'mnemo#deps' => [],
                                       'mnemo' => sub { "DUMMY" }
                                     },
           'BrigSamplerQuery' => {
                                   'mnemo#deps' => [],
                                   'name' => 'BrigSamplerQuery',
                                   'mnemo' => sub { "DUMMY" },
                                   'entries' => [
                                                  {
                                                    'name' => 'BRIG_SAMPLER_QUERY_ADDRESSING',
                                                    'val' => '0',
                                                    'mnemo' => 'addressing'
                                                  },
                                                  {
                                                    'name' => 'BRIG_SAMPLER_QUERY_COORD',
                                                    'val' => '1',
                                                    'mnemo' => 'coord'
                                                  },
                                                  {
                                                    'name' => 'BRIG_SAMPLER_QUERY_FILTER',
                                                    'val' => '2',
                                                    'mnemo' => 'filter'
                                                  }
                                                ],
                                   'mnemo_token' => '_EMSamplerQuery',
                                   'mnemo#calcState' => 'done'
                                 },
           'BrigImageGeometry' => {
                                    'entries' => [
                                                   {
                                                     'mnemo' => '1d',
                                                     'val' => '0',
                                                     'name' => 'BRIG_GEOMETRY_1D'
                                                   },
                                                   {
                                                     'name' => 'BRIG_GEOMETRY_2D',
                                                     'val' => '1',
                                                     'mnemo' => '2d'
                                                   },
                                                   {
                                                     'name' => 'BRIG_GEOMETRY_3D',
                                                     'val' => '2',
                                                     'mnemo' => '3d'
                                                   },
                                                   {
                                                     'name' => 'BRIG_GEOMETRY_1DA',
                                                     'val' => '3',
                                                     'mnemo' => '1da'
                                                   },
                                                   {
                                                     'mnemo' => '2da',
                                                     'val' => '4',
                                                     'name' => 'BRIG_GEOMETRY_2DA'
                                                   },
                                                   {
                                                     'name' => 'BRIG_GEOMETRY_1DB',
                                                     'val' => '5',
                                                     'mnemo' => '1db'
                                                   },
                                                   {
                                                     'name' => 'BRIG_GEOMETRY_2DDEPTH',
                                                     'val' => '6',
                                                     'mnemo' => '2ddepth'
                                                   },
                                                   {
                                                     'name' => 'BRIG_GEOMETRY_2DADEPTH',
                                                     'val' => '7',
                                                     'mnemo' => '2dadepth'
                                                   },
                                                   {
                                                     'name' => 'BRIG_GEOMETRY_UNKNOWN',
                                                     'mnemo' => ''
                                                   }
                                                 ],
                                    'tdcaption' => 'Geometry',
                                    'mnemo_token' => 'EImageGeometry',
                                    'mnemo#calcState' => 'done',
                                    'name' => 'BrigImageGeometry',
                                    'mnemo#deps' => [],
                                    'mnemo' => sub { "DUMMY" }
                                  },
           'BrigMemoryScope' => {
                                  'mnemo#calcState' => 'done',
                                  'mnemo_token' => '_EMMemoryScope',
                                  'entries' => [
                                                 {
                                                   'val' => '0',
                                                   'mnemo' => '',
                                                   'name' => 'BRIG_MEMORY_SCOPE_NONE'
                                                 },
                                                 {
                                                   'mnemo' => 'wv',
                                                   'val' => '1',
                                                   'name' => 'BRIG_MEMORY_SCOPE_WAVEFRONT'
                                                 },
                                                 {
                                                   'name' => 'BRIG_MEMORY_SCOPE_WORKGROUP',
                                                   'val' => '2',
                                                   'mnemo' => 'wg'
                                                 },
                                                 {
                                                   'val' => '3',
                                                   'mnemo' => 'cmp',
                                                   'name' => 'BRIG_MEMORY_SCOPE_COMPONENT'
                                                 },
                                                 {
                                                   'name' => 'BRIG_MEMORY_SCOPE_SYSTEM',
                                                   'val' => '4',
                                                   'mnemo' => 'sys'
                                                 },
                                                 {
                                                   'name' => 'BRIG_MEMORY_SCOPE_WORKITEM',
                                                   'val' => '5                    ',
                                                   'mnemo' => 'wi'
                                                 }
                                               ],
                                  'mnemo' => sub { "DUMMY" },
                                  'name' => 'BrigMemoryScope',
                                  'mnemo#deps' => []
                                },
           'BrigWidth' => {
                            'name' => 'BrigWidth',
                            'entries' => [
                                           {
                                             'name' => 'BRIG_WIDTH_NONE',
                                             'val' => '0'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_1',
                                             'val' => '1'
                                           },
                                           {
                                             'val' => '2',
                                             'name' => 'BRIG_WIDTH_2'
                                           },
                                           {
                                             'val' => '3',
                                             'name' => 'BRIG_WIDTH_4'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_8',
                                             'val' => '4'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_16',
                                             'val' => '5'
                                           },
                                           {
                                             'val' => '6',
                                             'name' => 'BRIG_WIDTH_32'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_64',
                                             'val' => '7'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_128',
                                             'val' => '8'
                                           },
                                           {
                                             'val' => '9',
                                             'name' => 'BRIG_WIDTH_256'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_512',
                                             'val' => '10'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_1024',
                                             'val' => '11'
                                           },
                                           {
                                             'val' => '12',
                                             'name' => 'BRIG_WIDTH_2048'
                                           },
                                           {
                                             'val' => '13',
                                             'name' => 'BRIG_WIDTH_4096'
                                           },
                                           {
                                             'val' => '14',
                                             'name' => 'BRIG_WIDTH_8192'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_16384',
                                             'val' => '15'
                                           },
                                           {
                                             'val' => '16',
                                             'name' => 'BRIG_WIDTH_32768'
                                           },
                                           {
                                             'val' => '17',
                                             'name' => 'BRIG_WIDTH_65536'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_131072',
                                             'val' => '18'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_262144',
                                             'val' => '19'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_524288',
                                             'val' => '20'
                                           },
                                           {
                                             'val' => '21',
                                             'name' => 'BRIG_WIDTH_1048576'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_2097152',
                                             'val' => '22'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_4194304',
                                             'val' => '23'
                                           },
                                           {
                                             'val' => '24',
                                             'name' => 'BRIG_WIDTH_8388608'
                                           },
                                           {
                                             'val' => '25',
                                             'name' => 'BRIG_WIDTH_16777216'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_33554432',
                                             'val' => '26'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_67108864',
                                             'val' => '27'
                                           },
                                           {
                                             'val' => '28',
                                             'name' => 'BRIG_WIDTH_134217728'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_268435456',
                                             'val' => '29'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_536870912',
                                             'val' => '30'
                                           },
                                           {
                                             'val' => '31',
                                             'name' => 'BRIG_WIDTH_1073741824'
                                           },
                                           {
                                             'name' => 'BRIG_WIDTH_2147483648',
                                             'val' => '32'
                                           },
                                           {
                                             'val' => '33',
                                             'name' => 'BRIG_WIDTH_WAVESIZE'
                                           },
                                           {
                                             'val' => '34',
                                             'name' => 'BRIG_WIDTH_ALL'
                                           }
                                         ]
                          },
           'BrigInstKinds' => {
                                'sizeof_default' => 'return -1',
                                'sizeof#deps' => [
                                                   'wname'
                                                 ],
                                'sizeof#calcState' => 'done',
                                'wname#calcState' => 'done',
                                'wname#deps' => [],
                                'wname' => sub { "DUMMY" },
                                'sizeof_proto' => 'int size_of_inst(unsigned arg)',
                                'entries' => [
                                               {
                                                 'name' => 'BRIG_INST_NONE',
                                                 'sizeof' => 'sizeof(BrigInstNone)',
                                                 'wname' => 'InstNone',
                                                 'val' => '0',
                                                 'skip' => 'true'
                                               },
                                               {
                                                 'name' => 'BRIG_INST_BASIC',
                                                 'sizeof' => 'sizeof(BrigInstBasic)',
                                                 'val' => '1',
                                                 'wname' => 'InstBasic'
                                               },
                                               {
                                                 'wname' => 'InstAddr',
                                                 'val' => '2',
                                                 'name' => 'BRIG_INST_ADDR',
                                                 'sizeof' => 'sizeof(BrigInstAddr)'
                                               },
                                               {
                                                 'name' => 'BRIG_INST_ATOMIC',
                                                 'sizeof' => 'sizeof(BrigInstAtomic)',
                                                 'val' => '3',
                                                 'wname' => 'InstAtomic'
                                               },
                                               {
                                                 'val' => '4',
                                                 'wname' => 'InstBr',
                                                 'name' => 'BRIG_INST_BR',
                                                 'sizeof' => 'sizeof(BrigInstBr)'
                                               },
                                               {
                                                 'val' => '5',
                                                 'wname' => 'InstCmp',
                                                 'sizeof' => 'sizeof(BrigInstCmp)',
                                                 'name' => 'BRIG_INST_CMP'
                                               },
                                               {
                                                 'wname' => 'InstCvt',
                                                 'val' => '6',
                                                 'name' => 'BRIG_INST_CVT',
                                                 'sizeof' => 'sizeof(BrigInstCvt)'
                                               },
                                               {
                                                 'name' => 'BRIG_INST_IMAGE',
                                                 'sizeof' => 'sizeof(BrigInstImage)',
                                                 'val' => '7',
                                                 'wname' => 'InstImage'
                                               },
                                               {
                                                 'sizeof' => 'sizeof(BrigInstLane)',
                                                 'name' => 'BRIG_INST_LANE',
                                                 'val' => '8',
                                                 'wname' => 'InstLane'
                                               },
                                               {
                                                 'wname' => 'InstMem',
                                                 'val' => '9',
                                                 'name' => 'BRIG_INST_MEM',
                                                 'sizeof' => 'sizeof(BrigInstMem)'
                                               },
                                               {
                                                 'val' => '10',
                                                 'wname' => 'InstMemFence',
                                                 'sizeof' => 'sizeof(BrigInstMemFence)',
                                                 'name' => 'BRIG_INST_MEM_FENCE'
                                               },
                                               {
                                                 'sizeof' => 'sizeof(BrigInstMod)',
                                                 'name' => 'BRIG_INST_MOD',
                                                 'wname' => 'InstMod',
                                                 'val' => '11'
                                               },
                                               {
                                                 'name' => 'BRIG_INST_QUERY_IMAGE',
                                                 'sizeof' => 'sizeof(BrigInstQueryImage)',
                                                 'val' => '12',
                                                 'wname' => 'InstQueryImage'
                                               },
                                               {
                                                 'sizeof' => 'sizeof(BrigInstQuerySampler)',
                                                 'name' => 'BRIG_INST_QUERY_SAMPLER',
                                                 'val' => '13',
                                                 'wname' => 'InstQuerySampler'
                                               },
                                               {
                                                 'sizeof' => 'sizeof(BrigInstQueue)',
                                                 'name' => 'BRIG_INST_QUEUE',
                                                 'val' => '14',
                                                 'wname' => 'InstQueue'
                                               },
                                               {
                                                 'name' => 'BRIG_INST_SEG',
                                                 'sizeof' => 'sizeof(BrigInstSeg)',
                                                 'wname' => 'InstSeg',
                                                 'val' => '15'
                                               },
                                               {
                                                 'name' => 'BRIG_INST_SEG_CVT',
                                                 'sizeof' => 'sizeof(BrigInstSegCvt)',
                                                 'val' => '16',
                                                 'wname' => 'InstSegCvt'
                                               },
                                               {
                                                 'sizeof' => 'sizeof(BrigInstSignal)',
                                                 'name' => 'BRIG_INST_SIGNAL',
                                                 'wname' => 'InstSignal',
                                                 'val' => '17'
                                               },
                                               {
                                                 'wname' => 'InstSourceType',
                                                 'val' => '18',
                                                 'sizeof' => 'sizeof(BrigInstSourceType)',
                                                 'name' => 'BRIG_INST_SOURCE_TYPE'
                                               }
                                             ],
                                'sizeof_switch' => 'true',
                                'name' => 'BrigInstKinds',
                                'sizeof' => sub { "DUMMY" }
                              },
           'BrigSymbolModifierMask' => {
                                         'entries' => [
                                                        {
                                                          'val' => '3',
                                                          'name' => 'BRIG_SYMBOL_LINKAGE'
                                                        },
                                                        {
                                                          'val' => '4',
                                                          'name' => 'BRIG_SYMBOL_DECLARATION'
                                                        },
                                                        {
                                                          'val' => '8',
                                                          'name' => 'BRIG_SYMBOL_CONST'
                                                        },
                                                        {
                                                          'val' => '16',
                                                          'name' => 'BRIG_SYMBOL_ARRAY'
                                                        },
                                                        {
                                                          'val' => '32',
                                                          'name' => 'BRIG_SYMBOL_FLEX_ARRAY'
                                                        }
                                                      ],
                                         'nodump' => 'true',
                                         'name' => 'BrigSymbolModifierMask'
                                       },
           'BrigAluModifierMask' => {
                                      'entries' => [
                                                     {
                                                       'val' => '15',
                                                       'name' => 'BRIG_ALU_ROUND'
                                                     },
                                                     {
                                                       'val' => '16',
                                                       'name' => 'BRIG_ALU_FTZ'
                                                     }
                                                   ],
                                      'name' => 'BrigAluModifierMask'
                                    },
           'BrigProfile' => {
                              'mnemo' => sub { "DUMMY" },
                              'mnemo#deps' => [],
                              'name' => 'BrigProfile',
                              'mnemo#calcState' => 'done',
                              'mnemo_token' => 'ETargetProfile',
                              'entries' => [
                                             {
                                               'name' => 'BRIG_PROFILE_BASE',
                                               'val' => '0',
                                               'mnemo' => '$base'
                                             },
                                             {
                                               'mnemo' => '$full',
                                               'val' => '1',
                                               'name' => 'BRIG_PROFILE_FULL'
                                             },
                                             {
                                               'val' => '2  ',
                                               'mnemo' => '$undef',
                                               'name' => 'BRIG_PROFILE_UNDEF',
                                               'skip' => 'true'
                                             }
                                           ]
                            },
           'BrigImageChannelOrder' => {
                                        'mnemo' => sub { "DUMMY" },
                                        'mnemo_context' => 'EImageOrderContext',
                                        'name' => 'BrigImageChannelOrder',
                                        'mnemo#deps' => [],
                                        'mnemo#calcState' => 'done',
                                        'mnemo_token' => 'EImageOrder',
                                        'entries' => [
                                                       {
                                                         'mnemo' => 'a',
                                                         'val' => '0',
                                                         'name' => 'BRIG_CHANNEL_ORDER_A'
                                                       },
                                                       {
                                                         'name' => 'BRIG_CHANNEL_ORDER_R',
                                                         'mnemo' => 'r',
                                                         'val' => '1'
                                                       },
                                                       {
                                                         'name' => 'BRIG_CHANNEL_ORDER_RX',
                                                         'val' => '2',
                                                         'mnemo' => 'rx'
                                                       },
                                                       {
                                                         'mnemo' => 'rg',
                                                         'val' => '3',
                                                         'name' => 'BRIG_CHANNEL_ORDER_RG'
                                                       },
                                                       {
                                                         'name' => 'BRIG_CHANNEL_ORDER_RGX',
                                                         'val' => '4',
                                                         'mnemo' => 'rgx'
                                                       },
                                                       {
                                                         'val' => '5',
                                                         'mnemo' => 'ra',
                                                         'name' => 'BRIG_CHANNEL_ORDER_RA'
                                                       },
                                                       {
                                                         'val' => '6',
                                                         'mnemo' => 'rgb',
                                                         'name' => 'BRIG_CHANNEL_ORDER_RGB'
                                                       },
                                                       {
                                                         'mnemo' => 'rgbx',
                                                         'val' => '7',
                                                         'name' => 'BRIG_CHANNEL_ORDER_RGBX'
                                                       },
                                                       {
                                                         'name' => 'BRIG_CHANNEL_ORDER_RGBA',
                                                         'val' => '8',
                                                         'mnemo' => 'rgba'
                                                       },
                                                       {
                                                         'name' => 'BRIG_CHANNEL_ORDER_BGRA',
                                                         'val' => '9',
                                                         'mnemo' => 'bgra'
                                                       },
                                                       {
                                                         'val' => '10',
                                                         'mnemo' => 'argb',
                                                         'name' => 'BRIG_CHANNEL_ORDER_ARGB'
                                                       },
                                                       {
                                                         'val' => '11',
                                                         'mnemo' => 'abgr',
                                                         'name' => 'BRIG_CHANNEL_ORDER_ABGR'
                                                       },
                                                       {
                                                         'name' => 'BRIG_CHANNEL_ORDER_SRGB',
                                                         'mnemo' => 'srgb',
                                                         'val' => '12'
                                                       },
                                                       {
                                                         'name' => 'BRIG_CHANNEL_ORDER_SRGBX',
                                                         'mnemo' => 'srgbx',
                                                         'val' => '13'
                                                       },
                                                       {
                                                         'name' => 'BRIG_CHANNEL_ORDER_SRGBA',
                                                         'val' => '14',
                                                         'mnemo' => 'srgba'
                                                       },
                                                       {
                                                         'val' => '15',
                                                         'mnemo' => 'sbgra',
                                                         'name' => 'BRIG_CHANNEL_ORDER_SBGRA'
                                                       },
                                                       {
                                                         'val' => '16',
                                                         'mnemo' => 'intensity',
                                                         'name' => 'BRIG_CHANNEL_ORDER_INTENSITY'
                                                       },
                                                       {
                                                         'val' => '17',
                                                         'mnemo' => 'luminance',
                                                         'name' => 'BRIG_CHANNEL_ORDER_LUMINANCE'
                                                       },
                                                       {
                                                         'name' => 'BRIG_CHANNEL_ORDER_DEPTH',
                                                         'val' => '18',
                                                         'mnemo' => 'depth'
                                                       },
                                                       {
                                                         'name' => 'BRIG_CHANNEL_ORDER_DEPTH_STENCIL',
                                                         'val' => '19',
                                                         'mnemo' => 'depth_stencil'
                                                       },
                                                       {
                                                         'name' => 'BRIG_CHANNEL_ORDER_UNKNOWN',
                                                         'mnemo' => ''
                                                       }
                                                     ]
                                      },
           'BrigImageQuery' => {
                                 'name' => 'BrigImageQuery',
                                 'mnemo#deps' => [],
                                 'mnemo' => sub { "DUMMY" },
                                 'entries' => [
                                                {
                                                  'mnemo' => 'width',
                                                  'val' => '0',
                                                  'name' => 'BRIG_IMAGE_QUERY_WIDTH'
                                                },
                                                {
                                                  'mnemo' => 'height',
                                                  'val' => '1',
                                                  'name' => 'BRIG_IMAGE_QUERY_HEIGHT'
                                                },
                                                {
                                                  'mnemo' => 'depth',
                                                  'val' => '2',
                                                  'name' => 'BRIG_IMAGE_QUERY_DEPTH'
                                                },
                                                {
                                                  'name' => 'BRIG_IMAGE_QUERY_ARRAY',
                                                  'mnemo' => 'array',
                                                  'val' => '3'
                                                },
                                                {
                                                  'mnemo' => 'channelorder',
                                                  'val' => '4',
                                                  'name' => 'BRIG_IMAGE_QUERY_CHANNELORDER'
                                                },
                                                {
                                                  'mnemo' => 'channeltype',
                                                  'val' => '5',
                                                  'name' => 'BRIG_IMAGE_QUERY_CHANNELTYPE'
                                                }
                                              ],
                                 'mnemo#calcState' => 'done'
                               },
           'BrigVersion' => {
                              'entries' => [
                                             {
                                               'val' => '0',
                                               'name' => 'BRIG_VERSION_HSAIL_MAJOR'
                                             },
                                             {
                                               'name' => 'BRIG_VERSION_HSAIL_MINOR',
                                               'val' => '20140227'
                                             },
                                             {
                                               'name' => 'BRIG_VERSION_BRIG_MAJOR',
                                               'val' => '0'
                                             },
                                             {
                                               'val' => '20140227',
                                               'name' => 'BRIG_VERSION_BRIG_MINOR'
                                             }
                                           ],
                              'nodump' => 'true',
                              'nowrap' => 'true',
                              'name' => 'BrigVersion'
                            },
           'BrigSamplerAddressing' => {
                                        'mnemo#deps' => [],
                                        'name' => 'BrigSamplerAddressing',
                                        'mnemo' => sub { "DUMMY" },
                                        'entries' => [
                                                       {
                                                         'name' => 'BRIG_ADDRESSING_UNDEFINED',
                                                         'mnemo' => 'undefined',
                                                         'val' => '0'
                                                       },
                                                       {
                                                         'mnemo' => 'clamp_to_edge',
                                                         'val' => '1',
                                                         'name' => 'BRIG_ADDRESSING_CLAMP_TO_EDGE'
                                                       },
                                                       {
                                                         'name' => 'BRIG_ADDRESSING_CLAMP_TO_BORDER',
                                                         'mnemo' => 'clamp_to_border',
                                                         'val' => '2'
                                                       },
                                                       {
                                                         'mnemo' => 'repeat',
                                                         'val' => '3',
                                                         'name' => 'BRIG_ADDRESSING_REPEAT'
                                                       },
                                                       {
                                                         'name' => 'BRIG_ADDRESSING_MIRRORED_REPEAT',
                                                         'val' => '4',
                                                         'mnemo' => 'mirrored_repeat'
                                                       }
                                                     ],
                                        'mnemo_token' => 'ESamplerAddressingMode',
                                        'mnemo#calcState' => 'done'
                                      },
           'BrigPackedTypeBits' => {
                                     'name' => 'BrigPackedTypeBits',
                                     'nodump' => 'true',
                                     'entries' => [
                                                    {
                                                      'val' => '5',
                                                      'name' => 'BRIG_TYPE_PACK_SHIFT'
                                                    },
                                                    {
                                                      'name' => 'BRIG_TYPE_BASE_MASK',
                                                      'val' => '(1 << BRIG_TYPE_PACK_SHIFT) - 1'
                                                    },
                                                    {
                                                      'name' => 'BRIG_TYPE_PACK_MASK',
                                                      'val' => '3 << BRIG_TYPE_PACK_SHIFT'
                                                    },
                                                    {
                                                      'name' => 'BRIG_TYPE_PACK_NONE',
                                                      'val' => '0 << BRIG_TYPE_PACK_SHIFT'
                                                    },
                                                    {
                                                      'val' => '1 << BRIG_TYPE_PACK_SHIFT',
                                                      'name' => 'BRIG_TYPE_PACK_32'
                                                    },
                                                    {
                                                      'name' => 'BRIG_TYPE_PACK_64',
                                                      'val' => '2 << BRIG_TYPE_PACK_SHIFT'
                                                    },
                                                    {
                                                      'val' => '3 << BRIG_TYPE_PACK_SHIFT',
                                                      'name' => 'BRIG_TYPE_PACK_128'
                                                    }
                                                  ]
                                   },
           'BrigAlignment' => {
                                'entries' => [
                                               {
                                                 'name' => 'BRIG_ALIGNMENT_NONE',
                                                 'val' => '0'
                                               },
                                               {
                                                 'val' => '1',
                                                 'name' => 'BRIG_ALIGNMENT_1'
                                               },
                                               {
                                                 'name' => 'BRIG_ALIGNMENT_2',
                                                 'val' => '2'
                                               },
                                               {
                                                 'val' => '3',
                                                 'name' => 'BRIG_ALIGNMENT_4'
                                               },
                                               {
                                                 'name' => 'BRIG_ALIGNMENT_8',
                                                 'val' => '4'
                                               },
                                               {
                                                 'name' => 'BRIG_ALIGNMENT_16',
                                                 'val' => '5'
                                               },
                                               {
                                                 'val' => '6',
                                                 'name' => 'BRIG_ALIGNMENT_32'
                                               },
                                               {
                                                 'val' => '7',
                                                 'name' => 'BRIG_ALIGNMENT_64'
                                               },
                                               {
                                                 'val' => '8',
                                                 'name' => 'BRIG_ALIGNMENT_128'
                                               },
                                               {
                                                 'name' => 'BRIG_ALIGNMENT_256',
                                                 'val' => '9'
                                               },
                                               {
                                                 'name' => 'BRIG_ALIGNMENT_LAST',
                                                 'skip' => 'true'
                                               },
                                               {
                                                 'skip' => 'true',
                                                 'name' => 'BRIG_ALIGNMENT_MAX',
                                                 'val' => 'BRIG_ALIGNMENT_LAST - 1 '
                                               }
                                             ],
                                'name' => 'BrigAlignment'
                              },
           'BrigCompareOperation' => {
                                       'mnemo' => sub { "DUMMY" },
                                       'mnemo#deps' => [],
                                       'name' => 'BrigCompareOperation',
                                       'tdcaption' => 'Comparison Operators',
                                       'mnemo#calcState' => 'done',
                                       'mnemo_token' => '_EMCompare',
                                       'entries' => [
                                                      {
                                                        'mnemo' => 'eq',
                                                        'val' => '0',
                                                        'name' => 'BRIG_COMPARE_EQ'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_NE',
                                                        'mnemo' => 'ne',
                                                        'val' => '1'
                                                      },
                                                      {
                                                        'val' => '2',
                                                        'mnemo' => 'lt',
                                                        'name' => 'BRIG_COMPARE_LT'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_LE',
                                                        'val' => '3',
                                                        'mnemo' => 'le'
                                                      },
                                                      {
                                                        'val' => '4',
                                                        'mnemo' => 'gt',
                                                        'name' => 'BRIG_COMPARE_GT'
                                                      },
                                                      {
                                                        'val' => '5',
                                                        'mnemo' => 'ge',
                                                        'name' => 'BRIG_COMPARE_GE'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_EQU',
                                                        'mnemo' => 'equ',
                                                        'val' => '6'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_NEU',
                                                        'mnemo' => 'neu',
                                                        'val' => '7'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_LTU',
                                                        'val' => '8',
                                                        'mnemo' => 'ltu'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_LEU',
                                                        'mnemo' => 'leu',
                                                        'val' => '9'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_GTU',
                                                        'mnemo' => 'gtu',
                                                        'val' => '10'
                                                      },
                                                      {
                                                        'val' => '11',
                                                        'mnemo' => 'geu',
                                                        'name' => 'BRIG_COMPARE_GEU'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_NUM',
                                                        'mnemo' => 'num',
                                                        'val' => '12'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_NAN',
                                                        'mnemo' => 'nan',
                                                        'val' => '13'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_SEQ',
                                                        'mnemo' => 'seq',
                                                        'val' => '14'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_SNE',
                                                        'mnemo' => 'sne',
                                                        'val' => '15'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_SLT',
                                                        'mnemo' => 'slt',
                                                        'val' => '16'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_SLE',
                                                        'mnemo' => 'sle',
                                                        'val' => '17'
                                                      },
                                                      {
                                                        'val' => '18',
                                                        'mnemo' => 'sgt',
                                                        'name' => 'BRIG_COMPARE_SGT'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_SGE',
                                                        'mnemo' => 'sge',
                                                        'val' => '19'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_SGEU',
                                                        'mnemo' => 'sgeu',
                                                        'val' => '20'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_SEQU',
                                                        'val' => '21',
                                                        'mnemo' => 'sequ'
                                                      },
                                                      {
                                                        'val' => '22',
                                                        'mnemo' => 'sneu',
                                                        'name' => 'BRIG_COMPARE_SNEU'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_SLTU',
                                                        'val' => '23',
                                                        'mnemo' => 'sltu'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_SLEU',
                                                        'val' => '24',
                                                        'mnemo' => 'sleu'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_SNUM',
                                                        'val' => '25',
                                                        'mnemo' => 'snum'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_SNAN',
                                                        'val' => '26',
                                                        'mnemo' => 'snan'
                                                      },
                                                      {
                                                        'name' => 'BRIG_COMPARE_SGTU',
                                                        'mnemo' => 'sgtu',
                                                        'val' => '27'
                                                      }
                                                    ]
                                     },
           'BrigMachineModel' => {
                                   'mnemo#calcState' => 'done',
                                   'mnemo_token' => 'ETargetMachine',
                                   'entries' => [
                                                  {
                                                    'name' => 'BRIG_MACHINE_SMALL',
                                                    'val' => '0',
                                                    'mnemo' => '$small'
                                                  },
                                                  {
                                                    'name' => 'BRIG_MACHINE_LARGE',
                                                    'val' => '1',
                                                    'mnemo' => '$large'
                                                  },
                                                  {
                                                    'name' => 'BRIG_MACHINE_UNDEF',
                                                    'val' => '2  ',
                                                    'mnemo' => '$undef',
                                                    'skip' => 'true'
                                                  }
                                                ],
                                   'mnemo' => sub { "DUMMY" },
                                   'name' => 'BrigMachineModel',
                                   'mnemo#deps' => []
                                 },
           'BrigSegCvtModifierMask' => {
                                         'entries' => [
                                                        {
                                                          'val' => '1                         ',
                                                          'mnemo' => 'nonull',
                                                          'name' => 'BRIG_SEG_CVT_NONULL'
                                                        }
                                                      ],
                                         'name' => 'BrigSegCvtModifierMask'
                                       },
           'BrigExecuteableModifierMask' => {
                                              'nodump' => 'true',
                                              'entries' => [
                                                             {
                                                               'name' => 'BRIG_EXECUTABLE_LINKAGE',
                                                               'val' => '3'
                                                             },
                                                             {
                                                               'name' => 'BRIG_EXECUTABLE_DECLARATION',
                                                               'val' => '4'
                                                             }
                                                           ],
                                              'name' => 'BrigExecuteableModifierMask'
                                            },
           'BrigTypeX' => {
                            'length_switch' => 'true',
                            'dispatch_default' => 'return v.visitNone(type)',
                            'dispatch_switch' => 'true',
                            'entries' => [
                                           {
                                             'name' => 'BRIG_TYPE_NONE',
                                             'mnemo' => '',
                                             'val' => '0',
                                             'dispatch' => 'v.visitNone(type)',
                                             'length' => 0
                                           },
                                           {
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_U8> >()',
                                             'length' => '8',
                                             'name' => 'BRIG_TYPE_U8',
                                             'val' => '1',
                                             'mnemo' => 'u8',
                                             'ctype' => 'uint8_t'
                                           },
                                           {
                                             'name' => 'BRIG_TYPE_U16',
                                             'mnemo' => 'u16',
                                             'ctype' => 'uint16_t',
                                             'val' => '2',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_U16> >()',
                                             'length' => '16'
                                           },
                                           {
                                             'name' => 'BRIG_TYPE_U32',
                                             'ctype' => 'uint32_t',
                                             'mnemo' => 'u32',
                                             'val' => '3',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_U32> >()',
                                             'length' => '32'
                                           },
                                           {
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_U64> >()',
                                             'length' => '64',
                                             'name' => 'BRIG_TYPE_U64',
                                             'mnemo' => 'u64',
                                             'ctype' => 'uint64_t',
                                             'val' => '4'
                                           },
                                           {
                                             'name' => 'BRIG_TYPE_S8',
                                             'val' => '5',
                                             'mnemo' => 's8',
                                             'ctype' => 'int8_t',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_S8> >()',
                                             'length' => '8'
                                           },
                                           {
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_S16> >()',
                                             'length' => '16',
                                             'name' => 'BRIG_TYPE_S16',
                                             'mnemo' => 's16',
                                             'val' => '6',
                                             'ctype' => 'int16_t'
                                           },
                                           {
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_S32> >()',
                                             'length' => '32',
                                             'name' => 'BRIG_TYPE_S32',
                                             'val' => '7',
                                             'mnemo' => 's32',
                                             'ctype' => 'int32_t'
                                           },
                                           {
                                             'length' => '64',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_S64> >()',
                                             'mnemo' => 's64',
                                             'val' => '8',
                                             'ctype' => 'int64_t',
                                             'name' => 'BRIG_TYPE_S64'
                                           },
                                           {
                                             'mnemo' => 'f16',
                                             'ctype' => 'f16_t',
                                             'val' => '9',
                                             'name' => 'BRIG_TYPE_F16',
                                             'length' => '16',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_F16> >()'
                                           },
                                           {
                                             'ctype' => 'float',
                                             'mnemo' => 'f32',
                                             'val' => '10',
                                             'name' => 'BRIG_TYPE_F32',
                                             'length' => '32',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_F32> >()'
                                           },
                                           {
                                             'length' => '64',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_F64> >()',
                                             'mnemo' => 'f64',
                                             'ctype' => 'double',
                                             'val' => '11',
                                             'name' => 'BRIG_TYPE_F64'
                                           },
                                           {
                                             'length' => '1',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_B1> >()',
                                             'val' => '12',
                                             'mnemo' => 'b1',
                                             'ctype' => 'bool',
                                             'name' => 'BRIG_TYPE_B1'
                                           },
                                           {
                                             'mnemo' => 'b8',
                                             'val' => '13',
                                             'ctype' => 'uint8_t',
                                             'name' => 'BRIG_TYPE_B8',
                                             'length' => '8',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_B8> >()'
                                           },
                                           {
                                             'name' => 'BRIG_TYPE_B16',
                                             'mnemo' => 'b16',
                                             'ctype' => 'uint16_t',
                                             'val' => '14',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_B16> >()',
                                             'length' => '16'
                                           },
                                           {
                                             'val' => '15',
                                             'mnemo' => 'b32',
                                             'ctype' => 'uint32_t',
                                             'name' => 'BRIG_TYPE_B32',
                                             'length' => '32',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_B32> >()'
                                           },
                                           {
                                             'val' => '16',
                                             'mnemo' => 'b64',
                                             'ctype' => 'uint64_t',
                                             'name' => 'BRIG_TYPE_B64',
                                             'length' => '64',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_B64> >()'
                                           },
                                           {
                                             'length' => '128',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_B128> >()',
                                             'ctype' => 'b128_t',
                                             'mnemo' => 'b128',
                                             'val' => '17',
                                             'name' => 'BRIG_TYPE_B128'
                                           },
                                           {
                                             'dispatch' => 'v.visitNone(type)',
                                             'length' => 0,
                                             'name' => 'BRIG_TYPE_SAMP',
                                             'mnemo' => 'samp',
                                             'val' => '18'
                                           },
                                           {
                                             'name' => 'BRIG_TYPE_ROIMG',
                                             'mnemo' => 'roimg',
                                             'val' => '19',
                                             'dispatch' => 'v.visitNone(type)',
                                             'length' => 0
                                           },
                                           {
                                             'dispatch' => 'v.visitNone(type)',
                                             'length' => 0,
                                             'name' => 'BRIG_TYPE_WOIMG',
                                             'mnemo' => 'woimg',
                                             'val' => '20'
                                           },
                                           {
                                             'mnemo' => 'rwimg',
                                             'val' => '21',
                                             'name' => 'BRIG_TYPE_RWIMG',
                                             'length' => 0,
                                             'dispatch' => 'v.visitNone(type)'
                                           },
                                           {
                                             'dispatch' => 'v.visitNone(type)',
                                             'length' => '32',
                                             'name' => 'BRIG_TYPE_SIG32',
                                             'mnemo' => 'sig32',
                                             'val' => '22'
                                           },
                                           {
                                             'length' => '64',
                                             'dispatch' => 'v.visitNone(type)',
                                             'mnemo' => 'sig64',
                                             'val' => '23',
                                             'name' => 'BRIG_TYPE_SIG64'
                                           },
                                           {
                                             'val' => 'BRIG_TYPE_U8  | BRIG_TYPE_PACK_32',
                                             'mnemo' => 'u8x4',
                                             'ctype' => 'uint8_t',
                                             'name' => 'BRIG_TYPE_U8X4',
                                             'length' => 32,
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_U8X4> >()'
                                           },
                                           {
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_U8X8> >()',
                                             'length' => 64,
                                             'name' => 'BRIG_TYPE_U8X8',
                                             'ctype' => 'uint8_t',
                                             'mnemo' => 'u8x8',
                                             'val' => 'BRIG_TYPE_U8  | BRIG_TYPE_PACK_64'
                                           },
                                           {
                                             'mnemo' => 'u8x16',
                                             'val' => 'BRIG_TYPE_U8  | BRIG_TYPE_PACK_128',
                                             'ctype' => 'uint8_t',
                                             'name' => 'BRIG_TYPE_U8X16',
                                             'length' => 128,
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_U8X16> >()'
                                           },
                                           {
                                             'mnemo' => 'u16x2',
                                             'val' => 'BRIG_TYPE_U16 | BRIG_TYPE_PACK_32',
                                             'ctype' => 'uint16_t',
                                             'name' => 'BRIG_TYPE_U16X2',
                                             'length' => 32,
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_U16X2> >()'
                                           },
                                           {
                                             'length' => 64,
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_U16X4> >()',
                                             'mnemo' => 'u16x4',
                                             'ctype' => 'uint16_t',
                                             'val' => 'BRIG_TYPE_U16 | BRIG_TYPE_PACK_64',
                                             'name' => 'BRIG_TYPE_U16X4'
                                           },
                                           {
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_U16X8> >()',
                                             'length' => 128,
                                             'name' => 'BRIG_TYPE_U16X8',
                                             'val' => 'BRIG_TYPE_U16 | BRIG_TYPE_PACK_128',
                                             'mnemo' => 'u16x8',
                                             'ctype' => 'uint16_t'
                                           },
                                           {
                                             'length' => 64,
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_U32X2> >()',
                                             'mnemo' => 'u32x2',
                                             'val' => 'BRIG_TYPE_U32 | BRIG_TYPE_PACK_64',
                                             'ctype' => 'uint32_t',
                                             'name' => 'BRIG_TYPE_U32X2'
                                           },
                                           {
                                             'length' => 128,
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_U32X4> >()',
                                             'mnemo' => 'u32x4',
                                             'ctype' => 'uint32_t',
                                             'val' => 'BRIG_TYPE_U32 | BRIG_TYPE_PACK_128',
                                             'name' => 'BRIG_TYPE_U32X4'
                                           },
                                           {
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_U64X2> >()',
                                             'length' => 128,
                                             'name' => 'BRIG_TYPE_U64X2',
                                             'val' => 'BRIG_TYPE_U64 | BRIG_TYPE_PACK_128',
                                             'mnemo' => 'u64x2',
                                             'ctype' => 'uint64_t'
                                           },
                                           {
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_S8X4> >()',
                                             'length' => 32,
                                             'name' => 'BRIG_TYPE_S8X4',
                                             'mnemo' => 's8x4',
                                             'ctype' => 'int8_t',
                                             'val' => 'BRIG_TYPE_S8  | BRIG_TYPE_PACK_32'
                                           },
                                           {
                                             'name' => 'BRIG_TYPE_S8X8',
                                             'mnemo' => 's8x8',
                                             'val' => 'BRIG_TYPE_S8  | BRIG_TYPE_PACK_64',
                                             'ctype' => 'int8_t',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_S8X8> >()',
                                             'length' => 64
                                           },
                                           {
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_S8X16> >()',
                                             'length' => 128,
                                             'name' => 'BRIG_TYPE_S8X16',
                                             'mnemo' => 's8x16',
                                             'ctype' => 'int8_t',
                                             'val' => 'BRIG_TYPE_S8  | BRIG_TYPE_PACK_128'
                                           },
                                           {
                                             'mnemo' => 's16x2',
                                             'ctype' => 'int16_t',
                                             'val' => 'BRIG_TYPE_S16 | BRIG_TYPE_PACK_32',
                                             'name' => 'BRIG_TYPE_S16X2',
                                             'length' => 32,
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_S16X2> >()'
                                           },
                                           {
                                             'length' => 64,
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_S16X4> >()',
                                             'mnemo' => 's16x4',
                                             'ctype' => 'int16_t',
                                             'val' => 'BRIG_TYPE_S16 | BRIG_TYPE_PACK_64',
                                             'name' => 'BRIG_TYPE_S16X4'
                                           },
                                           {
                                             'ctype' => 'int16_t',
                                             'mnemo' => 's16x8',
                                             'val' => 'BRIG_TYPE_S16 | BRIG_TYPE_PACK_128',
                                             'name' => 'BRIG_TYPE_S16X8',
                                             'length' => 128,
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_S16X8> >()'
                                           },
                                           {
                                             'name' => 'BRIG_TYPE_S32X2',
                                             'mnemo' => 's32x2',
                                             'ctype' => 'int32_t',
                                             'val' => 'BRIG_TYPE_S32 | BRIG_TYPE_PACK_64',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_S32X2> >()',
                                             'length' => 64
                                           },
                                           {
                                             'length' => 128,
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_S32X4> >()',
                                             'mnemo' => 's32x4',
                                             'val' => 'BRIG_TYPE_S32 | BRIG_TYPE_PACK_128',
                                             'ctype' => 'int32_t',
                                             'name' => 'BRIG_TYPE_S32X4'
                                           },
                                           {
                                             'val' => 'BRIG_TYPE_S64 | BRIG_TYPE_PACK_128',
                                             'mnemo' => 's64x2',
                                             'ctype' => 'int64_t',
                                             'name' => 'BRIG_TYPE_S64X2',
                                             'length' => 128,
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_S64X2> >()'
                                           },
                                           {
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_F16X2> >()',
                                             'length' => 32,
                                             'name' => 'BRIG_TYPE_F16X2',
                                             'mnemo' => 'f16x2',
                                             'val' => 'BRIG_TYPE_F16 | BRIG_TYPE_PACK_32',
                                             'ctype' => 'f16_t'
                                           },
                                           {
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_F16X4> >()',
                                             'length' => 64,
                                             'name' => 'BRIG_TYPE_F16X4',
                                             'mnemo' => 'f16x4',
                                             'val' => 'BRIG_TYPE_F16 | BRIG_TYPE_PACK_64',
                                             'ctype' => 'f16_t'
                                           },
                                           {
                                             'mnemo' => 'f16x8',
                                             'ctype' => 'f16_t',
                                             'val' => 'BRIG_TYPE_F16 | BRIG_TYPE_PACK_128',
                                             'name' => 'BRIG_TYPE_F16X8',
                                             'length' => 128,
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_F16X8> >()'
                                           },
                                           {
                                             'name' => 'BRIG_TYPE_F32X2',
                                             'ctype' => 'float',
                                             'mnemo' => 'f32x2',
                                             'val' => 'BRIG_TYPE_F32 | BRIG_TYPE_PACK_64',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_F32X2> >()',
                                             'length' => 64
                                           },
                                           {
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_F32X4> >()',
                                             'length' => 128,
                                             'name' => 'BRIG_TYPE_F32X4',
                                             'mnemo' => 'f32x4',
                                             'val' => 'BRIG_TYPE_F32 | BRIG_TYPE_PACK_128',
                                             'ctype' => 'float'
                                           },
                                           {
                                             'name' => 'BRIG_TYPE_F64X2',
                                             'val' => 'BRIG_TYPE_F64 | BRIG_TYPE_PACK_128',
                                             'mnemo' => 'f64x2',
                                             'ctype' => 'double',
                                             'dispatch' => 'v.template visit< BrigType<BRIG_TYPE_F64X2> >()',
                                             'length' => 128
                                           },
                                           {
                                             'skip' => 'true',
                                             'length' => 0,
                                             'dispatch' => 'v.visitNone(type)',
                                             'mnemo' => 'invalid',
                                             'val' => '-1 ',
                                             'name' => 'BRIG_TYPE_INVALID'
                                           }
                                         ],
                            'length_proto' => 'int brigtype_get_length(unsigned arg)',
                            'length#calcState' => 'done',
                            'dispatch' => sub { "DUMMY" },
                            'mnemo' => sub { "DUMMY" },
                            'mnemo#deps' => [],
                            'name' => 'BrigTypeX',
                            'length#deps' => [],
                            'dispatch_incfile' => 'TemplateUtilities',
                            'mnemo#calcState' => 'done',
                            'length' => sub { "DUMMY" },
                            'dispatch#calcState' => 'done',
                            'dispatch#deps' => [],
                            'dispatch_proto' => 'template<typename RetType, typename Visitor>
RetType dispatchByType_gen(unsigned type, Visitor& v)',
                            'dispatch_arg' => 'type',
                            'mnemo_token' => '_EMType',
                            'length_default' => 'return 0'
                          },
           'BrigRound' => {
                            'mnemo' => 'true',
                            'name' => 'BrigRound',
                            'mnemo_token' => '_EMRound',
                            'entries' => [
                                           {
                                             'name' => 'BRIG_ROUND_NONE',
                                             'val' => '0'
                                           },
                                           {
                                             'name' => 'BRIG_ROUND_FLOAT_NEAR_EVEN',
                                             'val' => '1',
                                             'mnemo' => 'near'
                                           },
                                           {
                                             'name' => 'BRIG_ROUND_FLOAT_ZERO',
                                             'mnemo' => 'zero',
                                             'val' => '2'
                                           },
                                           {
                                             'name' => 'BRIG_ROUND_FLOAT_PLUS_INFINITY',
                                             'mnemo' => 'up',
                                             'val' => '3'
                                           },
                                           {
                                             'name' => 'BRIG_ROUND_FLOAT_MINUS_INFINITY',
                                             'mnemo' => 'down',
                                             'val' => '4'
                                           },
                                           {
                                             'name' => 'BRIG_ROUND_INTEGER_NEAR_EVEN',
                                             'mnemo' => 'neari',
                                             'val' => '5'
                                           },
                                           {
                                             'mnemo' => 'zeroi',
                                             'val' => '6',
                                             'name' => 'BRIG_ROUND_INTEGER_ZERO'
                                           },
                                           {
                                             'mnemo' => 'upi',
                                             'val' => '7',
                                             'name' => 'BRIG_ROUND_INTEGER_PLUS_INFINITY'
                                           },
                                           {
                                             'mnemo' => 'downi',
                                             'val' => '8',
                                             'name' => 'BRIG_ROUND_INTEGER_MINUS_INFINITY'
                                           },
                                           {
                                             'name' => 'BRIG_ROUND_INTEGER_NEAR_EVEN_SAT',
                                             'val' => '9',
                                             'mnemo' => 'neari_sat'
                                           },
                                           {
                                             'name' => 'BRIG_ROUND_INTEGER_ZERO_SAT',
                                             'mnemo' => 'zeroi_sat',
                                             'val' => '10'
                                           },
                                           {
                                             'name' => 'BRIG_ROUND_INTEGER_PLUS_INFINITY_SAT',
                                             'val' => '11',
                                             'mnemo' => 'upi_sat'
                                           },
                                           {
                                             'val' => '12     ',
                                             'mnemo' => 'downi_sat',
                                             'name' => 'BRIG_ROUND_INTEGER_MINUS_INFINITY_SAT'
                                           }
                                         ],
                            'mnemo_fn' => 'round2str'
                          },
           'BrigLinkage' => {
                              'mnemo#calcState' => 'done',
                              'entries' => [
                                             {
                                               'name' => 'BRIG_LINKAGE_NONE',
                                               'mnemo' => '',
                                               'val' => '0'
                                             },
                                             {
                                               'name' => 'BRIG_LINKAGE_STATIC',
                                               'mnemo' => 'static',
                                               'val' => '1'
                                             },
                                             {
                                               'name' => 'BRIG_LINKAGE_EXTERN',
                                               'val' => '2',
                                               'mnemo' => 'extern'
                                             }
                                           ],
                              'mnemo' => sub { "DUMMY" },
                              'mnemo#deps' => [],
                              'name' => 'BrigLinkage'
                            },
           'BrigImageChannelType' => {
                                       'mnemo#deps' => [],
                                       'name' => 'BrigImageChannelType',
                                       'mnemo' => sub { "DUMMY" },
                                       'entries' => [
                                                      {
                                                        'val' => '0',
                                                        'mnemo' => 'snorm_int8',
                                                        'name' => 'BRIG_CHANNEL_TYPE_SNORM_INT8'
                                                      },
                                                      {
                                                        'name' => 'BRIG_CHANNEL_TYPE_SNORM_INT16',
                                                        'mnemo' => 'snorm_int16',
                                                        'val' => '1'
                                                      },
                                                      {
                                                        'name' => 'BRIG_CHANNEL_TYPE_UNORM_INT8',
                                                        'mnemo' => 'unorm_int8',
                                                        'val' => '2'
                                                      },
                                                      {
                                                        'name' => 'BRIG_CHANNEL_TYPE_UNORM_INT16',
                                                        'val' => '3',
                                                        'mnemo' => 'unorm_int16'
                                                      },
                                                      {
                                                        'val' => '4',
                                                        'mnemo' => 'unorm_int24',
                                                        'name' => 'BRIG_CHANNEL_TYPE_UNORM_INT24'
                                                      },
                                                      {
                                                        'name' => 'BRIG_CHANNEL_TYPE_UNORM_SHORT_555',
                                                        'val' => '5',
                                                        'mnemo' => 'unorm_short_555'
                                                      },
                                                      {
                                                        'val' => '6',
                                                        'mnemo' => 'unorm_short_565',
                                                        'name' => 'BRIG_CHANNEL_TYPE_UNORM_SHORT_565'
                                                      },
                                                      {
                                                        'name' => 'BRIG_CHANNEL_TYPE_UNORM_SHORT_101010',
                                                        'mnemo' => 'unorm_short_101010',
                                                        'val' => '7'
                                                      },
                                                      {
                                                        'name' => 'BRIG_CHANNEL_TYPE_SIGNED_INT8',
                                                        'mnemo' => 'signed_int8',
                                                        'val' => '8'
                                                      },
                                                      {
                                                        'val' => '9',
                                                        'mnemo' => 'signed_int16',
                                                        'name' => 'BRIG_CHANNEL_TYPE_SIGNED_INT16'
                                                      },
                                                      {
                                                        'name' => 'BRIG_CHANNEL_TYPE_SIGNED_INT32',
                                                        'val' => '10',
                                                        'mnemo' => 'signed_int32'
                                                      },
                                                      {
                                                        'mnemo' => 'unsigned_int8',
                                                        'val' => '11',
                                                        'name' => 'BRIG_CHANNEL_TYPE_UNSIGNED_INT8'
                                                      },
                                                      {
                                                        'val' => '12',
                                                        'mnemo' => 'unsigned_int16',
                                                        'name' => 'BRIG_CHANNEL_TYPE_UNSIGNED_INT16'
                                                      },
                                                      {
                                                        'val' => '13',
                                                        'mnemo' => 'unsigned_int32',
                                                        'name' => 'BRIG_CHANNEL_TYPE_UNSIGNED_INT32'
                                                      },
                                                      {
                                                        'mnemo' => 'half_float',
                                                        'val' => '14',
                                                        'name' => 'BRIG_CHANNEL_TYPE_HALF_FLOAT'
                                                      },
                                                      {
                                                        'name' => 'BRIG_CHANNEL_TYPE_FLOAT',
                                                        'val' => '15',
                                                        'mnemo' => 'float'
                                                      },
                                                      {
                                                        'name' => 'BRIG_CHANNEL_TYPE_UNKNOWN',
                                                        'mnemo' => ''
                                                      }
                                                    ],
                                       'mnemo_token' => 'EImageFormat',
                                       'mnemo#calcState' => 'done'
                                     }
         };
