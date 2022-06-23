contract main {




// =====================  Runtime code  =====================


#
#  - sub_1e6023d0(?)
#  - sub_58ca9a58(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 poolName;
address sub_ca29e8c8Address;
address operationsAddress;
address _factoryAddress;
uint256 stor54;
address sub_5cd4cfceAddress;
address governanceAddress;
uint256 stor57;
mapping of uint8 stor58;
mapping of uint8 stor59;
mapping of struct sub_7b4b46e6;
mapping of uint256 nonce;

function sub_1bfae6f2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor58[arg1])
}

function getGovernance() {
    return governanceAddress
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[address(arg1)]
}

function sub_5cd4cfce(?) {
    return sub_5cd4cfceAddress
}

function sub_75c9f7fb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return nonce[arg1]
}

function getSigner() {
    return sub_ca29e8c8Address
}

function sub_7b4b46e6(?) {
    require calldata.size - 4 >= 32
    return sub_7b4b46e6[arg1].field_0
}

function sub_9c97f354(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor59[arg1])
}

function _factory() {
    return address(_factoryAddress)
}

function sub_ca29e8c8(?) {
    return sub_ca29e8c8Address
}

function getPoolName() {
    return poolName[0 len poolName.length]
}

function sub_e327b0fb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor58[address(arg1)])
}

function sub_ef5aa195(?) {
    return operationsAddress
}

function getOperations() {
    return operationsAddress
}

function _fallback() payable {
    revert
}

function getFlag(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 / 96 <= stor57:
        return bool(Mask(256, -(arg1 % 96) - 160, sub_7b4b46e6[arg1 / 96].field_0) << -(arg1 % 96) - 160)
    else:
        return 0
}

function getReserves(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f5eece6e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if operationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'HashflowPool: Account not authorized to perform this operation'
    stor58[address(arg1)] = uint8(bool(arg2))
    emit 0xf90ee003: address(this.address), address(arg1), bool(arg2)
}

function sub_8325a8ec(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if operationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'HashflowPool: Account not authorized to perform this operation'
    require ext_code.size(address(arg1))
    call address(arg1).rebaseOptIn() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addLiquidity(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor58[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HashflowPool: Unauthorized router'
    if operationsAddress != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HashflowPool: Lp address must be operations'
    emit 0x72411136: address(this.address), address(arg1), address(arg2), arg3
}

function updateSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'HashflowPool: Account not authorized to perform this operation'
    sub_ca29e8c8Address = arg1
    if stor57 + 1 >= stor57:
        if var22002 >= stor57 + 1:
        sub_7b4b46e6[var22002].field_0 = arg1
        sub_7b4b46e6[var22002].field_160 = 0
        s = var22002
        while stor57 + 1 >= stor57:
            if s >= stor57:
            mem[0] = s + 1
            mem[32] = 60
            sub_7b4b46e6[s + 1].field_0 = arg1
            sub_7b4b46e6[s + 1].field_160 = 0
            s = s + 1
            continue 
    revert with 0, 'SafeMath: addition overflow'
}

function sub_95551c85(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] == bool(cd[36])
    if operationsAddress != msg.sender:
        revert with 0, 'HashflowPool: Account not authorized to perform this operation'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 59
        stor59[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length) + 128] = this.address
    idx = 0
    s = (32 * ('cd', 4).length) + 256
    t = 128
    while idx < ('cd', 4).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xb5591c7f: address(this.address), Array(len=('cd', 4).length, data=mem[(32 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length]), bool(cd[36])
}

function initialize(string arg1, address arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    poolName.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        poolName[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while poolName.length + 31 / 32 > idx:
        poolName[idx] = 0
        idx = idx + 1
        continue 
    sub_ca29e8c8Address = arg2
    operationsAddress = arg3
    uint256(stor54) = msg.sender or Mask(96, 160, uint256(stor54))
    governanceAddress = arg4
    stor58[address(arg5)] = 1
    stor57 = 14
    idx = 0
    while idx < 15:
        mem[0] = idx
        mem[32] = 60
        sub_7b4b46e6[idx].field_0 = arg2
        sub_7b4b46e6[idx].field_160 = 0
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function withdraw(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if operationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'HashflowPool: Account not authorized to perform this operation'
    if not arg2:
        if not arg1:
            if eth.balance(this.address) < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HashflowPool: Insufffient balance in the reserves'
            idx = 0
            while idx < 0:
                idx = idx + 32
                continue 
            call msg.sender with:
               value arg3 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'HashflowPool: Eth transfer to sender failed'
        else:
            mem[100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg3:
                revert with 0, 'HashflowPool: Insufffient balance in the reserves'
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg3, mem[ceil32(return_data.size) + 196 len 28]
            call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 200 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'HashflowPool: Token transfer to sender failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'HashflowPool: Token transfer to sender failed'
            else:
                mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'HashflowPool: Token transfer to sender failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                    if not mem[ceil32(return_data.size) + 228]:
                        revert with 0, 'HashflowPool: Token transfer to sender failed'
    else:
        if not stor59[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HashflowPool: Recipient must be hedging account'
        if not arg1:
            if eth.balance(this.address) < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HashflowPool: Insufffient balance in the reserves'
            idx = 0
            while idx < 0:
                idx = idx + 32
                continue 
            call arg2 with:
               value arg3 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'HashflowPool: Eth transfer to sender failed'
        else:
            mem[100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg3:
                revert with 0, 'HashflowPool: Insufffient balance in the reserves'
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, mem[ceil32(return_data.size) + 196 len 28]
            call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 200 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'HashflowPool: Token transfer to sender failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'HashflowPool: Token transfer to sender failed'
            else:
                mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'HashflowPool: Token transfer to sender failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                    if not mem[ceil32(return_data.size) + 228]:
                        revert with 0, 'HashflowPool: Token transfer to sender failed'
    emit Withdraw(address(this.address), address(arg1), address(arg2), arg3);
}



}
