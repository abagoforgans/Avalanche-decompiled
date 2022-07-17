contract main {




// =====================  Runtime code  =====================


const GAME_ADMIN = sha3(336492626609784167942478)

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
address stor101;
array of struct stor102;
mapping of uint256 stor103;
array of uint256 balanceOf;
mapping of address sub_b8cae950;
array of uint256 stor106;
mapping of uint256 stor107;
address stor108;
mapping of uint256 stor336492626609784167942478;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function sub_b8cae950(?) payable {
    require calldata.size - 4 >= 32
    return address(sub_b8cae950[arg1])
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_c5b365d3(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
            revert with 0, 'Not admin'
    stor108 = arg1
}

function allowToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
            revert with 0, 'Not admin'
    if not stor103[address(arg1)]:
        stor102.length++
        stor102[stor102.length].field_0 = arg1
        stor102[stor102.length].field_160 = 0
        stor103[address(arg1)] = stor102.length
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not stor103[address(msg.sender)]:
        revert with 0, 'Token ID not listed'
    if not stor107[arg3]:
        revert with 0, 'Token ID not listed'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_c39fc42c(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
            revert with 0, 'Not admin'
    address(sub_b8cae950[arg2]) = arg1
    if not balanceOf[address(arg1)][1][arg2]:
        balanceOf[address(arg1)]++
        balanceOf[address(arg1)][balanceOf[address(arg1)]] = arg2
        balanceOf[address(arg1)][1][arg2] = balanceOf[address(arg1)]
    if not stor107[arg2]:
        stor106.length++
        stor106[stor106.length] = arg2
        stor107[arg2] = stor106.length
    emit 0xefe6a80b: arg2, arg1
}

function disallowToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
            revert with 0, 'Not admin'
    if stor103[address(arg1)]:
        require stor102.length - 1 < stor102.length
        require stor103[address(arg1)] - 1 < stor102.length
        stor102[stor103[address(arg1)]].field_0 = stor102[stor102.length].field_0
        stor103[stor102[stor102.length].field_0] = stor103[address(arg1)]
        require stor102.length
        stor102[stor102.length].field_0 = 0
        stor102.length--
        stor103[address(arg1)] = 0
}

function sub_a26ca378(?) payable {
    require calldata.size - 4 >= 32
    uint256(sub_b8cae950[arg1]) = msg.sender or Mask(96, 160, uint256(sub_b8cae950[arg1]))
    if not balanceOf[msg.sender][1][arg1]:
        balanceOf[msg.sender]++
        balanceOf[msg.sender][balanceOf[msg.sender]] = arg1
        balanceOf[msg.sender][1][arg1] = balanceOf[msg.sender]
    if not stor107[arg1]:
        stor106.length++
        stor106[stor106.length] = arg1
        stor107[arg1] = stor106.length
    require ext_code.size(stor101)
    call stor101.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xefe6a80b: arg1, msg.sender
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_8bafe221(?) payable {
    require balanceOf[address(msg.sender)] <= test266151307()
    if balanceOf[address(msg.sender)]:
        mem[128 len 32 * balanceOf[address(msg.sender)]] = call.data[calldata.size len 32 * balanceOf[address(msg.sender)]]
    idx = 0
    while idx < balanceOf[address(msg.sender)]:
        if idx >= balanceOf[msg.sender]:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * balanceOf[address(msg.sender)]) + 230 len 30]
        mem[0] = sha3(msg.sender, 104)
        require idx < balanceOf[address(msg.sender)]
        mem[(32 * idx) + 128] = balanceOf[msg.sender][idx]
        idx = idx + 1
        continue 
    mem[(32 * balanceOf[address(msg.sender)]) + 192 len floor32(balanceOf[address(msg.sender)])] = mem[128 len floor32(balanceOf[address(msg.sender)])]
    return Array(len=balanceOf[address(msg.sender)], data=mem[128 len floor32(balanceOf[address(msg.sender)])], mem[(32 * balanceOf[address(msg.sender)]) + floor32(balanceOf[address(msg.sender)]) + 192 len (32 * balanceOf[address(msg.sender)]) - floor32(balanceOf[address(msg.sender)])]), 
}

