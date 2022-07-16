contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
uint256 totalAllocPoint;
array of struct stor3;
mapping of uint256 stor4;
mapping of uint256 sub_217cd251;

function totalAllocPoint() {
    return totalAllocPoint
}

function sub_217cd251(?) {
    require calldata.size - 4 >= 32
    return sub_217cd251[arg1]
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_f0d1595f(?) {
    require calldata.size - 4 >= 64
    require roleAdmin[0][1][address(msg.sender)].field_0
    require ext_code.size(arg1)
    call arg1.dev(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addAddress(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require roleAdmin[0][1][address(msg.sender)].field_0
    if stor4[address(arg1)]:
        revert with 0, 'user exist'
    if not stor4[address(arg1)]:
        stor3.length++
        stor3[stor3.length].field_0 = arg1
        stor3[stor3.length].field_160 = 0
        stor4[address(arg1)] = stor3.length
    sub_217cd251[address(arg1)] = arg2
    if arg2 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg2
    emit AddUser(address(arg1), arg2);
}

function grantRole(bytes32 arg1, address arg2) {
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

function removeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require roleAdmin[0][1][address(msg.sender)].field_0
    if not stor4[address(arg1)]:
        revert with 0, 'user not exist'
    if stor4[address(arg1)]:
        require stor3.length - 1 < stor3.length
        require stor4[address(arg1)] - 1 < stor3.length
        stor3[stor4[address(arg1)]].field_0 = stor3[stor3.length].field_0
        stor4[stor3[stor3.length].field_0] = stor4[address(arg1)]
        require stor3.length
        stor3[stor3.length].field_0 = 0
        stor3.length--
        stor4[address(arg1)] = 0
    if sub_217cd251[address(arg1)] > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    totalAllocPoint -= sub_217cd251[address(arg1)]
    sub_217cd251[address(arg1)] = 0
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
    if not roleAdmin[0][1][address(arg1)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = arg1
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(arg1)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, arg1, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x77416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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

function revokeRole(bytes32 arg1, address arg2) {
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

function setAddress(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require roleAdmin[0][1][address(msg.sender)].field_0
    if not stor4[address(arg1)]:
        revert with 0, 'user not exist'
    if stor4[address(arg1)]:
        require stor3.length - 1 < stor3.length
        require stor4[address(arg1)] - 1 < stor3.length
        stor3[stor4[address(arg1)]].field_0 = stor3[stor3.length].field_0
        stor4[stor3[stor3.length].field_0] = stor4[address(arg1)]
        require stor3.length
        stor3[stor3.length].field_0 = 0
        stor3.length--
        stor4[address(arg1)] = 0
    if sub_217cd251[address(arg1)] > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    totalAllocPoint -= sub_217cd251[address(arg1)]
    sub_217cd251[address(arg1)] = 0
    require roleAdmin[0][1][address(msg.sender)].field_0
    if stor4[address(arg1)]:
        revert with 0, 'user exist'
    if not stor4[address(arg1)]:
        stor3.length++
        stor3[stor3.length].field_0 = arg1
        stor3[stor3.length].field_160 = 0
        stor4[address(arg1)] = stor3.length
    sub_217cd251[address(arg1)] = arg2
    if arg2 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg2
    emit AddUser(address(arg1), arg2);
}

function getUsers() {
    require stor3.length <= test266151307()
    if stor3.length:
        mem[128 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
    require stor3.length <= test266151307()
    mem[(32 * stor3.length) + 128] = stor3.length
    if stor3.length:
        mem[(32 * stor3.length) + 160 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
    idx = 0
    while idx < stor3.length:
        require idx < stor3.length
        mem[(32 * idx) + 128] = stor3[idx].field_0
        require idx < stor3.length
        mem[0] = stor3[idx].field_0
        mem[32] = 5
        require idx < mem[(32 * stor3.length) + 128]
        mem[(32 * idx) + (32 * stor3.length) + 160] = sub_217cd251[stor3[idx].field_0]
        idx = idx + 1
        continue 
    mem[(64 * stor3.length) + 160] = 64
    mem[(64 * stor3.length) + 224] = stor3.length
    mem[(64 * stor3.length) + 256 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
    mem[(64 * stor3.length) + 192] = (32 * stor3.length) + 96
    mem[(98 * stor3.length) + 256] = mem[(32 * stor3.length) + 128]
    mem[(98 * stor3.length) + 288 len floor32(mem[(32 * stor3.length) + 128])] = mem[(32 * stor3.length) + 160 len floor32(mem[(32 * stor3.length) + 128])]
    return memory
      from (64 * stor3.length) + 160
       len (32 * mem[(32 * stor3.length) + 128]) + (161 * stor3.length) + 128
}

function redeem(address arg1) {
    require calldata.size - 4 >= 32
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'balance is zero'
    require stor3.length <= test266151307()
    if not stor3.length:
        require stor3.length <= test266151307()
        mem[(32 * stor3.length) + 128] = stor3.length
        if not stor3.length:
            idx = 0
            while idx < stor3.length:
                require idx < stor3.length
                mem[(32 * idx) + 128] = stor3[idx].field_0
                require idx < stor3.length
                mem[0] = stor3[idx].field_0
                mem[32] = 5
                require idx < mem[(32 * stor3.length) + 128]
                mem[(32 * idx) + (32 * stor3.length) + 160] = sub_217cd251[stor3[idx].field_0]
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            s = 0
            while idx < stor3.length:
                require idx < mem[(32 * stor3.length) + 128]
                _218 = mem[(32 * idx) + (32 * stor3.length) + 160]
                if not ext_call.return_data[0]:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require idx < stor3.length
                    _250 = mem[(32 * idx) + 128]
                    mem[(64 * stor3.length) + 164] = mem[(32 * idx) + 140 len 20]
                    mem[(64 * stor3.length) + 196] = 0 / totalAllocPoint
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * stor3.length) + 164], 0 / totalAllocPoint
                    mem[(64 * stor3.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = _250
                    s = 0 / totalAllocPoint
                    continue 
                if mem[(32 * idx) + (32 * stor3.length) + 160] * ext_call.return_data[0] / ext_call.return_data[0] != mem[(32 * idx) + (32 * stor3.length) + 160]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * stor3.length) + 261 len 31]
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                require idx < stor3.length
                _266 = mem[(32 * idx) + 128]
                mem[(64 * stor3.length) + 164] = mem[(32 * idx) + 140 len 20]
                mem[(64 * stor3.length) + 196] = _218 * ext_call.return_data[0] / totalAllocPoint
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(64 * stor3.length) + 164], _218 * ext_call.return_data[0] / totalAllocPoint
                mem[(64 * stor3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = _266
                s = _218 * ext_call.return_data[0] / totalAllocPoint
                continue 
        else:
            mem[(32 * stor3.length) + 160 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
            idx = 0
            while idx < stor3.length:
                require idx < stor3.length
                mem[(32 * idx) + 128] = stor3[idx].field_0
                require idx < stor3.length
                mem[0] = stor3[idx].field_0
                mem[32] = 5
                require idx < mem[(32 * stor3.length) + 128]
                mem[(32 * idx) + (32 * stor3.length) + 160] = sub_217cd251[stor3[idx].field_0]
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            s = 0
            while idx < stor3.length:
                require idx < mem[(32 * stor3.length) + 128]
                _219 = mem[(32 * idx) + (32 * stor3.length) + 160]
                if not ext_call.return_data[0]:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require idx < stor3.length
                    _253 = mem[(32 * idx) + 128]
                    mem[(64 * stor3.length) + 164] = mem[(32 * idx) + 140 len 20]
                    mem[(64 * stor3.length) + 196] = 0 / totalAllocPoint
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * stor3.length) + 164], 0 / totalAllocPoint
                    mem[(64 * stor3.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = _253
                    s = 0 / totalAllocPoint
                    continue 
                if mem[(32 * idx) + (32 * stor3.length) + 160] * ext_call.return_data[0] / ext_call.return_data[0] != mem[(32 * idx) + (32 * stor3.length) + 160]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * stor3.length) + 261 len 31]
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                require idx < stor3.length
                _270 = mem[(32 * idx) + 128]
                mem[(64 * stor3.length) + 164] = mem[(32 * idx) + 140 len 20]
                mem[(64 * stor3.length) + 196] = _219 * ext_call.return_data[0] / totalAllocPoint
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(64 * stor3.length) + 164], _219 * ext_call.return_data[0] / totalAllocPoint
                mem[(64 * stor3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = _270
                s = _219 * ext_call.return_data[0] / totalAllocPoint
                continue 
    else:
        mem[128 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
        require stor3.length <= test266151307()
        mem[(32 * stor3.length) + 128] = stor3.length
        if not stor3.length:
            idx = 0
            while idx < stor3.length:
                require idx < stor3.length
                mem[(32 * idx) + 128] = stor3[idx].field_0
                require idx < stor3.length
                mem[0] = stor3[idx].field_0
                mem[32] = 5
                require idx < mem[(32 * stor3.length) + 128]
                mem[(32 * idx) + (32 * stor3.length) + 160] = sub_217cd251[stor3[idx].field_0]
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            s = 0
            while idx < stor3.length:
                require idx < mem[(32 * stor3.length) + 128]
                _220 = mem[(32 * idx) + (32 * stor3.length) + 160]
                if not ext_call.return_data[0]:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require idx < stor3.length
                    _256 = mem[(32 * idx) + 128]
                    mem[(64 * stor3.length) + 164] = mem[(32 * idx) + 140 len 20]
                    mem[(64 * stor3.length) + 196] = 0 / totalAllocPoint
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * stor3.length) + 164], 0 / totalAllocPoint
                    mem[(64 * stor3.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = _256
                    s = 0 / totalAllocPoint
                    continue 
                if mem[(32 * idx) + (32 * stor3.length) + 160] * ext_call.return_data[0] / ext_call.return_data[0] != mem[(32 * idx) + (32 * stor3.length) + 160]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * stor3.length) + 261 len 31]
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                require idx < stor3.length
                _274 = mem[(32 * idx) + 128]
                mem[(64 * stor3.length) + 164] = mem[(32 * idx) + 140 len 20]
                mem[(64 * stor3.length) + 196] = _220 * ext_call.return_data[0] / totalAllocPoint
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(64 * stor3.length) + 164], _220 * ext_call.return_data[0] / totalAllocPoint
                mem[(64 * stor3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = _274
                s = _220 * ext_call.return_data[0] / totalAllocPoint
                continue 
        else:
            mem[(32 * stor3.length) + 160 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
            idx = 0
            while idx < stor3.length:
                require idx < stor3.length
                mem[(32 * idx) + 128] = stor3[idx].field_0
                require idx < stor3.length
                mem[0] = stor3[idx].field_0
                mem[32] = 5
                require idx < mem[(32 * stor3.length) + 128]
                mem[(32 * idx) + (32 * stor3.length) + 160] = sub_217cd251[stor3[idx].field_0]
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            s = 0
            while idx < stor3.length:
                require idx < mem[(32 * stor3.length) + 128]
                _221 = mem[(32 * idx) + (32 * stor3.length) + 160]
                if not ext_call.return_data[0]:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require idx < stor3.length
                    _259 = mem[(32 * idx) + 128]
                    mem[(64 * stor3.length) + 164] = mem[(32 * idx) + 140 len 20]
                    mem[(64 * stor3.length) + 196] = 0 / totalAllocPoint
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(64 * stor3.length) + 164], 0 / totalAllocPoint
                    mem[(64 * stor3.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = _259
                    s = 0 / totalAllocPoint
                    continue 
                if mem[(32 * idx) + (32 * stor3.length) + 160] * ext_call.return_data[0] / ext_call.return_data[0] != mem[(32 * idx) + (32 * stor3.length) + 160]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * stor3.length) + 261 len 31]
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                require idx < stor3.length
                _278 = mem[(32 * idx) + 128]
                mem[(64 * stor3.length) + 164] = mem[(32 * idx) + 140 len 20]
                mem[(64 * stor3.length) + 196] = _221 * ext_call.return_data[0] / totalAllocPoint
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(64 * stor3.length) + 164], _221 * ext_call.return_data[0] / totalAllocPoint
                mem[(64 * stor3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = _278
                s = _221 * ext_call.return_data[0] / totalAllocPoint
                continue 
}



}