function updateOnBurn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
            revert with 0, 'Not admin'
    address(sub_b8cae950[arg2]) = 0
    if balanceOf[address(arg1)][1][arg2]:
        require balanceOf[address(arg1)] - 1 < balanceOf[address(arg1)]
        require balanceOf[address(arg1)][1][arg2] - 1 < balanceOf[address(arg1)]
        balanceOf[address(arg1)][balanceOf[address(arg1)][1][arg2]] = balanceOf[address(arg1)][balanceOf[address(arg1)]]
        balanceOf[address(arg1)][1][balanceOf[address(arg1)][balanceOf[address(arg1)]]] = balanceOf[address(arg1)][1][arg2]
        require balanceOf[address(arg1)]
        balanceOf[address(arg1)][balanceOf[address(arg1)]] = 0
        balanceOf[address(arg1)]--
        balanceOf[address(arg1)][1][arg2] = 0
    if stor107[arg2]:
        require stor106.length - 1 < stor106.length
        require stor107[arg2] - 1 < stor106.length
        stor106[stor107[arg2]] = stor106[stor106.length]
        stor107[stor106[stor106.length]] = stor107[arg2]
        require stor106.length
        stor106[stor106.length] = 0
        stor106.length--
        stor107[arg2] = 0
}

function transferFromGarrison(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == address(sub_b8cae950[arg2])
    require stor107[arg2]
    address(sub_b8cae950[arg2]) = 0
    if balanceOf[msg.sender][1][arg2]:
        require balanceOf[msg.sender] - 1 < balanceOf[msg.sender]
        require balanceOf[msg.sender][1][arg2] - 1 < balanceOf[msg.sender]
        balanceOf[msg.sender][balanceOf[msg.sender][1][arg2]] = balanceOf[msg.sender][balanceOf[msg.sender]]
        balanceOf[msg.sender][1][balanceOf[msg.sender][balanceOf[msg.sender]]] = balanceOf[msg.sender][1][arg2]
        require balanceOf[msg.sender]
        balanceOf[msg.sender][balanceOf[msg.sender]] = 0
        balanceOf[msg.sender]--
        balanceOf[msg.sender][1][arg2] = 0
    if stor107[arg2]:
        require stor106.length - 1 < stor106.length
        require stor107[arg2] - 1 < stor106.length
        stor106[stor107[arg2]] = stor106[stor106.length]
        stor107[stor106[stor106.length]] = stor107[arg2]
        require stor106.length
        stor106[stor106.length] = 0
        stor106.length--
        stor107[arg2] = 0
    require ext_code.size(stor101)
    call stor101.0x42842e0e with:
         gas gas_remaining wei
        args this.address, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function restoreFromGarrison(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(sub_b8cae950[arg1])
    require stor107[arg1]
    require ext_code.size(stor101)
    staticcall stor101.0xaa3c6cfc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor101)
    staticcall stor101.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        revert with 0, 'Receiver has too many characters'
    address(sub_b8cae950[arg1]) = 0
    if balanceOf[msg.sender][1][arg1]:
        require balanceOf[msg.sender] - 1 < balanceOf[msg.sender]
        require balanceOf[msg.sender][1][arg1] - 1 < balanceOf[msg.sender]
        balanceOf[msg.sender][balanceOf[msg.sender][1][arg1]] = balanceOf[msg.sender][balanceOf[msg.sender]]
        balanceOf[msg.sender][1][balanceOf[msg.sender][balanceOf[msg.sender]]] = balanceOf[msg.sender][1][arg1]
        require balanceOf[msg.sender]
        balanceOf[msg.sender][balanceOf[msg.sender]] = 0
        balanceOf[msg.sender]--
        balanceOf[msg.sender][1][arg1] = 0
    if stor107[arg1]:
        require stor106.length - 1 < stor106.length
        require stor107[arg1] - 1 < stor106.length
        stor106[stor107[arg1]] = stor106[stor106.length]
        stor107[stor106[stor106.length]] = stor107[arg1]
        require stor106.length
        stor106[stor106.length] = 0
        stor106.length--
        stor107[arg1] = 0
    require ext_code.size(stor101)
    call stor101.0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swapWithGarrison(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    uint256(sub_b8cae950[arg1]) = msg.sender or Mask(96, 160, uint256(sub_b8cae950[arg1]))
    if not balanceOf[msg.sender][1][arg1]:
        balanceOf[msg.sender]++
        balanceOf[msg.sender][balanceOf[msg.sender]] = arg1
        balanceOf[msg.sender][1][arg1] = balanceOf[msg.sender]
    if not stor107[arg1]:
        stor106.length++
        stor106[stor106.length] = arg1
        stor107[arg1] = stor106.length
    require ext_code.size(stor101)
    call stor101.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xefe6a80b: arg1, msg.sender
    require msg.sender == address(sub_b8cae950[arg2])
    require stor107[arg2]
    require ext_code.size(stor101)
    staticcall stor101.0xaa3c6cfc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor101)
    staticcall stor101.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        revert with 0, 'Receiver has too many characters'
    address(sub_b8cae950[arg2]) = 0
    if balanceOf[msg.sender][1][arg2]:
        require balanceOf[msg.sender] - 1 < balanceOf[msg.sender]
        require balanceOf[msg.sender][1][arg2] - 1 < balanceOf[msg.sender]
        balanceOf[msg.sender][balanceOf[msg.sender][1][arg2]] = balanceOf[msg.sender][balanceOf[msg.sender]]
        balanceOf[msg.sender][1][balanceOf[msg.sender][balanceOf[msg.sender]]] = balanceOf[msg.sender][1][arg2]
        require balanceOf[msg.sender]
        balanceOf[msg.sender][balanceOf[msg.sender]] = 0
        balanceOf[msg.sender]--
        balanceOf[msg.sender][1][arg2] = 0
    if stor107[arg2]:
        require stor106.length - 1 < stor106.length
        require stor107[arg2] - 1 < stor106.length
        stor106[stor107[arg2]] = stor106[stor106.length]
        stor107[stor106[stor106.length]] = stor107[arg2]
        require stor106.length
        stor106[stor106.length] = 0
        stor106.length--
        stor107[arg2] = 0
    require ext_code.size(stor101)
    call stor101.0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if not uint8(stor0.field_8):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if not uint8(stor0.field_8):
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = msg.sender
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(msg.sender)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, msg.sender, msg.sender);
    stor101 = arg1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_6fa5e4ca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 105
        if address(sub_b8cae950[mem[(32 * idx) + 128]]) != msg.sender:
            revert with 0, 'Not owner'
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 128] = 0xdeabf3aa00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = 32
    mem[(32 * arg1.length) + 164] = arg1.length
    mem[(32 * arg1.length) + 196 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(64 * arg1.length) + 196] = 0
    require ext_code.size(stor108)
    staticcall stor108.getXpRewards(uint256[] arg1) with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _31 = mem[(32 * arg1.length) + 128 len 4], 0
    require mem[(32 * arg1.length) + 128 len 4], 0 <= 4294967296
    require mem[(32 * arg1.length) + 128 len 4], 0 + 32 <= return_data.size
    require mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], 0 + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], 0 + (32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], 0 + 128]) + 32 <= return_data.size
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], 0 + 128]
    _34 = mem[(32 * arg1.length) + _31 + 128]
    mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg1.length) + _31 + 128])] = mem[(32 * arg1.length) + _31 + 160 len floor32(mem[(32 * arg1.length) + _31 + 128])]
    mem[(32 * _34) + (32 * arg1.length) + ceil32(return_data.size) + 228 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * _34) + (64 * arg1.length) + ceil32(return_data.size) + 228] = 0
    require ext_code.size(stor108)
    call stor108.resetXp(uint256[] arg1) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _34) + (32 * arg1.length) + ceil32(return_data.size) + 160] = 0x99d2c2c400000000000000000000000000000000000000000000000000000000
    mem[(32 * _34) + (32 * arg1.length) + ceil32(return_data.size) + 164] = 64
    mem[(32 * _34) + (32 * arg1.length) + ceil32(return_data.size) + 228] = arg1.length
    mem[(32 * _34) + (32 * arg1.length) + ceil32(return_data.size) + 260 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(64 * arg1.length) + (32 * _34) + ceil32(return_data.size) + 260] = 0
    mem[(32 * _34) + (32 * arg1.length) + ceil32(return_data.size) + 196] = floor32(arg1.length) + 96
    mem[(32 * _34) + (32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 260] = mem[(32 * arg1.length) + ceil32(return_data.size) + 128]
    mem[(32 * _34) + (32 * arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 292 len floor32(mem[(32 * arg1.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg1.length) + ceil32(return_data.size) + 128])]
    require ext_code.size(stor101)
    call stor101.0x99d2c2c4 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=mem[(32 * _34) + (32 * arg1.length) + ceil32(return_data.size) + 260 len (32 * mem[(32 * arg1.length) + ceil32(return_data.size) + 128]) + floor32(arg1.length) + 32]), floor32(arg1.length) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
